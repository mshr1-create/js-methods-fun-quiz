/**
 * study-session controller
 */

import { factories } from '@strapi/strapi'

export default factories.createCoreController('api::study-session.study-session', ({ strapi }) => ({
  async create(ctx) {
    const uid = ctx.state.user?.id;
    if (!uid) return ctx.unauthorized('Login required');

    const body = ctx.request.body ?? {};
    body.data = body.data ?? {};
    // v5 は connect 構文、フィールド名は user
    body.data.user = { connect: [{ id: uid }] };

    const entity = await strapi.service('api::study-session.study-session').create(body);
    return this.transformResponse(entity);
  },

  async find(ctx) {
    const user = ctx.state.user;
    if (!user) return ctx.unauthorized('Authentication required');

    // 一時対応: ユーザーフィルタは付与せず、そのまま返す（スキーマ安定後に復帰）
    return await super.find(ctx);
  },
}));
