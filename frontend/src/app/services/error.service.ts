import { Injectable } from '@angular/core';
import { HttpErrorResponse } from '@angular/common/http';

@Injectable({ providedIn: 'root'})
export class ErrorService {
    toFriendlyMessage(error: unknown): string {
        //ネットワークタイムアウト
        if (error instanceof HttpErrorResponse && error.status === 0) {
            return 'サーバーに接続できません。ネットワーク状態をご確認ください。';
        }

        // Strapi形式
        const http = error as HttpErrorResponse;
        const status = http?.status;
        const body: any = http?.error;

        // 429: レート制限
        if (status === 429) {
            return '操作が続いています。時間をおいて再度お試しください。';
        }

        // 409: 重複登録
        if (status === 409) {
            return 'このメールアドレスは既に登録されています。';
        }

        // 400/422:  バリデーションエラー
        if (status === 400 || status === 422) {
            // derails.errorsがあれば最初のメッセージを返す/必要なら項目名でも分岐可能
            const msg = body?.error?.details?.errors?.[0]?.message || body?.error?.message;
            if (msg) {
                return this.translateValidation(msg);
            }
            return '入力内容に不備があります。各項目を確認してください。';
        }

        // 401/403: 認証・権限
        if (status === 401) return '認証に失敗しました。メールアドレスとパスワードをご確認ください。';
        if (status === 403) return 'この操作は許可されていません。';

        // 500: サーバーエラー
        if (status && status >= 500) return 'サーバーエラーが発生しました。時間をおいて再度お試しください。';

            // Fallback
    return 'エラーが発生しました。時間をおいて再度お試しください。';

}

private translateValidation(msg: string): string {
    const lower = msg.toLowerCase();

    if (lower.includes('email') && lower.includes('valid')) {
        return 'メールアドレスの形式が正しくありません。';
    }
    if (lower.includes('password') && lower.includes('length')) {
        return 'パスワードの長さが足りません。6文字以上で入力してください。';
    }
    if (lower.includes('username') && (lower.includes('required') || lower.includes('empty'))) {
        return 'ユーザー名は必須です。';
    }
    if (lower.includes('already taken') || lower.includes('unique')) {
        return 'この値は既に使用されています。別の値をお試しください。';
    }
     // 既定
    return '入力内容に不備があります。各項目を確認してください。';   
    }
}
