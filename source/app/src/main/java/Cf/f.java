package cf;

import Be.InterfaceC2367q;
import Fe.g;
import Ie.l;
import Ue.j;
import android.security.keystore.KeyProperties;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public class f<T> extends We.a<T, f<T>> implements InterfaceC2367q<T>, hn.d, De.c {

    public final hn.c<? super T> f34819l;

    public volatile boolean f34820m;

    public final AtomicReference<hn.d> f34821n;

    public final AtomicLong f34822o;

    public l<T> f34823p;

    public enum a implements InterfaceC2367q<Object> {
        INSTANCE;

        @Override
        public void a() {
        }

        @Override
        public void h(Object obj) {
        }

        @Override
        public void j(hn.d dVar) {
        }

        @Override
        public void onError(Throwable th2) {
        }
    }

    public f() {
        this(a.INSTANCE, Long.MAX_VALUE);
    }

    public static <T> f<T> p0() {
        return new f<>();
    }

    public static <T> f<T> q0(long j10) {
        return new f<>(j10);
    }

    public static <T> f<T> r0(hn.c<? super T> cVar) {
        return new f<>(cVar);
    }

    public static String s0(int i10) {
        if (i10 == 0) {
            return KeyProperties.DIGEST_NONE;
        }
        if (i10 == 1) {
            return "SYNC";
        }
        if (i10 == 2) {
            return "ASYNC";
        }
        return "Unknown(" + i10 + ")";
    }

    @Override
    public void a() {
        if (!this.f27722g) {
            this.f27722g = true;
            if (this.f34821n.get() == null) {
                this.f27719d.add(new IllegalStateException("onSubscribe not called in proper order"));
            }
        }
        try {
            this.f27721f = Thread.currentThread();
            this.f27720e++;
            this.f34819l.a();
        } finally {
            this.f27717b.countDown();
        }
    }

    @Override
    public final void cancel() {
        if (this.f34820m) {
            return;
        }
        this.f34820m = true;
        j.a(this.f34821n);
    }

    @Override
    public final boolean d() {
        return this.f34820m;
    }

    @Override
    public final void dispose() {
        cancel();
    }

    @Override
    public void h(T t10) {
        if (!this.f27722g) {
            this.f27722g = true;
            if (this.f34821n.get() == null) {
                this.f27719d.add(new IllegalStateException("onSubscribe not called in proper order"));
            }
        }
        this.f27721f = Thread.currentThread();
        if (this.f27724i != 2) {
            this.f27718c.add(t10);
            if (t10 == null) {
                this.f27719d.add(new NullPointerException("onNext received a null value"));
            }
            this.f34819l.h(t10);
            return;
        }
        while (true) {
            try {
                T poll = this.f34823p.poll();
                if (poll == null) {
                    return;
                } else {
                    this.f27718c.add(poll);
                }
            } catch (Throwable th2) {
                this.f27719d.add(th2);
                this.f34823p.cancel();
                return;
            }
        }
    }

    @Override
    public final void i(long j10) {
        j.b(this.f34821n, this.f34822o, j10);
    }

    @Override
    public void j(hn.d dVar) {
        this.f27721f = Thread.currentThread();
        if (dVar == null) {
            this.f27719d.add(new NullPointerException("onSubscribe received a null Subscription"));
            return;
        }
        if (!androidx.lifecycle.c.a(this.f34821n, null, dVar)) {
            dVar.cancel();
            if (this.f34821n.get() != j.CANCELLED) {
                this.f27719d.add(new IllegalStateException("onSubscribe received multiple subscriptions: " + ((Object) dVar)));
                return;
            }
            return;
        }
        int i10 = this.f27723h;
        if (i10 != 0 && (dVar instanceof l)) {
            l<T> lVar = (l) dVar;
            this.f34823p = lVar;
            int m10 = lVar.m(i10);
            this.f27724i = m10;
            if (m10 == 1) {
                this.f27722g = true;
                this.f27721f = Thread.currentThread();
                while (true) {
                    try {
                        T poll = this.f34823p.poll();
                        if (poll == null) {
                            this.f27720e++;
                            return;
                        }
                        this.f27718c.add(poll);
                    } catch (Throwable th2) {
                        this.f27719d.add(th2);
                        return;
                    }
                }
            }
        }
        this.f34819l.j(dVar);
        long andSet = this.f34822o.getAndSet(0L);
        if (andSet != 0) {
            dVar.i(andSet);
        }
        v0();
    }

    public final f<T> j0() {
        if (this.f34823p != null) {
            return this;
        }
        throw new AssertionError((Object) "Upstream is not fuseable.");
    }

    public final f<T> k0(int i10) {
        int i11 = this.f27724i;
        if (i11 == i10) {
            return this;
        }
        if (this.f34823p == null) {
            throw a0("Upstream is not fuseable");
        }
        throw new AssertionError((Object) ("Fusion mode different. Expected: " + s0(i10) + ", actual: " + s0(i11)));
    }

    public final f<T> l0() {
        if (this.f34823p == null) {
            return this;
        }
        throw new AssertionError((Object) "Upstream is fuseable.");
    }

    @Override
    public final f<T> x() {
        if (this.f34821n.get() != null) {
            throw a0("Subscribed!");
        }
        if (this.f27719d.isEmpty()) {
            return this;
        }
        throw a0("Not subscribed but errors found");
    }

    public final f<T> n0(g<? super f<T>> gVar) {
        try {
            gVar.accept(this);
            return this;
        } catch (Throwable th2) {
            throw ExceptionHelper.f(th2);
        }
    }

    @Override
    public final f<T> A() {
        if (this.f34821n.get() != null) {
            return this;
        }
        throw a0("Not subscribed!");
    }

    @Override
    public void onError(Throwable th2) {
        if (!this.f27722g) {
            this.f27722g = true;
            if (this.f34821n.get() == null) {
                this.f27719d.add(new NullPointerException("onSubscribe not called in proper order"));
            }
        }
        try {
            this.f27721f = Thread.currentThread();
            this.f27719d.add(th2);
            if (th2 == null) {
                this.f27719d.add(new IllegalStateException("onError received a null Throwable"));
            }
            this.f34819l.onError(th2);
            this.f27717b.countDown();
        } catch (Throwable th3) {
            this.f27717b.countDown();
            throw th3;
        }
    }

    public final boolean t0() {
        return this.f34821n.get() != null;
    }

    public final boolean u0() {
        return this.f34820m;
    }

    public void v0() {
    }

    public final f<T> w0(long j10) {
        i(j10);
        return this;
    }

    public final f<T> x0(int i10) {
        this.f27723h = i10;
        return this;
    }

    public f(long j10) {
        this(a.INSTANCE, j10);
    }

    public f(hn.c<? super T> cVar) {
        this(cVar, Long.MAX_VALUE);
    }

    public f(hn.c<? super T> cVar, long j10) {
        if (j10 >= 0) {
            this.f34819l = cVar;
            this.f34821n = new AtomicReference<>();
            this.f34822o = new AtomicLong(j10);
            return;
        }
        throw new IllegalArgumentException("Negative initial request not allowed");
    }
}
