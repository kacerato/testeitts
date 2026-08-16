package com.google.android.gms.common.api;

import D0.B0;
import D0.C2434b;
import D0.C2436c;
import D0.C2477x;
import D0.InterfaceC2462p;
import D0.ServiceConnectionC2450j;
import G0.AbstractC2564f;
import G0.C2570i;
import G0.C2601y;
import android.accounts.Account;
import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.C11894a;
import com.google.android.gms.common.api.C11894a.d;
import com.google.android.gms.common.api.internal.C11904b;
import com.google.android.gms.common.api.internal.f;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import java.util.Collections;
import java.util.Set;
import sm.InterfaceC15358c;
import v1.AbstractC15790k;
import v1.C15791l;

public abstract class AbstractC11907k<O extends C11894a.d> implements InterfaceC11909m<O> {

    public final Context f61264a;

    @Nullable
    public final String f61265b;

    public final C11894a f61266c;

    public final C11894a.d f61267d;

    public final C2436c f61268e;

    public final Looper f61269f;

    public final int f61270g;

    @InterfaceC15358c
    public final AbstractC11908l f61271h;

    public final InterfaceC2462p f61272i;

    @NonNull
    public final com.google.android.gms.common.api.internal.d f61273j;

    @C0.a
    public static class a {

        @NonNull
        @C0.a
        public static final a f61274c = new C0953a().a();

        @NonNull
        public final InterfaceC2462p f61275a;

        @NonNull
        public final Looper f61276b;

        @C0.a
        public static class C0953a {

            public InterfaceC2462p f61277a;

            public Looper f61278b;

            @C0.a
            public C0953a() {
            }

            /* JADX WARN: Multi-variable type inference failed */
            @NonNull
            @C0.a
            public a a() {
                if (this.f61277a == null) {
                    this.f61277a = new C2434b();
                }
                if (this.f61278b == null) {
                    this.f61278b = Looper.getMainLooper();
                }
                return new a(this.f61277a, this.f61278b);
            }

            @I2.a
            @NonNull
            @C0.a
            public C0953a b(@NonNull Looper looper) {
                G0.A.s(looper, "Looper must not be null.");
                this.f61278b = looper;
                return this;
            }

            @I2.a
            @NonNull
            @C0.a
            public C0953a c(@NonNull InterfaceC2462p interfaceC2462p) {
                G0.A.s(interfaceC2462p, "StatusExceptionMapper must not be null.");
                this.f61277a = interfaceC2462p;
                return this;
            }
        }

        @C0.a
        public a(InterfaceC2462p interfaceC2462p, Account account, Looper looper) {
            this.f61275a = interfaceC2462p;
            this.f61276b = looper;
        }
    }

    @C0.a
    @MainThread
    public AbstractC11907k(@NonNull Activity activity, @NonNull C11894a<O> c11894a, @NonNull O o10, @NonNull a aVar) {
        this(activity, activity, c11894a, o10, aVar);
    }

    @Override
    @NonNull
    public final C2436c<O> G() {
        return this.f61268e;
    }

    @NonNull
    @C0.a
    public AbstractC11908l H() {
        return this.f61271h;
    }

    @NonNull
    @C0.a
    public C2570i.a I() {
        Account h10;
        Set<Scope> emptySet;
        GoogleSignInAccount m10;
        C2570i.a aVar = new C2570i.a();
        C11894a.d dVar = this.f61267d;
        if (!(dVar instanceof C11894a.d.b) || (m10 = ((C11894a.d.b) dVar).m()) == null) {
            C11894a.d dVar2 = this.f61267d;
            h10 = dVar2 instanceof C11894a.d.InterfaceC0949a ? ((C11894a.d.InterfaceC0949a) dVar2).h() : null;
        } else {
            h10 = m10.h();
        }
        aVar.d(h10);
        C11894a.d dVar3 = this.f61267d;
        if (dVar3 instanceof C11894a.d.b) {
            GoogleSignInAccount m11 = ((C11894a.d.b) dVar3).m();
            emptySet = m11 == null ? Collections.emptySet() : m11.A0();
        } else {
            emptySet = Collections.emptySet();
        }
        aVar.c(emptySet);
        aVar.e(this.f61264a.getClass().getName());
        aVar.b(this.f61264a.getPackageName());
        return aVar;
    }

    @NonNull
    @C0.a
    public AbstractC15790k<Boolean> J() {
        return this.f61273j.y(this);
    }

    @NonNull
    @C0.a
    public <A extends C11894a.b, T extends C11904b.a<? extends u, A>> T K(@NonNull T t10) {
        e0(2, t10);
        return t10;
    }

    @NonNull
    @ResultIgnorabilityUnspecified
    @C0.a
    public <TResult, A extends C11894a.b> AbstractC15790k<TResult> L(@NonNull D0.r<A, TResult> rVar) {
        return f0(2, rVar);
    }

    @NonNull
    @C0.a
    public <A extends C11894a.b, T extends C11904b.a<? extends u, A>> T M(@NonNull T t10) {
        e0(0, t10);
        return t10;
    }

    @NonNull
    @ResultIgnorabilityUnspecified
    @C0.a
    public <TResult, A extends C11894a.b> AbstractC15790k<TResult> N(@NonNull D0.r<A, TResult> rVar) {
        return f0(0, rVar);
    }

    @NonNull
    @ResultIgnorabilityUnspecified
    @Deprecated
    @C0.a
    public <A extends C11894a.b, T extends com.google.android.gms.common.api.internal.h<A, ?>, U extends com.google.android.gms.common.api.internal.k<A, ?>> AbstractC15790k<Void> O(@NonNull T t10, @NonNull U u10) {
        G0.A.r(t10);
        G0.A.r(u10);
        G0.A.s(t10.b(), "Listener has already been released.");
        G0.A.s(u10.a(), "Listener has already been released.");
        G0.A.b(C2601y.b(t10.b(), u10.a()), "Listener registration and unregistration methods must be constructed with the same ListenerHolder.");
        return this.f61273j.z(this, t10, u10, new Runnable() {
            @Override
            public final void run() {
            }
        });
    }

    @NonNull
    @ResultIgnorabilityUnspecified
    @C0.a
    public <A extends C11894a.b> AbstractC15790k<Void> P(@NonNull com.google.android.gms.common.api.internal.i<A, ?> iVar) {
        G0.A.r(iVar);
        G0.A.s(iVar.f61157a.b(), "Listener has already been released.");
        G0.A.s(iVar.f61158b.a(), "Listener has already been released.");
        return this.f61273j.z(this, iVar.f61157a, iVar.f61158b, iVar.f61159c);
    }

    @NonNull
    @ResultIgnorabilityUnspecified
    @C0.a
    public AbstractC15790k<Boolean> Q(@NonNull f.a<?> aVar) {
        return R(aVar, 0);
    }

    @NonNull
    @ResultIgnorabilityUnspecified
    @C0.a
    public AbstractC15790k<Boolean> R(@NonNull f.a<?> aVar, int i10) {
        G0.A.s(aVar, "Listener key cannot be null.");
        return this.f61273j.A(this, aVar, i10);
    }

    @NonNull
    @C0.a
    public <A extends C11894a.b, T extends C11904b.a<? extends u, A>> T S(@NonNull T t10) {
        e0(1, t10);
        return t10;
    }

    @NonNull
    @ResultIgnorabilityUnspecified
    @C0.a
    public <TResult, A extends C11894a.b> AbstractC15790k<TResult> T(@NonNull D0.r<A, TResult> rVar) {
        return f0(1, rVar);
    }

    @Nullable
    public String U(@NonNull Context context) {
        return null;
    }

    @NonNull
    @C0.a
    public O V() {
        return (O) this.f61267d;
    }

    @NonNull
    @C0.a
    public Context W() {
        return this.f61264a;
    }

    @Nullable
    @C0.a
    public String X() {
        return this.f61265b;
    }

    @Nullable
    @C0.a
    @Deprecated
    public String Y() {
        return this.f61265b;
    }

    @NonNull
    @C0.a
    public Looper Z() {
        return this.f61269f;
    }

    @NonNull
    @C0.a
    public <L> com.google.android.gms.common.api.internal.f<L> a0(@NonNull L l10, @NonNull String str) {
        return com.google.android.gms.common.api.internal.g.a(l10, this.f61269f, str);
    }

    public final int b0() {
        return this.f61270g;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @WorkerThread
    public final C11894a.f c0(Looper looper, com.google.android.gms.common.api.internal.u uVar) {
        C2570i a10 = I().a();
        C11894a.f d10 = ((C11894a.AbstractC0948a) G0.A.r(this.f61266c.a())).d(this.f61264a, looper, a10, this.f61267d, uVar, uVar);
        String X10 = X();
        if (X10 != null && (d10 instanceof AbstractC2564f)) {
            ((AbstractC2564f) d10).Y(X10);
        }
        if (X10 != null && (d10 instanceof ServiceConnectionC2450j)) {
            ((ServiceConnectionC2450j) d10).z(X10);
        }
        return d10;
    }

    public final B0 d0(Context context, Handler handler) {
        return new B0(context, handler, I().a());
    }

    public final C11904b.a e0(int i10, @NonNull C11904b.a aVar) {
        aVar.s();
        this.f61273j.F(this, i10, aVar);
        return aVar;
    }

    public final AbstractC15790k f0(int i10, @NonNull D0.r rVar) {
        C15791l c15791l = new C15791l();
        this.f61273j.G(this, i10, rVar, c15791l, this.f61272i);
        return c15791l.a();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @C0.a
    @Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public AbstractC11907k(@NonNull Activity activity, @NonNull C11894a<O> c11894a, @NonNull O o10, @NonNull InterfaceC2462p interfaceC2462p) {
        this(activity, (C11894a) c11894a, (C11894a.d) o10, r0.a());
        a.C0953a c0953a = new a.C0953a();
        c0953a.c(interfaceC2462p);
        c0953a.b(activity.getMainLooper());
    }

    public AbstractC11907k(@NonNull Context context, @Nullable Activity activity, C11894a c11894a, C11894a.d dVar, a aVar) {
        String U10;
        G0.A.s(context, "Null context is not permitted.");
        G0.A.s(c11894a, "Api must not be null.");
        G0.A.s(aVar, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead.");
        Context context2 = (Context) G0.A.s(context.getApplicationContext(), "The provided context did not have an application context.");
        this.f61264a = context2;
        if (Build.VERSION.SDK_INT >= 30) {
            U10 = C11906j.a(context);
        } else {
            U10 = U(context);
        }
        this.f61265b = U10;
        this.f61266c = c11894a;
        this.f61267d = dVar;
        this.f61269f = aVar.f61276b;
        C2436c a10 = C2436c.a(c11894a, dVar, U10);
        this.f61268e = a10;
        this.f61271h = new com.google.android.gms.common.api.internal.v(this);
        com.google.android.gms.common.api.internal.d v10 = com.google.android.gms.common.api.internal.d.v(context2);
        this.f61273j = v10;
        this.f61270g = v10.l();
        this.f61272i = aVar.f61275a;
        if (activity != null && !(activity instanceof GoogleApiActivity) && Looper.myLooper() == Looper.getMainLooper()) {
            C2477x.v(activity, v10, a10);
        }
        v10.K(this);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @I2.l(imports = {"com.google.android.gms.common.api.GoogleApi.Settings"}, replacement = "this(context, api, options, new Settings.Builder().setLooper(looper).setMapper(mapper).build())")
    @C0.a
    @Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public AbstractC11907k(@NonNull Context context, @NonNull C11894a<O> c11894a, @NonNull O o10, @NonNull Looper looper, @NonNull InterfaceC2462p interfaceC2462p) {
        this(context, c11894a, o10, r0.a());
        a.C0953a c0953a = new a.C0953a();
        c0953a.b(looper);
        c0953a.c(interfaceC2462p);
    }

    @C0.a
    public AbstractC11907k(@NonNull Context context, @NonNull C11894a<O> c11894a, @NonNull O o10, @NonNull a aVar) {
        this(context, (Activity) null, c11894a, o10, aVar);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @I2.l(imports = {"com.google.android.gms.common.api.GoogleApi.Settings"}, replacement = "this(context, api, options, new Settings.Builder().setMapper(mapper).build())")
    @C0.a
    @Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public AbstractC11907k(@NonNull Context context, @NonNull C11894a<O> c11894a, @NonNull O o10, @NonNull InterfaceC2462p interfaceC2462p) {
        this(context, c11894a, o10, r0.a());
        a.C0953a c0953a = new a.C0953a();
        c0953a.c(interfaceC2462p);
    }
}
