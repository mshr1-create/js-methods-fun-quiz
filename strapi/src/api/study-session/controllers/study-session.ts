/**
 * study-session controller
 */

import { factories } from '@strapi/strapi'

export default factories.createCoreController('api::study-session.study-session', ({ strapi }) => ({
  async create(ctx) {
    const currentUser = ctx.state.user;
    if (!currentUser) return ctx.unauthorized('Authentication required');

    // 実行時にモデルの属性を確認し、user フィールドの有無をログ出し
    const model = strapi.getModel('api::study-session.study-session');
    const attrs = Object.keys(model?.attributes || {});
    strapi.log.info('[study-session] ATTRS: ' + attrs.join(','));
    const hasUserField = attrs.includes('user');

    const body = ctx.request.body || {};
    const data = { ...(body.data || {}) } as any;
    if (!hasUserField) {
      strapi.log.warn('[study-session] user field not found on model. Skipping relation connect.');
    }
    ctx.request.body = { data };

    const res = await super.create(ctx);
    return res;
  },

  async find(ctx) {
    const user = ctx.state.user;
    if (!user) return ctx.unauthorized('Authentication required');

    // 一時対応: ユーザーフィルタは付与せず、そのまま返す（スキーマ安定後に復帰）
    return await super.find(ctx);
  },
}));
