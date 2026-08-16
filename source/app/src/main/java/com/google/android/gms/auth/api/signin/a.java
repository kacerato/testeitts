package com.google.android.gms.auth.api.signin;

import G0.A;
import G0.C2558c;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.api.Scope;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import v1.AbstractC15790k;
import v1.C15793n;
import y0.C16131b;
import y0.InterfaceC16132c;
import y0.d;
import z0.C16232q;
import z0.C16233r;

@Deprecated
public final class a {
    @NonNull
    public static GoogleSignInAccount a(@NonNull Context context, @NonNull InterfaceC16132c interfaceC16132c) {
        A.s(context, "please provide a valid Context object");
        A.s(interfaceC16132c, "please provide valid GoogleSignInOptionsExtension");
        GoogleSignInAccount e10 = e(context);
        if (e10 == null) {
            e10 = GoogleSignInAccount.n();
        }
        return e10.D0(n(interfaceC16132c.b()));
    }

    @NonNull
    public static GoogleSignInAccount b(@NonNull Context context, @NonNull Scope scope, @NonNull Scope... scopeArr) {
        A.s(context, "please provide a valid Context object");
        A.s(scope, "please provide at least one valid scope");
        GoogleSignInAccount e10 = e(context);
        if (e10 == null) {
            e10 = GoogleSignInAccount.n();
        }
        e10.D0(scope);
        e10.D0(scopeArr);
        return e10;
    }

    @NonNull
    public static C16131b c(@NonNull Activity activity, @NonNull GoogleSignInOptions googleSignInOptions) {
        return new C16131b(activity, (GoogleSignInOptions) A.r(googleSignInOptions));
    }

    @NonNull
    public static C16131b d(@NonNull Context context, @NonNull GoogleSignInOptions googleSignInOptions) {
        return new C16131b(context, (GoogleSignInOptions) A.r(googleSignInOptions));
    }

    @Nullable
    public static GoogleSignInAccount e(@NonNull Context context) {
        return C16233r.a(context).d();
    }

    @NonNull
    public static AbstractC15790k<GoogleSignInAccount> f(@Nullable Intent intent) {
        d g10 = C16232q.g(intent);
        GoogleSignInAccount a10 = g10.a();
        return (!g10.getStatus().x0() || a10 == null) ? C15793n.f(C2558c.a(g10.getStatus())) : C15793n.g(a10);
    }

    public static boolean g(@Nullable GoogleSignInAccount googleSignInAccount, @NonNull InterfaceC16132c interfaceC16132c) {
        A.s(interfaceC16132c, "Please provide a non-null GoogleSignInOptionsExtension");
        return h(googleSignInAccount, n(interfaceC16132c.b()));
    }

    public static boolean h(@Nullable GoogleSignInAccount googleSignInAccount, @NonNull Scope... scopeArr) {
        if (googleSignInAccount == null) {
            return false;
        }
        HashSet hashSet = new HashSet();
        Collections.addAll(hashSet, scopeArr);
        return googleSignInAccount.w0().containsAll(hashSet);
    }

    public static void i(@NonNull Activity activity, int i10, @Nullable GoogleSignInAccount googleSignInAccount, @NonNull InterfaceC16132c interfaceC16132c) {
        A.s(activity, "Please provide a non-null Activity");
        A.s(interfaceC16132c, "Please provide a non-null GoogleSignInOptionsExtension");
        j(activity, i10, googleSignInAccount, n(interfaceC16132c.b()));
    }

    public static void j(@NonNull Activity activity, int i10, @Nullable GoogleSignInAccount googleSignInAccount, @NonNull Scope... scopeArr) {
        A.s(activity, "Please provide a non-null Activity");
        A.s(scopeArr, "Please provide at least one scope");
        activity.startActivityForResult(m(activity, googleSignInAccount, scopeArr), i10);
    }

    public static void k(@NonNull Fragment fragment, int i10, @Nullable GoogleSignInAccount googleSignInAccount, @NonNull InterfaceC16132c interfaceC16132c) {
        A.s(fragment, "Please provide a non-null Fragment");
        A.s(interfaceC16132c, "Please provide a non-null GoogleSignInOptionsExtension");
        l(fragment, i10, googleSignInAccount, n(interfaceC16132c.b()));
    }

    public static void l(@NonNull Fragment fragment, int i10, @Nullable GoogleSignInAccount googleSignInAccount, @NonNull Scope... scopeArr) {
        A.s(fragment, "Please provide a non-null Fragment");
        A.s(scopeArr, "Please provide at least one scope");
        fragment.startActivityForResult(m(fragment.getActivity(), googleSignInAccount, scopeArr), i10);
    }

    @NonNull
    public static Intent m(@NonNull Activity activity, @Nullable GoogleSignInAccount googleSignInAccount, @NonNull Scope... scopeArr) {
        GoogleSignInOptions.a aVar = new GoogleSignInOptions.a();
        if (scopeArr.length > 0) {
            aVar.g(scopeArr[0], scopeArr);
        }
        if (googleSignInAccount != null && !TextUtils.isEmpty(googleSignInAccount.n0())) {
            aVar.j((String) A.r(googleSignInAccount.n0()));
        }
        return new C16131b(activity, aVar.b()).g0();
    }

    @NonNull
    public static Scope[] n(@Nullable List list) {
        return list == null ? new Scope[0] : (Scope[]) list.toArray(new Scope[list.size()]);
    }
}
