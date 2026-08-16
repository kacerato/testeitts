package com.google.firebase.installations;

import G0.A;
import K2.g;
import T2.y;
import android.annotation.SuppressLint;
import android.text.TextUtils;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import b3.C3842d;
import b3.j;
import b3.l;
import b3.m;
import b3.n;
import b3.q;
import b3.r;
import b3.s;
import c3.InterfaceC4151a;
import c3.InterfaceC4152b;
import com.google.firebase.installations.FirebaseInstallationsException;
import f3.C13183b;
import f3.C13184c;
import g3.d;
import g3.f;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import v1.AbstractC15790k;
import v1.C15791l;
import v1.C15793n;

public class a implements j {

    public static final String f67741n = "generatefid.lock";

    public static final String f67742o = "CHIME_ANDROID_SDK";

    public static final int f67743p = 0;

    public static final int f67744q = 1;

    public static final long f67745r = 30;

    public static final String f67747t = "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.";

    public static final String f67748u = "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.";

    public static final String f67749v = "Please set your Project ID. A valid Firebase Project ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.";

    public static final String f67750w = "Installation ID could not be validated with the Firebase servers (maybe it was deleted). Firebase Installations will need to create a new Installation ID and auth token. Please retry your last request.";

    public final g f67751a;

    public final g3.c f67752b;

    public final C13184c f67753c;

    public final s f67754d;

    public final y<C13183b> f67755e;

    public final q f67756f;

    public final Object f67757g;

    public final ExecutorService f67758h;

    public final Executor f67759i;

    @GuardedBy("this")
    public String f67760j;

    @GuardedBy("FirebaseInstallations.this")
    public Set<InterfaceC4151a> f67761k;

    @GuardedBy("lock")
    public final List<r> f67762l;

    public static final Object f67740m = new Object();

    public static final ThreadFactory f67746s = new ThreadFactoryC1025a();

    public class ThreadFactoryC1025a implements ThreadFactory {

        public final AtomicInteger f67763b = new AtomicInteger(1);

        @Override
        @SuppressLint({"ThreadPoolCreation"})
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, String.format("firebase-installations-executor-%d", Integer.valueOf(this.f67763b.getAndIncrement())));
        }
    }

    public class b implements InterfaceC4152b {

        public final InterfaceC4151a f67764a;

        public b(InterfaceC4151a interfaceC4151a) {
            this.f67764a = interfaceC4151a;
        }

        @Override
        public void a() {
            synchronized (a.this) {
                a.this.f67761k.remove(this.f67764a);
            }
        }
    }

    public static class c {

        public static final int[] f67766a;

        public static final int[] f67767b;

        static {
            int[] iArr = new int[f.b.values().length];
            f67767b = iArr;
            try {
                iArr[f.b.OK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f67767b[f.b.BAD_CONFIG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f67767b[f.b.AUTH_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[d.b.values().length];
            f67766a = iArr2;
            try {
                iArr2[d.b.OK.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f67766a[d.b.BAD_CONFIG.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    @SuppressLint({"ThreadPoolCreation"})
    public a(final g gVar, @NonNull a3.b<Z2.j> bVar, @NonNull ExecutorService executorService, @NonNull Executor executor) {
        this(executorService, executor, gVar, new g3.c(gVar.n(), bVar), new C13184c(gVar), s.c(), new y(new a3.b() {
            @Override
            public final Object get() {
                C13183b D10;
                D10 = com.google.firebase.installations.a.D(K2.g.this);
                return D10;
            }
        }), new q());
    }

    public static C13183b D(g gVar) {
        return new C13183b(gVar);
    }

    @NonNull
    public static a t() {
        return u(g.p());
    }

    @NonNull
    public static a u(@NonNull g gVar) {
        A.b(gVar != null, "Null is not a valid value of FirebaseApp.");
        return (a) gVar.l(j.class);
    }

    public final void B() {
        C(false);
    }

    public final void E() {
        A.m(q(), f67748u);
        A.m(y(), f67749v);
        A.m(p(), f67747t);
        A.b(s.h(q()), f67748u);
        A.b(s.g(p()), f67747t);
    }

    public final String F(f3.d dVar) {
        if ((!this.f67751a.r().equals(f67742o) && !this.f67751a.B()) || !dVar.m()) {
            return this.f67756f.a();
        }
        String f10 = s().f();
        return TextUtils.isEmpty(f10) ? this.f67756f.a() : f10;
    }

    public final f3.d G(f3.d dVar) throws FirebaseInstallationsException {
        d d10 = this.f67752b.d(p(), dVar.d(), y(), q(), (dVar.d() == null || dVar.d().length() != 11) ? null : s().i());
        int i10 = c.f67766a[d10.e().ordinal()];
        if (i10 == 1) {
            return dVar.s(d10.c(), d10.d(), this.f67754d.b(), d10.b().c(), d10.b().d());
        }
        if (i10 == 2) {
            return dVar.q("BAD CONFIG");
        }
        throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", FirebaseInstallationsException.a.UNAVAILABLE);
    }

    public final void H(Exception exc) {
        synchronized (this.f67757g) {
            try {
                Iterator<r> it = this.f67762l.iterator();
                while (it.hasNext()) {
                    if (it.next().onException(exc)) {
                        it.remove();
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void I(f3.d dVar) {
        synchronized (this.f67757g) {
            try {
                Iterator<r> it = this.f67762l.iterator();
                while (it.hasNext()) {
                    if (it.next().a(dVar)) {
                        it.remove();
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final synchronized void J(String str) {
        this.f67760j = str;
    }

    public final synchronized void K(f3.d dVar, f3.d dVar2) {
        if (this.f67761k.size() != 0 && !TextUtils.equals(dVar.d(), dVar2.d())) {
            Iterator<InterfaceC4151a> it = this.f67761k.iterator();
            while (it.hasNext()) {
                it.next().a(dVar2.d());
            }
        }
    }

    @Override
    @NonNull
    public AbstractC15790k<n> a(final boolean z10) {
        E();
        AbstractC15790k<n> i10 = i();
        this.f67758h.execute(new Runnable() {
            @Override
            public final void run() {
                com.google.firebase.installations.a.this.C(z10);
            }
        });
        return i10;
    }

    @Override
    @NonNull
    public synchronized InterfaceC4152b b(@NonNull InterfaceC4151a interfaceC4151a) {
        this.f67761k.add(interfaceC4151a);
        return new b(interfaceC4151a);
    }

    @Override
    @NonNull
    public AbstractC15790k<Void> delete() {
        return C15793n.d(this.f67758h, new Callable() {
            @Override
            public final Object call() {
                Void l10;
                l10 = com.google.firebase.installations.a.this.l();
                return l10;
            }
        });
    }

    @Override
    @NonNull
    public AbstractC15790k<String> getId() {
        E();
        String r10 = r();
        if (r10 != null) {
            return C15793n.g(r10);
        }
        AbstractC15790k<String> j10 = j();
        this.f67758h.execute(new Runnable() {
            @Override
            public final void run() {
                com.google.firebase.installations.a.this.B();
            }
        });
        return j10;
    }

    public final AbstractC15790k<n> i() {
        C15791l c15791l = new C15791l();
        k(new l(this.f67754d, c15791l));
        return c15791l.a();
    }

    public final AbstractC15790k<String> j() {
        C15791l c15791l = new C15791l();
        k(new m(c15791l));
        return c15791l.a();
    }

    public final void k(r rVar) {
        synchronized (this.f67757g) {
            this.f67762l.add(rVar);
        }
    }

    public final Void l() throws FirebaseInstallationsException {
        J(null);
        f3.d v10 = v();
        if (v10.k()) {
            this.f67752b.e(p(), v10.d(), y(), v10.f());
        }
        z(v10.r());
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x004c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void A(boolean z10) {
        f3.d G10;
        f3.d v10 = v();
        try {
            if (!v10.i() && !v10.l()) {
                if (!z10 && !this.f67754d.f(v10)) {
                    return;
                }
                G10 = o(v10);
                z(G10);
                K(v10, G10);
                if (G10.k()) {
                    J(G10.d());
                }
                if (!G10.i()) {
                    H(new FirebaseInstallationsException(FirebaseInstallationsException.a.BAD_CONFIG));
                    return;
                } else if (G10.j()) {
                    H(new IOException(f67750w));
                    return;
                } else {
                    I(G10);
                    return;
                }
            }
            G10 = G(v10);
            z(G10);
            K(v10, G10);
            if (G10.k()) {
            }
            if (!G10.i()) {
            }
        } catch (FirebaseInstallationsException e10) {
            H(e10);
        }
    }

    public final void C(final boolean z10) {
        f3.d x10 = x();
        if (z10) {
            x10 = x10.p();
        }
        I(x10);
        this.f67759i.execute(new Runnable() {
            @Override
            public final void run() {
                com.google.firebase.installations.a.this.A(z10);
            }
        });
    }

    public final f3.d o(@NonNull f3.d dVar) throws FirebaseInstallationsException {
        f f10 = this.f67752b.f(p(), dVar.d(), y(), dVar.f());
        int i10 = c.f67767b[f10.b().ordinal()];
        if (i10 == 1) {
            return dVar.o(f10.c(), f10.d(), this.f67754d.b());
        }
        if (i10 == 2) {
            return dVar.q("BAD CONFIG");
        }
        if (i10 != 3) {
            throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", FirebaseInstallationsException.a.UNAVAILABLE);
        }
        J(null);
        return dVar.r();
    }

    @Nullable
    public String p() {
        return this.f67751a.s().i();
    }

    @VisibleForTesting
    public String q() {
        return this.f67751a.s().j();
    }

    public final synchronized String r() {
        return this.f67760j;
    }

    public final C13183b s() {
        return this.f67755e.get();
    }

    /* JADX WARN: Finally extract failed */
    public final f3.d v() {
        f3.d e10;
        synchronized (f67740m) {
            try {
                C3842d a10 = C3842d.a(this.f67751a.n(), f67741n);
                try {
                    e10 = this.f67753c.e();
                    if (a10 != null) {
                        a10.b();
                    }
                } catch (Throwable th2) {
                    if (a10 != null) {
                        a10.b();
                    }
                    throw th2;
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
        return e10;
    }

    @VisibleForTesting
    public String w() {
        return this.f67751a.r();
    }

    /* JADX WARN: Finally extract failed */
    public final f3.d x() {
        f3.d e10;
        synchronized (f67740m) {
            try {
                C3842d a10 = C3842d.a(this.f67751a.n(), f67741n);
                try {
                    e10 = this.f67753c.e();
                    if (e10.j()) {
                        e10 = this.f67753c.c(e10.t(F(e10)));
                    }
                    if (a10 != null) {
                        a10.b();
                    }
                } catch (Throwable th2) {
                    if (a10 != null) {
                        a10.b();
                    }
                    throw th2;
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
        return e10;
    }

    @Nullable
    public String y() {
        return this.f67751a.s().n();
    }

    /* JADX WARN: Finally extract failed */
    public final void z(f3.d dVar) {
        synchronized (f67740m) {
            try {
                C3842d a10 = C3842d.a(this.f67751a.n(), f67741n);
                try {
                    this.f67753c.c(dVar);
                    if (a10 != null) {
                        a10.b();
                    }
                } catch (Throwable th2) {
                    if (a10 != null) {
                        a10.b();
                    }
                    throw th2;
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    @SuppressLint({"ThreadPoolCreation"})
    public a(ExecutorService executorService, Executor executor, g gVar, g3.c cVar, C13184c c13184c, s sVar, y<C13183b> yVar, q qVar) {
        this.f67757g = new Object();
        this.f67761k = new HashSet();
        this.f67762l = new ArrayList();
        this.f67751a = gVar;
        this.f67752b = cVar;
        this.f67753c = c13184c;
        this.f67754d = sVar;
        this.f67755e = yVar;
        this.f67756f = qVar;
        this.f67758h = executorService;
        this.f67759i = executor;
    }
}
