package Ne;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import Be.N;
import Be.Q;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class h<T, R> extends AbstractC2362l<R> {

    public final AbstractC2362l<T> f16022c;

    public final Fe.o<? super T, ? extends Q<? extends R>> f16023d;

    public final boolean f16024e;

    public static final class a<T, R> extends AtomicInteger implements InterfaceC2367q<T>, hn.d {

        public static final long f16025l = -5402190102429853762L;

        public static final C0451a<Object> f16026m = new C0451a<>(null);

        public final hn.c<? super R> f16027b;

        public final Fe.o<? super T, ? extends Q<? extends R>> f16028c;

        public final boolean f16029d;

        public final io.reactivex.internal.util.c f16030e = new io.reactivex.internal.util.c();

        public final AtomicLong f16031f = new AtomicLong();

        public final AtomicReference<C0451a<R>> f16032g = new AtomicReference<>();

        public hn.d f16033h;

        public volatile boolean f16034i;

        public volatile boolean f16035j;

        public long f16036k;

        public static final class C0451a<R> extends AtomicReference<De.c> implements N<R> {

            public static final long f16037d = 8042919737683345351L;

            public final a<?, R> f16038b;

            public volatile R f16039c;

            public C0451a(a<?, R> aVar) {
                this.f16038b = aVar;
            }

            public void a() {
                Ge.d.a(this);
            }

            @Override
            public void b(R r10) {
                this.f16039c = r10;
                this.f16038b.c();
            }

            @Override
            public void e(De.c cVar) {
                Ge.d.h(this, cVar);
            }

            @Override
            public void onError(Throwable th2) {
                this.f16038b.d(this, th2);
            }
        }

        public a(hn.c<? super R> cVar, Fe.o<? super T, ? extends Q<? extends R>> oVar, boolean z10) {
            this.f16027b = cVar;
            this.f16028c = oVar;
            this.f16029d = z10;
        }

        @Override
        public void a() {
            this.f16034i = true;
            c();
        }

        public void b() {
            AtomicReference<C0451a<R>> atomicReference = this.f16032g;
            C0451a<Object> c0451a = f16026m;
            C0451a<Object> c0451a2 = (C0451a) atomicReference.getAndSet(c0451a);
            if (c0451a2 == null || c0451a2 == c0451a) {
                return;
            }
            c0451a2.a();
        }

        public void c() {
            if (getAndIncrement() != 0) {
                return;
            }
            hn.c<? super R> cVar = this.f16027b;
            io.reactivex.internal.util.c cVar2 = this.f16030e;
            AtomicReference<C0451a<R>> atomicReference = this.f16032g;
            AtomicLong atomicLong = this.f16031f;
            long j10 = this.f16036k;
            int i10 = 1;
            while (!this.f16035j) {
                if (cVar2.get() != null && !this.f16029d) {
                    cVar.onError(cVar2.c());
                    return;
                }
                boolean z10 = this.f16034i;
                C0451a<R> c0451a = atomicReference.get();
                boolean z11 = c0451a == null;
                if (z10 && z11) {
                    Throwable c10 = cVar2.c();
                    if (c10 != null) {
                        cVar.onError(c10);
                        return;
                    } else {
                        cVar.a();
                        return;
                    }
                }
                if (z11 || c0451a.f16039c == null || j10 == atomicLong.get()) {
                    this.f16036k = j10;
                    i10 = addAndGet(-i10);
                    if (i10 == 0) {
                        return;
                    }
                } else {
                    androidx.lifecycle.c.a(atomicReference, c0451a, null);
                    cVar.h(c0451a.f16039c);
                    j10++;
                }
            }
        }

        @Override
        public void cancel() {
            this.f16035j = true;
            this.f16033h.cancel();
            b();
        }

        public void d(C0451a<R> c0451a, Throwable th2) {
            if (!androidx.lifecycle.c.a(this.f16032g, c0451a, null) || !this.f16030e.a(th2)) {
                Ye.a.Y(th2);
                return;
            }
            if (!this.f16029d) {
                this.f16033h.cancel();
                b();
            }
            c();
        }

        @Override
        public void h(T t10) {
            C0451a<R> c0451a;
            C0451a<R> c0451a2 = this.f16032g.get();
            if (c0451a2 != null) {
                c0451a2.a();
            }
            try {
                Q q10 = (Q) He.b.g(this.f16028c.apply(t10), "The mapper returned a null SingleSource");
                C0451a c0451a3 = new C0451a(this);
                do {
                    c0451a = this.f16032g.get();
                    if (c0451a == f16026m) {
                        return;
                    }
                } while (!androidx.lifecycle.c.a(this.f16032g, c0451a, c0451a3));
                q10.a(c0451a3);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f16033h.cancel();
                this.f16032g.getAndSet(f16026m);
                onError(th2);
            }
        }

        @Override
        public void i(long j10) {
            io.reactivex.internal.util.d.a(this.f16031f, j10);
            c();
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f16033h, dVar)) {
                this.f16033h = dVar;
                this.f16027b.j(this);
                dVar.i(Long.MAX_VALUE);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (!this.f16030e.a(th2)) {
                Ye.a.Y(th2);
                return;
            }
            if (!this.f16029d) {
                b();
            }
            this.f16034i = true;
            c();
        }
    }

    public h(AbstractC2362l<T> abstractC2362l, Fe.o<? super T, ? extends Q<? extends R>> oVar, boolean z10) {
        this.f16022c = abstractC2362l;
        this.f16023d = oVar;
        this.f16024e = z10;
    }

    @Override
    public void m6(hn.c<? super R> cVar) {
        this.f16022c.l6(new a(cVar, this.f16023d, this.f16024e));
    }
}
