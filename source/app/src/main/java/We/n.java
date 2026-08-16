package We;

import Be.I;
import Be.InterfaceC2356f;
import Be.N;
import Be.v;
import android.security.keystore.KeyProperties;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.concurrent.atomic.AtomicReference;

public class n<T> extends We.a<T, n<T>> implements I<T>, De.c, v<T>, N<T>, InterfaceC2356f {

    public final I<? super T> f27750l;

    public final AtomicReference<De.c> f27751m;

    public Ie.j<T> f27752n;

    public enum a implements I<Object> {
        INSTANCE;

        @Override
        public void a() {
        }

        @Override
        public void e(De.c cVar) {
        }

        @Override
        public void h(Object obj) {
        }

        @Override
        public void onError(Throwable th2) {
        }
    }

    public n() {
        this(a.INSTANCE);
    }

    public static <T> n<T> p0() {
        return new n<>();
    }

    public static <T> n<T> q0(I<? super T> i10) {
        return new n<>(i10);
    }

    public static String r0(int i10) {
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
            if (this.f27751m.get() == null) {
                this.f27719d.add(new IllegalStateException("onSubscribe not called in proper order"));
            }
        }
        try {
            this.f27721f = Thread.currentThread();
            this.f27720e++;
            this.f27750l.a();
        } finally {
            this.f27717b.countDown();
        }
    }

    @Override
    public void b(T t10) {
        h(t10);
        a();
    }

    public final void cancel() {
        dispose();
    }

    @Override
    public final boolean d() {
        return Ge.d.b(this.f27751m.get());
    }

    @Override
    public final void dispose() {
        Ge.d.a(this.f27751m);
    }

    @Override
    public void e(De.c cVar) {
        this.f27721f = Thread.currentThread();
        if (cVar == null) {
            this.f27719d.add(new NullPointerException("onSubscribe received a null Subscription"));
            return;
        }
        if (!androidx.lifecycle.c.a(this.f27751m, null, cVar)) {
            cVar.dispose();
            if (this.f27751m.get() != Ge.d.DISPOSED) {
                this.f27719d.add(new IllegalStateException("onSubscribe received multiple subscriptions: " + ((Object) cVar)));
                return;
            }
            return;
        }
        int i10 = this.f27723h;
        if (i10 != 0 && (cVar instanceof Ie.j)) {
            Ie.j<T> jVar = (Ie.j) cVar;
            this.f27752n = jVar;
            int m10 = jVar.m(i10);
            this.f27724i = m10;
            if (m10 == 1) {
                this.f27722g = true;
                this.f27721f = Thread.currentThread();
                while (true) {
                    try {
                        T poll = this.f27752n.poll();
                        if (poll == null) {
                            this.f27720e++;
                            this.f27751m.lazySet(Ge.d.DISPOSED);
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
        this.f27750l.e(cVar);
    }

    @Override
    public void h(T t10) {
        if (!this.f27722g) {
            this.f27722g = true;
            if (this.f27751m.get() == null) {
                this.f27719d.add(new IllegalStateException("onSubscribe not called in proper order"));
            }
        }
        this.f27721f = Thread.currentThread();
        if (this.f27724i != 2) {
            this.f27718c.add(t10);
            if (t10 == null) {
                this.f27719d.add(new NullPointerException("onNext received a null value"));
            }
            this.f27750l.h(t10);
            return;
        }
        while (true) {
            try {
                T poll = this.f27752n.poll();
                if (poll == null) {
                    return;
                } else {
                    this.f27718c.add(poll);
                }
            } catch (Throwable th2) {
                this.f27719d.add(th2);
                this.f27752n.dispose();
                return;
            }
        }
    }

    public final n<T> j0() {
        if (this.f27752n != null) {
            return this;
        }
        throw new AssertionError((Object) "Upstream is not fuseable.");
    }

    public final n<T> k0(int i10) {
        int i11 = this.f27724i;
        if (i11 == i10) {
            return this;
        }
        if (this.f27752n == null) {
            throw a0("Upstream is not fuseable");
        }
        throw new AssertionError((Object) ("Fusion mode different. Expected: " + r0(i10) + ", actual: " + r0(i11)));
    }

    public final n<T> l0() {
        if (this.f27752n == null) {
            return this;
        }
        throw new AssertionError((Object) "Upstream is fuseable.");
    }

    @Override
    public final n<T> x() {
        if (this.f27751m.get() != null) {
            throw a0("Subscribed!");
        }
        if (this.f27719d.isEmpty()) {
            return this;
        }
        throw a0("Not subscribed but errors found");
    }

    public final n<T> n0(Fe.g<? super n<T>> gVar) {
        try {
            gVar.accept(this);
            return this;
        } catch (Throwable th2) {
            throw ExceptionHelper.f(th2);
        }
    }

    @Override
    public final n<T> A() {
        if (this.f27751m.get() != null) {
            return this;
        }
        throw a0("Not subscribed!");
    }

    @Override
    public void onError(Throwable th2) {
        if (!this.f27722g) {
            this.f27722g = true;
            if (this.f27751m.get() == null) {
                this.f27719d.add(new IllegalStateException("onSubscribe not called in proper order"));
            }
        }
        try {
            this.f27721f = Thread.currentThread();
            if (th2 == null) {
                this.f27719d.add(new NullPointerException("onError received a null Throwable"));
            } else {
                this.f27719d.add(th2);
            }
            this.f27750l.onError(th2);
            this.f27717b.countDown();
        } catch (Throwable th3) {
            this.f27717b.countDown();
            throw th3;
        }
    }

    public final boolean s0() {
        return this.f27751m.get() != null;
    }

    public final boolean t0() {
        return d();
    }

    public final n<T> u0(int i10) {
        this.f27723h = i10;
        return this;
    }

    public n(I<? super T> i10) {
        this.f27751m = new AtomicReference<>();
        this.f27750l = i10;
    }
}
