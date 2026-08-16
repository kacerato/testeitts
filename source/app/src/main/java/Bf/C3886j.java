package bf;

import Be.B;
import Be.I;
import Ie.o;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

public final class C3886j<T> extends AbstractC3885i<T> {

    public final Re.c<T> f33176b;

    public final AtomicReference<I<? super T>> f33177c;

    public final AtomicReference<Runnable> f33178d;

    public final boolean f33179e;

    public volatile boolean f33180f;

    public volatile boolean f33181g;

    public Throwable f33182h;

    public final AtomicBoolean f33183i;

    public final Je.b<T> f33184j;

    public boolean f33185k;

    public final class a extends Je.b<T> {

        public static final long f33186d = 7926949470189395511L;

        public a() {
        }

        @Override
        public void clear() {
            C3886j.this.f33176b.clear();
        }

        @Override
        public boolean d() {
            return C3886j.this.f33180f;
        }

        @Override
        public void dispose() {
            if (C3886j.this.f33180f) {
                return;
            }
            C3886j.this.f33180f = true;
            C3886j.this.t8();
            C3886j.this.f33177c.lazySet(null);
            if (C3886j.this.f33184j.getAndIncrement() == 0) {
                C3886j.this.f33177c.lazySet(null);
                C3886j.this.f33176b.clear();
            }
        }

        @Override
        public boolean isEmpty() {
            return C3886j.this.f33176b.isEmpty();
        }

        @Override
        public int m(int i10) {
            if ((i10 & 2) == 0) {
                return 0;
            }
            C3886j.this.f33185k = true;
            return 2;
        }

        @Override
        @Ce.g
        public T poll() throws Exception {
            return C3886j.this.f33176b.poll();
        }
    }

    public C3886j(int i10, boolean z10) {
        this.f33176b = new Re.c<>(He.b.h(i10, "capacityHint"));
        this.f33178d = new AtomicReference<>();
        this.f33179e = z10;
        this.f33177c = new AtomicReference<>();
        this.f33183i = new AtomicBoolean();
        this.f33184j = new a();
    }

    @Ce.f
    @Ce.d
    public static <T> C3886j<T> o8() {
        return new C3886j<>(B.V(), true);
    }

    @Ce.f
    @Ce.d
    public static <T> C3886j<T> p8(int i10) {
        return new C3886j<>(i10, true);
    }

    @Ce.f
    @Ce.d
    public static <T> C3886j<T> q8(int i10, Runnable runnable) {
        return new C3886j<>(i10, runnable, true);
    }

    @Ce.f
    @Ce.d
    public static <T> C3886j<T> r8(int i10, Runnable runnable, boolean z10) {
        return new C3886j<>(i10, runnable, z10);
    }

    @Ce.f
    @Ce.d
    public static <T> C3886j<T> s8(boolean z10) {
        return new C3886j<>(B.V(), z10);
    }

    @Override
    public void J5(I<? super T> i10) {
        if (this.f33183i.get() || !this.f33183i.compareAndSet(false, true)) {
            Ge.e.h(new IllegalStateException("Only a single observer allowed."), i10);
            return;
        }
        i10.e(this.f33184j);
        this.f33177c.lazySet(i10);
        if (this.f33180f) {
            this.f33177c.lazySet(null);
        } else {
            u8();
        }
    }

    @Override
    public void a() {
        if (this.f33181g || this.f33180f) {
            return;
        }
        this.f33181g = true;
        t8();
        u8();
    }

    @Override
    public void e(De.c cVar) {
        if (this.f33181g || this.f33180f) {
            cVar.dispose();
        }
    }

    @Override
    public void h(T t10) {
        He.b.g(t10, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f33181g || this.f33180f) {
            return;
        }
        this.f33176b.offer(t10);
        u8();
    }

    @Override
    @Ce.g
    public Throwable j8() {
        if (this.f33181g) {
            return this.f33182h;
        }
        return null;
    }

    @Override
    public boolean k8() {
        return this.f33181g && this.f33182h == null;
    }

    @Override
    public boolean l8() {
        return this.f33177c.get() != null;
    }

    @Override
    public boolean m8() {
        return this.f33181g && this.f33182h != null;
    }

    @Override
    public void onError(Throwable th2) {
        He.b.g(th2, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f33181g || this.f33180f) {
            Ye.a.Y(th2);
            return;
        }
        this.f33182h = th2;
        this.f33181g = true;
        t8();
        u8();
    }

    public void t8() {
        Runnable runnable = this.f33178d.get();
        if (runnable == null || !androidx.lifecycle.c.a(this.f33178d, runnable, null)) {
            return;
        }
        runnable.run();
    }

    public void u8() {
        if (this.f33184j.getAndIncrement() != 0) {
            return;
        }
        I<? super T> i10 = this.f33177c.get();
        int i11 = 1;
        while (i10 == null) {
            i11 = this.f33184j.addAndGet(-i11);
            if (i11 == 0) {
                return;
            } else {
                i10 = this.f33177c.get();
            }
        }
        if (this.f33185k) {
            v8(i10);
        } else {
            w8(i10);
        }
    }

    public void v8(I<? super T> i10) {
        Re.c<T> cVar = this.f33176b;
        boolean z10 = this.f33179e;
        int i11 = 1;
        while (!this.f33180f) {
            boolean z11 = this.f33181g;
            if (!z10 && z11 && y8(cVar, i10)) {
                return;
            }
            i10.h(null);
            if (z11) {
                x8(i10);
                return;
            } else {
                i11 = this.f33184j.addAndGet(-i11);
                if (i11 == 0) {
                    return;
                }
            }
        }
        this.f33177c.lazySet(null);
        cVar.clear();
    }

    public void w8(I<? super T> i10) {
        Re.c<T> cVar = this.f33176b;
        boolean z10 = this.f33179e;
        boolean z11 = true;
        int i11 = 1;
        while (!this.f33180f) {
            boolean z12 = this.f33181g;
            T poll = this.f33176b.poll();
            boolean z13 = poll == null;
            if (z12) {
                if (!z10 && z11) {
                    if (y8(cVar, i10)) {
                        return;
                    } else {
                        z11 = false;
                    }
                }
                if (z13) {
                    x8(i10);
                    return;
                }
            }
            if (z13) {
                i11 = this.f33184j.addAndGet(-i11);
                if (i11 == 0) {
                    return;
                }
            } else {
                i10.h(poll);
            }
        }
        this.f33177c.lazySet(null);
        cVar.clear();
    }

    public void x8(I<? super T> i10) {
        this.f33177c.lazySet(null);
        Throwable th2 = this.f33182h;
        if (th2 != null) {
            i10.onError(th2);
        } else {
            i10.a();
        }
    }

    public boolean y8(o<T> oVar, I<? super T> i10) {
        Throwable th2 = this.f33182h;
        if (th2 == null) {
            return false;
        }
        this.f33177c.lazySet(null);
        oVar.clear();
        i10.onError(th2);
        return true;
    }

    public C3886j(int i10, Runnable runnable) {
        this(i10, runnable, true);
    }

    public C3886j(int i10, Runnable runnable, boolean z10) {
        this.f33176b = new Re.c<>(He.b.h(i10, "capacityHint"));
        this.f33178d = new AtomicReference<>(He.b.g(runnable, "onTerminate"));
        this.f33179e = z10;
        this.f33177c = new AtomicReference<>();
        this.f33183i = new AtomicBoolean();
        this.f33184j = new a();
    }
}
