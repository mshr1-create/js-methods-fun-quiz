// strapi/src/api/study-session/controllers/study-session.ts
import { factories } from '@strapi/strapi';

export default factories.createCoreController('api::study-session.study-session', ({ strapi }) => ({
  // 作成：ログイン中ユーザーを自動紐付け
  async create(ctx) {
    const uid = ctx.state.user?.id;
    if (!uid) return ctx.unauthorized('Login required');

    const body = ctx.request.body ?? {};
    body.data = body.data ?? {};
    body.data.user = { connect: [{ id: uid }] }; // v5: connect 構文

    const entity = await strapi.service('api::study-session.study-session').create(body);
    return this.transformResponse(entity);
  },

  // 一覧：HTTPクエリは触らず、サービス層で本人絞り込み
  async find(ctx) {
    const uid = ctx.state.user?.id;
    if (!uid) return ctx.unauthorized('Authentication required');

    // 既存のソート/ページング/公開状態/ populate は尊重しつつ、filters に user 条件だけ追加
    const q = (ctx.query ?? {}) as any;

    const { results, pagination } = await strapi
      .service('api::study-session.study-session')
      .find({
        ...q,
        filters: {
          ...(q.filters ?? {}),
          user: { id: { $eq: uid } }, // ← ここで本人限定
        },
        // デフォルト値（必要に応じて）
        publicationState: q.publicationState ?? 'preview',
      });

    // CoreController の整形で返す
    return this.transformResponse(results, { pagination });
  },

  // 単体：本人のもの以外は 403
  async findOne(ctx) {
    const uid = ctx.state.user?.id;
    if (!uid) return ctx.unauthorized('Authentication required');

    const id = ctx.params.id;

    const entity = await strapi.entityService.findOne(
      'api::study-session.study-session',
      id,
      { populate: { user: true }, publicationState: 'preview' }
    );

    if (!entity || (entity as any).user?.id !== uid) {
      return ctx.forbidden('You do not have access to this resource');
    }

    return this.transformResponse(entity);
  },
}));
