package Ze;

import Be.AbstractC2362l;
import Ue.j;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class h<T> extends c<T> {

    public final Re.c<T> f31208c;

    public final AtomicReference<Runnable> f31209d;

    public final boolean f31210e;

    public volatile boolean f31211f;

    public Throwable f31212g;

    public final AtomicReference<hn.c<? super T>> f31213h;

    public volatile boolean f31214i;

    public final AtomicBoolean f31215j;

    public final Ue.c<T> f31216k;

    public final AtomicLong f31217l;

    public boolean f31218m;

    public final class a extends Ue.c<T> {

        public static final long f31219d = -4896760517184205454L;

        public a() {
        }

        @Override
        public void cancel() {
            if (h.this.f31214i) {
                return;
            }
            h.this.f31214i = true;
            h.this.Z8();
            h hVar = h.this;
            if (hVar.f31218m || hVar.f31216k.getAndIncrement() != 0) {
                return;
            }
            h.this.f31208c.clear();
            h.this.f31213h.lazySet(null);
        }

        @Override
        public void clear() {
            h.this.f31208c.clear();
        }

        @Override
        public void i(long j10) {
            if (j.m(j10)) {
                io.reactivex.internal.util.d.a(h.this.f31217l, j10);
                h.this.a9();
            }
        }

        @Override
        public boolean isEmpty() {
            return h.this.f31208c.isEmpty();
        }

        @Override
        public int m(int i10) {
            if ((i10 & 2) == 0) {
                return 0;
            }
            h.this.f31218m = true;
            return 2;
        }

        @Override
        @Ce.g
        public T poll() {
            return h.this.f31208c.poll();
        }
    }

    public h(int i10) {
        this(i10, null, true);
    }

    @Ce.f
    @Ce.d
    public static <T> h<T> U8() {
        return new h<>(AbstractC2362l.a0());
    }

    @Ce.f
    @Ce.d
    public static <T> h<T> V8(int i10) {
        return new h<>(i10);
    }

    @Ce.f
    @Ce.d
    public static <T> h<T> W8(int i10, Runnable runnable) {
        He.b.g(runnable, "onTerminate");
        return new h<>(i10, runnable);
    }

    @Ce.f
    @Ce.d
    public static <T> h<T> X8(int i10, Runnable runnable, boolean z10) {
        He.b.g(runnable, "onTerminate");
        return new h<>(i10, runnable, z10);
    }

    @Ce.f
    @Ce.d
    public static <T> h<T> Y8(boolean z10) {
        return new h<>(AbstractC2362l.a0(), null, z10);
    }

    @Override
    @Ce.g
    public Throwable O8() {
        if (this.f31211f) {
            return this.f31212g;
        }
        return null;
    }

    @Override
    public boolean P8() {
        return this.f31211f && this.f31212g == null;
    }

    @Override
    public boolean Q8() {
        return this.f31213h.get() != null;
    }

    @Override
    public boolean R8() {
        return this.f31211f && this.f31212g != null;
    }

    public boolean T8(boolean z10, boolean z11, boolean z12, hn.c<? super T> cVar, Re.c<T> cVar2) {
        if (this.f31214i) {
            cVar2.clear();
            this.f31213h.lazySet(null);
            return true;
        }
        if (!z11) {
            return false;
        }
        if (z10 && this.f31212g != null) {
            cVar2.clear();
            this.f31213h.lazySet(null);
            cVar.onError(this.f31212g);
            return true;
        }
        if (!z12) {
            return false;
        }
        Throwable th2 = this.f31212g;
        this.f31213h.lazySet(null);
        if (th2 != null) {
            cVar.onError(th2);
        } else {
            cVar.a();
        }
        return true;
    }

    public void Z8() {
        Runnable andSet = this.f31209d.getAndSet(null);
        if (andSet != null) {
            andSet.run();
        }
    }

    @Override
    public void a() {
        if (this.f31211f || this.f31214i) {
            return;
        }
        this.f31211f = true;
        Z8();
        a9();
    }

    public void a9() {
        if (this.f31216k.getAndIncrement() != 0) {
            return;
        }
        hn.c<? super T> cVar = this.f31213h.get();
        int i10 = 1;
        while (cVar == null) {
            i10 = this.f31216k.addAndGet(-i10);
            if (i10 == 0) {
                return;
            } else {
                cVar = this.f31213h.get();
            }
        }
        if (this.f31218m) {
            b9(cVar);
        } else {
            c9(cVar);
        }
    }

    public void b9(hn.c<? super T> cVar) {
        Re.c<T> cVar2 = this.f31208c;
        boolean z10 = this.f31210e;
        int i10 = 1;
        while (!this.f31214i) {
            boolean z11 = this.f31211f;
            if (!z10 && z11 && this.f31212g != null) {
                cVar2.clear();
                this.f31213h.lazySet(null);
                cVar.onError(this.f31212g);
                return;
            }
            cVar.h(null);
            if (z11) {
                this.f31213h.lazySet(null);
                Throwable th2 = this.f31212g;
                if (th2 != null) {
                    cVar.onError(th2);
                    return;
                } else {
                    cVar.a();
                    return;
                }
            }
            i10 = this.f31216k.addAndGet(-i10);
            if (i10 == 0) {
                return;
            }
        }
        cVar2.clear();
        this.f31213h.lazySet(null);
    }

    public void c9(hn.c<? super T> cVar) {
        long j10;
        Re.c<T> cVar2 = this.f31208c;
        boolean z10 = true;
        boolean z11 = !this.f31210e;
        int i10 = 1;
        while (true) {
            long j11 = this.f31217l.get();
            long j12 = 0;
            while (true) {
                if (j11 == j12) {
                    j10 = j12;
                    break;
                }
                boolean z12 = this.f31211f;
                T poll = cVar2.poll();
                boolean z13 = poll == null ? z10 : false;
                j10 = j12;
                if (T8(z11, z12, z13, cVar, cVar2)) {
                    return;
                }
                if (z13) {
                    break;
                }
                cVar.h(poll);
                j12 = 1 + j10;
                z10 = true;
            }
            if (j11 == j12 && T8(z11, this.f31211f, cVar2.isEmpty(), cVar, cVar2)) {
                return;
            }
            if (j10 != 0 && j11 != Long.MAX_VALUE) {
                this.f31217l.addAndGet(-j10);
            }
            i10 = this.f31216k.addAndGet(-i10);
            if (i10 == 0) {
                return;
            } else {
                z10 = true;
            }
        }
    }

    @Override
    public void h(T t10) {
        He.b.g(t10, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f31211f || this.f31214i) {
            return;
        }
        this.f31208c.offer(t10);
        a9();
    }

    @Override
    public void j(hn.d dVar) {
        if (this.f31211f || this.f31214i) {
            dVar.cancel();
        } else {
            dVar.i(Long.MAX_VALUE);
        }
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        if (this.f31215j.get() || !this.f31215j.compareAndSet(false, true)) {
            Ue.g.b(new IllegalStateException("This processor allows only a single Subscriber"), cVar);
            return;
        }
        cVar.j(this.f31216k);
        this.f31213h.set(cVar);
        if (this.f31214i) {
            this.f31213h.lazySet(null);
        } else {
            a9();
        }
    }

    @Override
    public void onError(Throwable th2) {
        He.b.g(th2, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f31211f || this.f31214i) {
            Ye.a.Y(th2);
            return;
        }
        this.f31212g = th2;
        this.f31211f = true;
        Z8();
        a9();
    }

    public h(int i10, Runnable runnable) {
        this(i10, runnable, true);
    }

    public h(int i10, Runnable runnable, boolean z10) {
        this.f31208c = new Re.c<>(He.b.h(i10, "capacityHint"));
        this.f31209d = new AtomicReference<>(runnable);
        this.f31210e = z10;
        this.f31213h = new AtomicReference<>();
        this.f31215j = new AtomicBoolean();
        this.f31216k = new a();
        this.f31217l = new AtomicLong();
    }
}
