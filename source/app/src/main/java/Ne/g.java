package Ne;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import Be.v;
import Be.y;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class g<T, R> extends AbstractC2362l<R> {

    public final AbstractC2362l<T> f16004c;

    public final Fe.o<? super T, ? extends y<? extends R>> f16005d;

    public final boolean f16006e;

    public static final class a<T, R> extends AtomicInteger implements InterfaceC2367q<T>, hn.d {

        public static final long f16007l = -5402190102429853762L;

        public static final C0450a<Object> f16008m = new C0450a<>(null);

        public final hn.c<? super R> f16009b;

        public final Fe.o<? super T, ? extends y<? extends R>> f16010c;

        public final boolean f16011d;

        public final io.reactivex.internal.util.c f16012e = new io.reactivex.internal.util.c();

        public final AtomicLong f16013f = new AtomicLong();

        public final AtomicReference<C0450a<R>> f16014g = new AtomicReference<>();

        public hn.d f16015h;

        public volatile boolean f16016i;

        public volatile boolean f16017j;

        public long f16018k;

        public static final class C0450a<R> extends AtomicReference<De.c> implements v<R> {

            public static final long f16019d = 8042919737683345351L;

            public final a<?, R> f16020b;

            public volatile R f16021c;

            public C0450a(a<?, R> aVar) {
                this.f16020b = aVar;
            }

            @Override
            public void a() {
                this.f16020b.d(this);
            }

            @Override
            public void b(R r10) {
                this.f16021c = r10;
                this.f16020b.c();
            }

            public void c() {
                Ge.d.a(this);
            }

            @Override
            public void e(De.c cVar) {
                Ge.d.h(this, cVar);
            }

            @Override
            public void onError(Throwable th2) {
                this.f16020b.e(this, th2);
            }
        }

        public a(hn.c<? super R> cVar, Fe.o<? super T, ? extends y<? extends R>> oVar, boolean z10) {
            this.f16009b = cVar;
            this.f16010c = oVar;
            this.f16011d = z10;
        }

        @Override
        public void a() {
            this.f16016i = true;
            c();
        }

        public void b() {
            AtomicReference<C0450a<R>> atomicReference = this.f16014g;
            C0450a<Object> c0450a = f16008m;
            C0450a<Object> c0450a2 = (C0450a) atomicReference.getAndSet(c0450a);
            if (c0450a2 == null || c0450a2 == c0450a) {
                return;
            }
            c0450a2.c();
        }

        public void c() {
            if (getAndIncrement() != 0) {
                return;
            }
            hn.c<? super R> cVar = this.f16009b;
            io.reactivex.internal.util.c cVar2 = this.f16012e;
            AtomicReference<C0450a<R>> atomicReference = this.f16014g;
            AtomicLong atomicLong = this.f16013f;
            long j10 = this.f16018k;
            int i10 = 1;
            while (!this.f16017j) {
                if (cVar2.get() != null && !this.f16011d) {
                    cVar.onError(cVar2.c());
                    return;
                }
                boolean z10 = this.f16016i;
                C0450a<R> c0450a = atomicReference.get();
                boolean z11 = c0450a == null;
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
                if (z11 || c0450a.f16021c == null || j10 == atomicLong.get()) {
                    this.f16018k = j10;
                    i10 = addAndGet(-i10);
                    if (i10 == 0) {
                        return;
                    }
                } else {
                    androidx.lifecycle.c.a(atomicReference, c0450a, null);
                    cVar.h(c0450a.f16021c);
                    j10++;
                }
            }
        }

        @Override
        public void cancel() {
            this.f16017j = true;
            this.f16015h.cancel();
            b();
        }

        public void d(C0450a<R> c0450a) {
            if (androidx.lifecycle.c.a(this.f16014g, c0450a, null)) {
                c();
            }
        }

        public void e(C0450a<R> c0450a, Throwable th2) {
            if (!androidx.lifecycle.c.a(this.f16014g, c0450a, null) || !this.f16012e.a(th2)) {
                Ye.a.Y(th2);
                return;
            }
            if (!this.f16011d) {
                this.f16015h.cancel();
                b();
            }
            c();
        }

        @Override
        public void h(T t10) {
            C0450a<R> c0450a;
            C0450a<R> c0450a2 = this.f16014g.get();
            if (c0450a2 != null) {
                c0450a2.c();
            }
            try {
                y yVar = (y) He.b.g(this.f16010c.apply(t10), "The mapper returned a null MaybeSource");
                C0450a c0450a3 = new C0450a(this);
                do {
                    c0450a = this.f16014g.get();
                    if (c0450a == f16008m) {
                        return;
                    }
                } while (!androidx.lifecycle.c.a(this.f16014g, c0450a, c0450a3));
                yVar.d(c0450a3);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f16015h.cancel();
                this.f16014g.getAndSet(f16008m);
                onError(th2);
            }
        }

        @Override
        public void i(long j10) {
            io.reactivex.internal.util.d.a(this.f16013f, j10);
            c();
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f16015h, dVar)) {
                this.f16015h = dVar;
                this.f16009b.j(this);
                dVar.i(Long.MAX_VALUE);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (!this.f16012e.a(th2)) {
                Ye.a.Y(th2);
                return;
            }
            if (!this.f16011d) {
                b();
            }
            this.f16016i = true;
            c();
        }
    }

    public g(AbstractC2362l<T> abstractC2362l, Fe.o<? super T, ? extends y<? extends R>> oVar, boolean z10) {
        this.f16004c = abstractC2362l;
        this.f16005d = oVar;
        this.f16006e = z10;
    }

    @Override
    public void m6(hn.c<? super R> cVar) {
        this.f16004c.l6(new a(cVar, this.f16005d, this.f16006e));
    }
}
