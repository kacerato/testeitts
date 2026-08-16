package Oe;

import bf.C3886j;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class G1<T, B> extends AbstractC2859a<T, Be.B<T>> {

    public final Be.G<B> f18865c;

    public final int f18866d;

    public static final class a<T, B> extends We.e<B> {

        public final b<T, B> f18867c;

        public boolean f18868d;

        public a(b<T, B> bVar) {
            this.f18867c = bVar;
        }

        @Override
        public void a() {
            if (this.f18868d) {
                return;
            }
            this.f18868d = true;
            this.f18867c.c();
        }

        @Override
        public void h(B b10) {
            if (this.f18868d) {
                return;
            }
            this.f18867c.i();
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f18868d) {
                Ye.a.Y(th2);
            } else {
                this.f18868d = true;
                this.f18867c.f(th2);
            }
        }
    }

    public static final class b<T, B> extends AtomicInteger implements Be.I<T>, De.c, Runnable {

        public static final long f18869l = 2233020065421370272L;

        public static final Object f18870m = new Object();

        public final Be.I<? super Be.B<T>> f18871b;

        public final int f18872c;

        public final a<T, B> f18873d = new a<>(this);

        public final AtomicReference<De.c> f18874e = new AtomicReference<>();

        public final AtomicInteger f18875f = new AtomicInteger(1);

        public final Re.a<Object> f18876g = new Re.a<>();

        public final io.reactivex.internal.util.c f18877h = new io.reactivex.internal.util.c();

        public final AtomicBoolean f18878i = new AtomicBoolean();

        public volatile boolean f18879j;

        public C3886j<T> f18880k;

        public b(Be.I<? super Be.B<T>> i10, int i11) {
            this.f18871b = i10;
            this.f18872c = i11;
        }

        @Override
        public void a() {
            this.f18873d.dispose();
            this.f18879j = true;
            b();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            Be.I<? super Be.B<T>> i10 = this.f18871b;
            Re.a<Object> aVar = this.f18876g;
            io.reactivex.internal.util.c cVar = this.f18877h;
            int i11 = 1;
            while (this.f18875f.get() != 0) {
                C3886j<T> c3886j = this.f18880k;
                boolean z10 = this.f18879j;
                if (z10 && cVar.get() != null) {
                    aVar.clear();
                    Throwable c10 = cVar.c();
                    if (c3886j != 0) {
                        this.f18880k = null;
                        c3886j.onError(c10);
                    }
                    i10.onError(c10);
                    return;
                }
                Object poll = aVar.poll();
                boolean z11 = poll == null;
                if (z10 && z11) {
                    Throwable c11 = cVar.c();
                    if (c11 == null) {
                        if (c3886j != 0) {
                            this.f18880k = null;
                            c3886j.a();
                        }
                        i10.a();
                        return;
                    }
                    if (c3886j != 0) {
                        this.f18880k = null;
                        c3886j.onError(c11);
                    }
                    i10.onError(c11);
                    return;
                }
                if (z11) {
                    i11 = addAndGet(-i11);
                    if (i11 == 0) {
                        return;
                    }
                } else if (poll != f18870m) {
                    c3886j.h(poll);
                } else {
                    if (c3886j != 0) {
                        this.f18880k = null;
                        c3886j.a();
                    }
                    if (!this.f18878i.get()) {
                        C3886j<T> q82 = C3886j.q8(this.f18872c, this);
                        this.f18880k = q82;
                        this.f18875f.getAndIncrement();
                        i10.h(q82);
                    }
                }
            }
            aVar.clear();
            this.f18880k = null;
        }

        public void c() {
            Ge.d.a(this.f18874e);
            this.f18879j = true;
            b();
        }

        @Override
        public boolean d() {
            return this.f18878i.get();
        }

        @Override
        public void dispose() {
            if (this.f18878i.compareAndSet(false, true)) {
                this.f18873d.dispose();
                if (this.f18875f.decrementAndGet() == 0) {
                    Ge.d.a(this.f18874e);
                }
            }
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.h(this.f18874e, cVar)) {
                i();
            }
        }

        public void f(Throwable th2) {
            Ge.d.a(this.f18874e);
            if (!this.f18877h.a(th2)) {
                Ye.a.Y(th2);
            } else {
                this.f18879j = true;
                b();
            }
        }

        @Override
        public void h(T t10) {
            this.f18876g.offer(t10);
            b();
        }

        public void i() {
            this.f18876g.offer(f18870m);
            b();
        }

        @Override
        public void onError(Throwable th2) {
            this.f18873d.dispose();
            if (!this.f18877h.a(th2)) {
                Ye.a.Y(th2);
            } else {
                this.f18879j = true;
                b();
            }
        }

        @Override
        public void run() {
            if (this.f18875f.decrementAndGet() == 0) {
                Ge.d.a(this.f18874e);
            }
        }
    }

    public G1(Be.G<T> g10, Be.G<B> g11, int i10) {
        super(g10);
        this.f18865c = g11;
        this.f18866d = i10;
    }

    @Override
    public void J5(Be.I<? super Be.B<T>> i10) {
        b bVar = new b(i10, this.f18866d);
        i10.e(bVar);
        this.f18865c.c(bVar.f18873d);
        this.f19344b.c(bVar);
    }
}
