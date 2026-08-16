package com.google.android.gms.internal.auth;

import D0.C2467s;
import D0.InterfaceC2458n;
import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.AbstractC11907k;
import com.google.android.gms.common.api.C11894a;
import com.google.android.gms.common.api.Status;
import s0.C15222b;
import v1.AbstractC15790k;
import v1.C15791l;

public final class C11918c extends AbstractC11907k implements InterfaceC11937g2 {

    public static final C11894a.g f61703l;

    public static final C11894a.AbstractC0948a f61704m;

    public static final C11894a f61705n;

    public static final K0.a f61706o;

    public final Context f61707k;

    static {
        C11894a.g gVar = new C11894a.g();
        f61703l = gVar;
        u3 u3Var = new u3();
        f61704m = u3Var;
        f61705n = new C11894a("GoogleAuthService.API", u3Var, gVar);
        f61706o = s0.j.a("GoogleAuthServiceClient");
    }

    public C11918c(@NonNull Context context) {
        super(context, (C11894a<C11894a.d.C0950d>) f61705n, C11894a.d.f61053n4, AbstractC11907k.a.f61274c);
        this.f61707k = context;
    }

    public static void g0(Status status, Object obj, C15791l c15791l) {
        if (C2467s.d(status, obj, c15791l)) {
            return;
        }
        f61706o.j("The task is already complete.", new Object[0]);
    }

    @Override
    public final AbstractC15790k a(@NonNull final String str) {
        G0.A.s(str, "Client package name cannot be null!");
        return T(D0.r.a().e(s0.k.f109136k).c(new InterfaceC2458n() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public final void accept(Object obj, Object obj2) {
                C11918c c11918c = C11918c.this;
                ((o3) ((h3) obj).M()).h1(new x3(c11918c, (C15791l) obj2), str);
            }
        }).f(1514).a());
    }

    @Override
    public final AbstractC15790k i(@NonNull final Account account) {
        G0.A.s(account, "account cannot be null.");
        return T(D0.r.a().e(s0.k.f109136k).c(new InterfaceC2458n() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public final void accept(Object obj, Object obj2) {
                C11918c c11918c = C11918c.this;
                ((o3) ((h3) obj).M()).g1(new BinderC11914b(c11918c, (C15791l) obj2), account);
            }
        }).f(1517).a());
    }

    @Override
    public final AbstractC15790k u(@NonNull final C15222b c15222b) {
        G0.A.s(c15222b, "request cannot be null.");
        return T(D0.r.a().e(s0.k.f109136k).c(new InterfaceC2458n() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public final void accept(Object obj, Object obj2) {
                C11918c c11918c = C11918c.this;
                C15222b c15222b2 = c15222b;
                ((o3) ((h3) obj).M()).e1(new y3(c11918c, (C15791l) obj2), c15222b2);
            }
        }).f(1515).a());
    }

    @Override
    public final AbstractC15790k w(final Z z10) {
        return T(D0.r.a().e(s0.k.f109137l).c(new InterfaceC2458n() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public final void accept(Object obj, Object obj2) {
                C11918c c11918c = C11918c.this;
                ((o3) ((h3) obj).M()).l0(new w3(c11918c, (C15791l) obj2), z10);
            }
        }).f(1513).a());
    }

    @Override
    public final AbstractC15790k x(@NonNull final Account account, @NonNull final String str, final Bundle bundle) {
        G0.A.s(account, "Account name cannot be null!");
        G0.A.m(str, "Scope cannot be null!");
        return T(D0.r.a().e(s0.k.f109137l).c(new InterfaceC2458n() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public final void accept(Object obj, Object obj2) {
                C11918c c11918c = C11918c.this;
                ((o3) ((h3) obj).M()).f1(new v3(c11918c, (C15791l) obj2), account, str, bundle);
            }
        }).f(1512).a());
    }
}
