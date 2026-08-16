package com.google.android.gms.common.api.internal;

import B0.C2318c;
import B0.C2323h;
import D0.C2444g;
import D0.C2449i0;
import D0.C2464q;
import D0.InterfaceC2451j0;
import D0.InterfaceC2460o;
import D0.J0;
import D0.L0;
import D0.N;
import D0.O;
import D0.P0;
import D0.Q;
import D0.S;
import D0.T;
import D0.U;
import G0.C2557b0;
import G0.C2570i;
import G0.InterfaceC2555a0;
import T0.C3035e;
import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.fragment.app.FragmentActivity;
import com.google.android.gms.common.api.AbstractC11908l;
import com.google.android.gms.common.api.C11894a;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.C11904b;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import com.tonyodev.fetch2.util.FetchDefaults;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Lock;

public final class q extends AbstractC11908l implements InterfaceC2451j0 {

    public final L0 f61208A;

    public final InterfaceC2555a0 f61209B;

    public final Lock f61210e;

    public final C2557b0 f61211f;

    public final int f61213h;

    public final Context f61214i;

    public final Looper f61215j;

    public volatile boolean f61217l;

    public long f61218m;

    public long f61219n;

    public final T f61220o;

    public final C2323h f61221p;

    @Nullable
    @VisibleForTesting
    public C2449i0 f61222q;

    public final Map f61223r;

    public Set f61224s;

    public final C2570i f61225t;

    public final Map f61226u;

    public final C11894a.AbstractC0948a f61227v;

    public final g f61228w;

    public final ArrayList f61229x;

    public Integer f61230y;

    @Nullable
    public Set f61231z;

    @Nullable
    public x f61212g = null;

    @VisibleForTesting
    public final Queue f61216k = new LinkedList();

    public q(Context context, Lock lock, Looper looper, C2570i c2570i, C2323h c2323h, C11894a.AbstractC0948a abstractC0948a, Map map, List list, List list2, Map map2, int i10, int i11, ArrayList arrayList) {
        this.f61218m = true != C3035e.c() ? 120000L : FetchDefaults.DEFAULT_NOTIFICATION_TIMEOUT_AFTER;
        this.f61219n = 5000L;
        this.f61224s = new HashSet();
        this.f61228w = new g();
        this.f61230y = null;
        this.f61231z = null;
        N n10 = new N(this);
        this.f61209B = n10;
        this.f61214i = context;
        this.f61210e = lock;
        this.f61211f = new C2557b0(looper, n10);
        this.f61215j = looper;
        this.f61220o = new T(this, looper);
        this.f61221p = c2323h;
        this.f61213h = i10;
        if (i10 >= 0) {
            this.f61230y = Integer.valueOf(i11);
        }
        this.f61226u = map;
        this.f61223r = map2;
        this.f61229x = arrayList;
        this.f61208A = new L0();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            this.f61211f.f((AbstractC11908l.b) it.next());
        }
        Iterator it2 = list2.iterator();
        while (it2.hasNext()) {
            this.f61211f.g((AbstractC11908l.c) it2.next());
        }
        this.f61225t = c2570i;
        this.f61227v = abstractC0948a;
    }

    public static int K(Iterable iterable, boolean z10) {
        Iterator it = iterable.iterator();
        boolean z11 = false;
        boolean z12 = false;
        while (it.hasNext()) {
            C11894a.f fVar = (C11894a.f) it.next();
            z11 |= fVar.g();
            z12 |= fVar.b();
        }
        if (z11) {
            return (z12 && z10) ? 2 : 1;
        }
        return 3;
    }

    public static String N(int i10) {
        return i10 != 1 ? i10 != 2 ? i10 != 3 ? "UNKNOWN" : "SIGN_IN_MODE_NONE" : "SIGN_IN_MODE_OPTIONAL" : "SIGN_IN_MODE_REQUIRED";
    }

    public static void P(q qVar) {
        qVar.f61210e.lock();
        try {
            if (qVar.f61217l) {
                qVar.U();
            }
        } finally {
            qVar.f61210e.unlock();
        }
    }

    public static void Q(q qVar) {
        qVar.f61210e.lock();
        try {
            if (qVar.R()) {
                qVar.U();
            }
        } finally {
            qVar.f61210e.unlock();
        }
    }

    @Override
    public final void A() {
        i();
        g();
    }

    @Override
    public final void B(@NonNull AbstractC11908l.b bVar) {
        this.f61211f.f(bVar);
    }

    @Override
    public final void C(@NonNull AbstractC11908l.c cVar) {
        this.f61211f.g(cVar);
    }

    @Override
    public final <L> f<L> D(@NonNull L l10) {
        this.f61210e.lock();
        try {
            return this.f61228w.d(l10, this.f61215j, "NO_TYPE");
        } finally {
            this.f61210e.unlock();
        }
    }

    @Override
    public final void E(@NonNull FragmentActivity fragmentActivity) {
        C2444g c2444g = new C2444g((Activity) fragmentActivity);
        if (this.f61213h < 0) {
            throw new IllegalStateException("Called stopAutoManage but automatic lifecycle management is not enabled.");
        }
        P0.u(c2444g).w(this.f61213h);
    }

    @Override
    public final void F(@NonNull AbstractC11908l.b bVar) {
        this.f61211f.h(bVar);
    }

    @Override
    public final void G(@NonNull AbstractC11908l.c cVar) {
        this.f61211f.i(cVar);
    }

    @Override
    public final void H(J0 j02) {
        this.f61210e.lock();
        try {
            if (this.f61231z == null) {
                this.f61231z = new HashSet();
            }
            this.f61231z.add(j02);
            this.f61210e.unlock();
        } catch (Throwable th2) {
            this.f61210e.unlock();
            throw th2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0041, code lost:
    
        if (r3 != false) goto L20;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void I(J0 j02) {
        this.f61210e.lock();
        try {
            Set set = this.f61231z;
            if (set == null) {
                Log.wtf("GoogleApiClientImpl", "Attempted to remove pending transform when no transforms are registered.", new Exception());
            } else if (set.remove(j02)) {
                this.f61210e.lock();
                try {
                    Set set2 = this.f61231z;
                    if (set2 == null) {
                        this.f61210e.unlock();
                    } else {
                        boolean isEmpty = set2.isEmpty();
                        this.f61210e.unlock();
                    }
                    x xVar = this.f61212g;
                    if (xVar != null) {
                        xVar.j();
                    }
                } finally {
                    this.f61210e.unlock();
                }
            } else {
                Log.wtf("GoogleApiClientImpl", "Failed to remove pending transform - this may lead to memory leaks!", new Exception());
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final String M() {
        StringWriter stringWriter = new StringWriter();
        j("", null, new PrintWriter(stringWriter), null);
        return stringWriter.toString();
    }

    @ResultIgnorabilityUnspecified
    @J2.a("lock")
    public final boolean R() {
        if (!this.f61217l) {
            return false;
        }
        this.f61217l = false;
        this.f61220o.removeMessages(2);
        this.f61220o.removeMessages(1);
        C2449i0 c2449i0 = this.f61222q;
        if (c2449i0 != null) {
            c2449i0.b();
            this.f61222q = null;
        }
        return true;
    }

    public final void S(int i10) {
        Integer num = this.f61230y;
        if (num == null) {
            this.f61230y = Integer.valueOf(i10);
        } else if (num.intValue() != i10) {
            throw new IllegalStateException("Cannot use sign-in mode: " + N(i10) + ". Mode was already set to " + N(this.f61230y.intValue()));
        }
        if (this.f61212g != null) {
            return;
        }
        boolean z10 = false;
        boolean z11 = false;
        for (C11894a.f fVar : this.f61223r.values()) {
            z10 |= fVar.g();
            z11 |= fVar.b();
        }
        int intValue = this.f61230y.intValue();
        if (intValue == 1) {
            if (!z10) {
                throw new IllegalStateException("SIGN_IN_MODE_REQUIRED cannot be used on a GoogleApiClient that does not contain any authenticated APIs. Use connect() instead.");
            }
            if (z11) {
                throw new IllegalStateException("Cannot use SIGN_IN_MODE_REQUIRED with GOOGLE_SIGN_IN_API. Use connect(SIGN_IN_MODE_OPTIONAL) instead.");
            }
        } else if (intValue == 2 && z10) {
            this.f61212g = l.t(this.f61214i, this, this.f61210e, this.f61215j, this.f61221p, this.f61223r, this.f61225t, this.f61226u, this.f61227v, this.f61229x);
            return;
        }
        this.f61212g = new s(this.f61214i, this, this.f61210e, this.f61215j, this.f61221p, this.f61223r, this.f61225t, this.f61226u, this.f61227v, this.f61229x, this);
    }

    public final void T(AbstractC11908l abstractC11908l, C2464q c2464q, boolean z10) {
        J0.a.f10175d.a(abstractC11908l).h(new S(this, c2464q, z10, abstractC11908l));
    }

    @J2.a("lock")
    public final void U() {
        this.f61211f.b();
        ((x) G0.A.r(this.f61212g)).i();
    }

    @Override
    @J2.a("lock")
    public final void a(int i10, boolean z10) {
        if (i10 == 1) {
            if (!z10 && !this.f61217l) {
                this.f61217l = true;
                if (this.f61222q == null && !C3035e.c()) {
                    try {
                        this.f61222q = this.f61221p.H(this.f61214i.getApplicationContext(), new U(this));
                    } catch (SecurityException unused) {
                    }
                }
                T t10 = this.f61220o;
                t10.sendMessageDelayed(t10.obtainMessage(1), this.f61218m);
                T t11 = this.f61220o;
                t11.sendMessageDelayed(t11.obtainMessage(2), this.f61219n);
            }
            i10 = 1;
        }
        for (BasePendingResult basePendingResult : (BasePendingResult[]) this.f61208A.f4577a.toArray(new BasePendingResult[0])) {
            basePendingResult.l(L0.f4576c);
        }
        this.f61211f.e(i10);
        this.f61211f.a();
        if (i10 == 2) {
            U();
        }
    }

    @Override
    @J2.a("lock")
    public final void b(C2318c c2318c) {
        if (!this.f61221p.l(this.f61214i, c2318c.n())) {
            R();
        }
        if (this.f61217l) {
            return;
        }
        this.f61211f.c(c2318c);
        this.f61211f.a();
    }

    @Override
    @J2.a("lock")
    public final void c(@Nullable Bundle bundle) {
        while (!this.f61216k.isEmpty()) {
            m((C11904b.a) this.f61216k.remove());
        }
        this.f61211f.d(bundle);
    }

    @Override
    @ResultIgnorabilityUnspecified
    public final C2318c d() {
        boolean z10 = true;
        G0.A.y(Looper.myLooper() != Looper.getMainLooper(), "blockingConnect must not be called on the UI thread");
        this.f61210e.lock();
        try {
            if (this.f61213h >= 0) {
                if (this.f61230y == null) {
                    z10 = false;
                }
                G0.A.y(z10, "Sign-in mode should have been set explicitly by auto-manage.");
            } else {
                Integer num = this.f61230y;
                if (num == null) {
                    this.f61230y = Integer.valueOf(K(this.f61223r.values(), false));
                } else if (num.intValue() == 2) {
                    throw new IllegalStateException("Cannot call blockingConnect() when sign-in mode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead.");
                }
            }
            S(((Integer) G0.A.r(this.f61230y)).intValue());
            this.f61211f.b();
            C2318c d10 = ((x) G0.A.r(this.f61212g)).d();
            this.f61210e.unlock();
            return d10;
        } catch (Throwable th2) {
            this.f61210e.unlock();
            throw th2;
        }
    }

    @Override
    public final C2318c e(long j10, @NonNull TimeUnit timeUnit) {
        G0.A.y(Looper.myLooper() != Looper.getMainLooper(), "blockingConnect must not be called on the UI thread");
        G0.A.s(timeUnit, "TimeUnit must not be null");
        this.f61210e.lock();
        try {
            Integer num = this.f61230y;
            if (num == null) {
                this.f61230y = Integer.valueOf(K(this.f61223r.values(), false));
            } else if (num.intValue() == 2) {
                throw new IllegalStateException("Cannot call blockingConnect() when sign-in mode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead.");
            }
            S(((Integer) G0.A.r(this.f61230y)).intValue());
            this.f61211f.b();
            C2318c q10 = ((x) G0.A.r(this.f61212g)).q(j10, timeUnit);
            this.f61210e.unlock();
            return q10;
        } catch (Throwable th2) {
            this.f61210e.unlock();
            throw th2;
        }
    }

    @Override
    public final com.google.android.gms.common.api.p<Status> f() {
        G0.A.y(u(), "GoogleApiClient is not connected yet.");
        Integer num = this.f61230y;
        boolean z10 = true;
        if (num != null && num.intValue() == 2) {
            z10 = false;
        }
        G0.A.y(z10, "Cannot use clearDefaultAccountAndReconnect with GOOGLE_SIGN_IN_API");
        C2464q c2464q = new C2464q(this);
        if (this.f61223r.containsKey(J0.a.f10172a)) {
            T(this, c2464q, false);
        } else {
            AtomicReference atomicReference = new AtomicReference();
            O o10 = new O(this, atomicReference, c2464q);
            Q q10 = new Q(this, c2464q);
            AbstractC11908l.a aVar = new AbstractC11908l.a(this.f61214i);
            aVar.a(J0.a.f10173b);
            aVar.e(o10);
            aVar.f(q10);
            aVar.m(this.f61220o);
            AbstractC11908l h10 = aVar.h();
            atomicReference.set(h10);
            h10.g();
        }
        return c2464q;
    }

    @Override
    public final void g() {
        this.f61210e.lock();
        try {
            int i10 = 2;
            boolean z10 = false;
            if (this.f61213h >= 0) {
                G0.A.y(this.f61230y != null, "Sign-in mode should have been set explicitly by auto-manage.");
            } else {
                Integer num = this.f61230y;
                if (num == null) {
                    this.f61230y = Integer.valueOf(K(this.f61223r.values(), false));
                } else if (num.intValue() == 2) {
                    throw new IllegalStateException("Cannot call connect() when SignInMode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead.");
                }
            }
            int intValue = ((Integer) G0.A.r(this.f61230y)).intValue();
            this.f61210e.lock();
            try {
                if (intValue == 3 || intValue == 1) {
                    i10 = intValue;
                } else if (intValue != 2) {
                    i10 = intValue;
                    G0.A.b(z10, "Illegal sign-in mode: " + i10);
                    S(i10);
                    U();
                    this.f61210e.unlock();
                    return;
                }
                G0.A.b(z10, "Illegal sign-in mode: " + i10);
                S(i10);
                U();
                this.f61210e.unlock();
                return;
            } finally {
                this.f61210e.unlock();
            }
            z10 = true;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override
    public final void h(int i10) {
        this.f61210e.lock();
        boolean z10 = true;
        if (i10 != 3 && i10 != 1) {
            if (i10 == 2) {
                i10 = 2;
            } else {
                z10 = false;
            }
        }
        try {
            G0.A.b(z10, "Illegal sign-in mode: " + i10);
            S(i10);
            U();
        } finally {
            this.f61210e.unlock();
        }
    }

    @Override
    public final void i() {
        this.f61210e.lock();
        try {
            this.f61208A.b();
            x xVar = this.f61212g;
            if (xVar != null) {
                xVar.m();
            }
            this.f61228w.e();
            for (C11904b.a aVar : this.f61216k) {
                aVar.v(null);
                aVar.f();
            }
            this.f61216k.clear();
            if (this.f61212g != null) {
                R();
                this.f61211f.a();
            }
            this.f61210e.unlock();
        } catch (Throwable th2) {
            this.f61210e.unlock();
            throw th2;
        }
    }

    @Override
    public final void j(String str, @Nullable FileDescriptor fileDescriptor, PrintWriter printWriter, @Nullable String[] strArr) {
        printWriter.append((CharSequence) str).append("mContext=").println(this.f61214i);
        printWriter.append((CharSequence) str).append("mResuming=").print(this.f61217l);
        printWriter.append(" mWorkQueue.size()=").print(this.f61216k.size());
        printWriter.append(" mUnconsumedApiCalls.size()=").println(this.f61208A.f4577a.size());
        x xVar = this.f61212g;
        if (xVar != null) {
            xVar.n(str, fileDescriptor, printWriter, strArr);
        }
    }

    @Override
    @ResultIgnorabilityUnspecified
    public final <A extends C11894a.b, R extends com.google.android.gms.common.api.u, T extends C11904b.a<R, A>> T l(@NonNull T t10) {
        C11894a<?> x10 = t10.x();
        G0.A.b(this.f61223r.containsKey(t10.y()), "GoogleApiClient is not configured to use " + (x10 != null ? x10.d() : "the API") + " required for this call.");
        this.f61210e.lock();
        try {
            x xVar = this.f61212g;
            if (xVar == null) {
                this.f61216k.add(t10);
            } else {
                t10 = (T) xVar.e(t10);
            }
            this.f61210e.unlock();
            return t10;
        } catch (Throwable th2) {
            this.f61210e.unlock();
            throw th2;
        }
    }

    @Override
    @ResultIgnorabilityUnspecified
    public final <A extends C11894a.b, T extends C11904b.a<? extends com.google.android.gms.common.api.u, A>> T m(@NonNull T t10) {
        Map map = this.f61223r;
        C11894a<?> x10 = t10.x();
        G0.A.b(map.containsKey(t10.y()), "GoogleApiClient is not configured to use " + (x10 != null ? x10.d() : "the API") + " required for this call.");
        this.f61210e.lock();
        try {
            x xVar = this.f61212g;
            if (xVar == null) {
                throw new IllegalStateException("GoogleApiClient is not connected yet.");
            }
            if (this.f61217l) {
                this.f61216k.add(t10);
                while (!this.f61216k.isEmpty()) {
                    C11904b.a aVar = (C11904b.a) this.f61216k.remove();
                    this.f61208A.a(aVar);
                    aVar.b(Status.f61041i);
                }
            } else {
                t10 = (T) xVar.f(t10);
            }
            this.f61210e.unlock();
            return t10;
        } catch (Throwable th2) {
            this.f61210e.unlock();
            throw th2;
        }
    }

    @Override
    @NonNull
    public final <C extends C11894a.f> C o(@NonNull C11894a.c<C> cVar) {
        C c10 = (C) this.f61223r.get(cVar);
        G0.A.s(c10, "Appropriate Api was not requested.");
        return c10;
    }

    @Override
    @NonNull
    public final C2318c p(@NonNull C11894a<?> c11894a) {
        C2318c c2318c;
        this.f61210e.lock();
        try {
            if (!u() && !this.f61217l) {
                throw new IllegalStateException("Cannot invoke getConnectionResult unless GoogleApiClient is connected");
            }
            if (!this.f61223r.containsKey(c11894a.b())) {
                throw new IllegalArgumentException(c11894a.d() + " was never registered with GoogleApiClient");
            }
            C2318c o10 = ((x) G0.A.r(this.f61212g)).o(c11894a);
            if (o10 != null) {
                this.f61210e.unlock();
                return o10;
            }
            if (this.f61217l) {
                c2318c = C2318c.f1201E;
            } else {
                Log.w("GoogleApiClientImpl", M());
                Log.wtf("GoogleApiClientImpl", c11894a.d() + " requested in getConnectionResult is not connected but is not present in the failed  connections map", new Exception());
                c2318c = new C2318c(8, null);
            }
            this.f61210e.unlock();
            return c2318c;
        } catch (Throwable th2) {
            this.f61210e.unlock();
            throw th2;
        }
    }

    @Override
    public final Context q() {
        return this.f61214i;
    }

    @Override
    public final Looper r() {
        return this.f61215j;
    }

    @Override
    public final boolean s(@NonNull C11894a<?> c11894a) {
        return this.f61223r.containsKey(c11894a.b());
    }

    @Override
    public final boolean t(@NonNull C11894a<?> c11894a) {
        C11894a.f fVar;
        return u() && (fVar = (C11894a.f) this.f61223r.get(c11894a.b())) != null && fVar.isConnected();
    }

    @Override
    public final boolean u() {
        x xVar = this.f61212g;
        return xVar != null && xVar.r();
    }

    @Override
    public final boolean v() {
        x xVar = this.f61212g;
        return xVar != null && xVar.p();
    }

    @Override
    public final boolean w(@NonNull AbstractC11908l.b bVar) {
        return this.f61211f.j(bVar);
    }

    @Override
    public final boolean x(@NonNull AbstractC11908l.c cVar) {
        return this.f61211f.k(cVar);
    }

    @Override
    public final boolean y(InterfaceC2460o interfaceC2460o) {
        x xVar = this.f61212g;
        return xVar != null && xVar.g(interfaceC2460o);
    }

    @Override
    public final void z() {
        x xVar = this.f61212g;
        if (xVar != null) {
            xVar.l();
        }
    }
}
