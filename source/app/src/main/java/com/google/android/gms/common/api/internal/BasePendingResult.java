package com.google.android.gms.common.api.internal;

import D0.J0;
import D0.K0;
import D0.V0;
import D0.X0;
import G0.InterfaceC2589s;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import android.util.Pair;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.api.AbstractC11908l;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.p;
import com.google.android.gms.common.api.u;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

@C0.a
@KeepName
public abstract class BasePendingResult<R extends com.google.android.gms.common.api.u> extends com.google.android.gms.common.api.p<R> {

    public static final ThreadLocal f61102p = new V0();

    public static final int f61103q = 0;

    public final Object f61104a;

    @NonNull
    public final a f61105b;

    @NonNull
    public final WeakReference f61106c;

    public final CountDownLatch f61107d;

    public final ArrayList f61108e;

    @Nullable
    public com.google.android.gms.common.api.v f61109f;

    public final AtomicReference f61110g;

    @Nullable
    public com.google.android.gms.common.api.u f61111h;

    public Status f61112i;

    public volatile boolean f61113j;

    public boolean f61114k;

    public boolean f61115l;

    @Nullable
    public InterfaceC2589s f61116m;

    public volatile J0 f61117n;

    public boolean f61118o;

    @KeepName
    private X0 resultGuardian;

    @Deprecated
    public BasePendingResult() {
        this.f61104a = new Object();
        this.f61107d = new CountDownLatch(1);
        this.f61108e = new ArrayList();
        this.f61110g = new AtomicReference();
        this.f61118o = false;
        this.f61105b = new a(Looper.getMainLooper());
        this.f61106c = new WeakReference(null);
    }

    public static void t(@Nullable com.google.android.gms.common.api.u uVar) {
        if (uVar instanceof com.google.android.gms.common.api.r) {
            try {
                ((com.google.android.gms.common.api.r) uVar).release();
            } catch (RuntimeException e10) {
                Log.w("BasePendingResult", "Unable to release ".concat(String.valueOf(uVar)), e10);
            }
        }
    }

    @Override
    public final void c(@NonNull p.a aVar) {
        G0.A.b(aVar != null, "Callback cannot be null.");
        synchronized (this.f61104a) {
            try {
                if (m()) {
                    aVar.a(this.f61112i);
                } else {
                    this.f61108e.add(aVar);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    @NonNull
    @ResultIgnorabilityUnspecified
    public final R d() {
        G0.A.q("await must not be called on the UI thread");
        G0.A.y(!this.f61113j, "Result has already been consumed");
        G0.A.y(this.f61117n == null, "Cannot await if then() has been called.");
        try {
            this.f61107d.await();
        } catch (InterruptedException unused) {
            l(Status.f61040h);
        }
        G0.A.y(m(), "Result is not ready.");
        return (R) p();
    }

    @Override
    @NonNull
    @ResultIgnorabilityUnspecified
    public final R e(long j10, @NonNull TimeUnit timeUnit) {
        if (j10 > 0) {
            G0.A.q("await must not be called on the UI thread when time is greater than zero.");
        }
        G0.A.y(!this.f61113j, "Result has already been consumed.");
        G0.A.y(this.f61117n == null, "Cannot await if then() has been called.");
        try {
            if (!this.f61107d.await(j10, timeUnit)) {
                l(Status.f61042j);
            }
        } catch (InterruptedException unused) {
            l(Status.f61040h);
        }
        G0.A.y(m(), "Result is not ready.");
        return (R) p();
    }

    @Override
    @C0.a
    public void f() {
        synchronized (this.f61104a) {
            if (!this.f61114k && !this.f61113j) {
                InterfaceC2589s interfaceC2589s = this.f61116m;
                if (interfaceC2589s != null) {
                    try {
                        interfaceC2589s.cancel();
                    } catch (RemoteException unused) {
                    }
                }
                t(this.f61111h);
                this.f61114k = true;
                q(k(Status.f61043k));
            }
        }
    }

    @Override
    public final boolean g() {
        boolean z10;
        synchronized (this.f61104a) {
            z10 = this.f61114k;
        }
        return z10;
    }

    @Override
    @C0.a
    public final void h(@Nullable com.google.android.gms.common.api.v<? super R> vVar) {
        synchronized (this.f61104a) {
            try {
                if (vVar == null) {
                    this.f61109f = null;
                    return;
                }
                boolean z10 = true;
                G0.A.y(!this.f61113j, "Result has already been consumed.");
                if (this.f61117n != null) {
                    z10 = false;
                }
                G0.A.y(z10, "Cannot set callbacks if then() has been called.");
                if (g()) {
                    return;
                }
                if (m()) {
                    this.f61105b.a(vVar, p());
                } else {
                    this.f61109f = vVar;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    @C0.a
    public final void i(@NonNull com.google.android.gms.common.api.v<? super R> vVar, long j10, @NonNull TimeUnit timeUnit) {
        synchronized (this.f61104a) {
            try {
                if (vVar == null) {
                    this.f61109f = null;
                    return;
                }
                boolean z10 = true;
                G0.A.y(!this.f61113j, "Result has already been consumed.");
                if (this.f61117n != null) {
                    z10 = false;
                }
                G0.A.y(z10, "Cannot set callbacks if then() has been called.");
                if (g()) {
                    return;
                }
                if (m()) {
                    this.f61105b.a(vVar, p());
                } else {
                    this.f61109f = vVar;
                    a aVar = this.f61105b;
                    aVar.sendMessageDelayed(aVar.obtainMessage(2, this), timeUnit.toMillis(j10));
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    @NonNull
    public final <S extends com.google.android.gms.common.api.u> com.google.android.gms.common.api.z<S> j(@NonNull com.google.android.gms.common.api.x<? super R, ? extends S> xVar) {
        com.google.android.gms.common.api.z<S> c10;
        G0.A.y(!this.f61113j, "Result has already been consumed.");
        synchronized (this.f61104a) {
            try {
                G0.A.y(this.f61117n == null, "Cannot call then() twice.");
                G0.A.y(this.f61109f == null, "Cannot call then() if callbacks are set.");
                G0.A.y(!this.f61114k, "Cannot call then() if result was canceled.");
                this.f61118o = true;
                this.f61117n = new J0(this.f61106c);
                c10 = this.f61117n.c(xVar);
                if (m()) {
                    this.f61105b.a(this.f61117n, p());
                } else {
                    this.f61109f = this.f61117n;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return c10;
    }

    @NonNull
    @C0.a
    public abstract R k(@NonNull Status status);

    @C0.a
    @Deprecated
    public final void l(@NonNull Status status) {
        synchronized (this.f61104a) {
            try {
                if (!m()) {
                    o(k(status));
                    this.f61115l = true;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @C0.a
    public final boolean m() {
        return this.f61107d.getCount() == 0;
    }

    @C0.a
    public final void n(@NonNull InterfaceC2589s interfaceC2589s) {
        synchronized (this.f61104a) {
            this.f61116m = interfaceC2589s;
        }
    }

    @C0.a
    public final void o(@NonNull R r10) {
        synchronized (this.f61104a) {
            try {
                if (this.f61115l || this.f61114k) {
                    t(r10);
                    return;
                }
                m();
                G0.A.y(!m(), "Results have already been set");
                G0.A.y(!this.f61113j, "Result has already been consumed");
                q(r10);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final com.google.android.gms.common.api.u p() {
        com.google.android.gms.common.api.u uVar;
        synchronized (this.f61104a) {
            G0.A.y(!this.f61113j, "Result has already been consumed.");
            G0.A.y(m(), "Result is not ready.");
            uVar = this.f61111h;
            this.f61111h = null;
            this.f61109f = null;
            this.f61113j = true;
        }
        K0 k02 = (K0) this.f61110g.getAndSet(null);
        if (k02 != null) {
            k02.f4575a.f4577a.remove(this);
        }
        return (com.google.android.gms.common.api.u) G0.A.r(uVar);
    }

    public final void q(com.google.android.gms.common.api.u uVar) {
        this.f61111h = uVar;
        this.f61112i = uVar.getStatus();
        this.f61116m = null;
        this.f61107d.countDown();
        if (this.f61114k) {
            this.f61109f = null;
        } else {
            com.google.android.gms.common.api.v vVar = this.f61109f;
            if (vVar != null) {
                this.f61105b.removeMessages(2);
                this.f61105b.a(vVar, p());
            } else if (this.f61111h instanceof com.google.android.gms.common.api.r) {
                this.resultGuardian = new X0(this, null);
            }
        }
        ArrayList arrayList = this.f61108e;
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((p.a) arrayList.get(i10)).a(this.f61112i);
        }
        this.f61108e.clear();
    }

    public final void s() {
        boolean z10 = true;
        if (!this.f61118o && !((Boolean) f61102p.get()).booleanValue()) {
            z10 = false;
        }
        this.f61118o = z10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean u() {
        boolean g10;
        synchronized (this.f61104a) {
            try {
                if (((AbstractC11908l) this.f61106c.get()) != null) {
                    if (!this.f61118o) {
                    }
                    g10 = g();
                }
                f();
                g10 = g();
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return g10;
    }

    public final void v(@Nullable K0 k02) {
        this.f61110g.set(k02);
    }

    @VisibleForTesting
    public static class a<R extends com.google.android.gms.common.api.u> extends g1.u {
        public a() {
            super(Looper.getMainLooper());
        }

        public final void a(@NonNull com.google.android.gms.common.api.v vVar, @NonNull com.google.android.gms.common.api.u uVar) {
            int i10 = BasePendingResult.f61103q;
            sendMessage(obtainMessage(1, new Pair((com.google.android.gms.common.api.v) G0.A.r(vVar), uVar)));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public final void handleMessage(@NonNull Message message) {
            int i10 = message.what;
            if (i10 != 1) {
                if (i10 == 2) {
                    ((BasePendingResult) message.obj).l(Status.f61042j);
                    return;
                }
                Log.wtf("BasePendingResult", "Don't know how to handle message: " + i10, new Exception());
                return;
            }
            Pair pair = (Pair) message.obj;
            com.google.android.gms.common.api.v vVar = (com.google.android.gms.common.api.v) pair.first;
            com.google.android.gms.common.api.u uVar = (com.google.android.gms.common.api.u) pair.second;
            try {
                vVar.a(uVar);
            } catch (RuntimeException e10) {
                BasePendingResult.t(uVar);
                throw e10;
            }
        }

        public a(@NonNull Looper looper) {
            super(looper);
        }
    }

    @C0.a
    @Deprecated
    public BasePendingResult(@NonNull Looper looper) {
        this.f61104a = new Object();
        this.f61107d = new CountDownLatch(1);
        this.f61108e = new ArrayList();
        this.f61110g = new AtomicReference();
        this.f61118o = false;
        this.f61105b = new a(looper);
        this.f61106c = new WeakReference(null);
    }

    @C0.a
    public BasePendingResult(@Nullable AbstractC11908l abstractC11908l) {
        this.f61104a = new Object();
        this.f61107d = new CountDownLatch(1);
        this.f61108e = new ArrayList();
        this.f61110g = new AtomicReference();
        this.f61118o = false;
        this.f61105b = new a(abstractC11908l != null ? abstractC11908l.r() : Looper.getMainLooper());
        this.f61106c = new WeakReference(abstractC11908l);
    }

    @C0.a
    @VisibleForTesting
    public BasePendingResult(@NonNull a<R> aVar) {
        this.f61104a = new Object();
        this.f61107d = new CountDownLatch(1);
        this.f61108e = new ArrayList();
        this.f61110g = new AtomicReference();
        this.f61118o = false;
        this.f61105b = (a) G0.A.s(aVar, "CallbackHandler must not be null");
        this.f61106c = new WeakReference(null);
    }
}
