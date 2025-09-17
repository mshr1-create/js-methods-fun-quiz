import { HttpInterceptorFn } from "@angular/common/http";
import { inject } from "@angular/core";
import { UserService } from "../services/user.service";

export const authInterceptor: HttpInterceptorFn = (req, next) => {
    const user = inject(UserService);
    const token = user.token;
    if (token) {
        req = req.clone({
        setHeaders: {
            Authorization: `Bearer ${token}`
        }
        });
    }
    return next(req);
}
