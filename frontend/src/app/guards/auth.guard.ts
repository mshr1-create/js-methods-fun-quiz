import { CanActivateFn, Router } from "@angular/router";
import { inject } from "@angular/core";
import { UserService } from "../services/user.service";

export const authGuard: CanActivateFn = (route, state) => {
    const user = inject(UserService);
    const router = inject(Router);
    if (user.isLoggedIn()) {
        return true;
    } else {
        router.navigate(['/login'], { queryParams: { returnUrl: state.url } });
        return false;
    }
}
