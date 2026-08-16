package Ne;

import Be.B;
import Be.I;
import Be.v;
import Be.y;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class p<T, R> extends B<R> {

    public final B<T> f16127b;

    public final Fe.o<? super T, ? extends y<? extends R>> f16128c;

    public final boolean f16129d;

    public static final class a<T, R> extends AtomicInteger implements I<T>, De.c {

        public static final long f16130j = -5402190102429853762L;

        public static final C0456a<Object> f16131k = new C0456a<>(null);

        public final I<? super R> f16132b;

        public final Fe.o<? super T, ? extends y<? extends R>> f16133c;

        public final boolean f16134d;

        public final io.reactivex.internal.util.c f16135e = new io.reactivex.internal.util.c();

        public final AtomicReference<C0456a<R>> f16136f = new AtomicReference<>();

        public De.c f16137g;

        public volatile boolean f16138h;

        public volatile boolean f16139i;

        public static final class C0456a<R> extends AtomicReference<De.c> implements v<R> {

            public static final long f16140d = 8042919737683345351L;

            public final a<?, R> f16141b;

            public volatile R f16142c;

            public C0456a(a<?, R> aVar) {
                this.f16141b = aVar;
            }

            @Override
            public void a() {
                this.f16141b.f(this);
            }

            @Override
            public void b(R r10) {
                this.f16142c = r10;
                this.f16141b.c();
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
                this.f16141b.g(this, th2);
            }
        }

        public a(I<? super R> i10, Fe.o<? super T, ? extends y<? extends R>> oVar, boolean z10) {
            this.f16132b = i10;
            this.f16133c = oVar;
            this.f16134d = z10;
        }

        @Override
        public void a() {
            this.f16138h = true;
            c();
        }

        public void b() {
            AtomicReference<C0456a<R>> atomicReference = this.f16136f;
            C0456a<Object> c0456a = f16131k;
            C0456a<Object> c0456a2 = (C0456a) atomicReference.getAndSet(c0456a);
            if (c0456a2 == null || c0456a2 == c0456a) {
                return;
            }
            c0456a2.c();
        }

        public void c() {
            if (getAndIncrement() != 0) {
                return;
            }
            I<? super R> i10 = this.f16132b;
            io.reactivex.internal.util.c cVar = this.f16135e;
            AtomicReference<C0456a<R>> atomicReference = this.f16136f;
            int i11 = 1;
            while (!this.f16139i) {
                if (cVar.get() != null && !this.f16134d) {
                    i10.onError(cVar.c());
                    return;
                }
                boolean z10 = this.f16138h;
                C0456a<R> c0456a = atomicReference.get();
                boolean z11 = c0456a == null;
                if (z10 && z11) {
                    Throwable c10 = cVar.c();
                    if (c10 != null) {
                        i10.onError(c10);
                        return;
                    } else {
                        i10.a();
                        return;
                    }
                }
                if (z11 || c0456a.f16142c == null) {
                    i11 = addAndGet(-i11);
                    if (i11 == 0) {
                        return;
                    }
                } else {
                    androidx.lifecycle.c.a(atomicReference, c0456a, null);
                    i10.h(c0456a.f16142c);
                }
            }
        }

        @Override
        public boolean d() {
            return this.f16139i;
        }

        @Override
        public void dispose() {
            this.f16139i = true;
            this.f16137g.dispose();
            b();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f16137g, cVar)) {
                this.f16137g = cVar;
                this.f16132b.e(this);
            }
        }

        public void f(C0456a<R> c0456a) {
            if (androidx.lifecycle.c.a(this.f16136f, c0456a, null)) {
                c();
            }
        }

        public void g(C0456a<R> c0456a, Throwable th2) {
            if (!androidx.lifecycle.c.a(this.f16136f, c0456a, null) || !this.f16135e.a(th2)) {
                Ye.a.Y(th2);
                return;
            }
            if (!this.f16134d) {
                this.f16137g.dispose();
                b();
            }
            c();
        }

        @Override
        public void h(T t10) {
            C0456a<R> c0456a;
            C0456a<R> c0456a2 = this.f16136f.get();
            if (c0456a2 != null) {
                c0456a2.c();
            }
            try {
                y yVar = (y) He.b.g(this.f16133c.apply(t10), "The mapper returned a null MaybeSource");
                C0456a c0456a3 = new C0456a(this);
                do {
                    c0456a = this.f16136f.get();
                    if (c0456a == f16131k) {
                        return;
                    }
                } while (!androidx.lifecycle.c.a(this.f16136f, c0456a, c0456a3));
                yVar.d(c0456a3);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f16137g.dispose();
                this.f16136f.getAndSet(f16131k);
                onError(th2);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (!this.f16135e.a(th2)) {
                Ye.a.Y(th2);
                return;
            }
            if (!this.f16134d) {
                b();
            }
            this.f16138h = true;
            c();
        }
    }

    public p(B<T> b10, Fe.o<? super T, ? extends y<? extends R>> oVar, boolean z10) {
        this.f16127b = b10;
        this.f16128c = oVar;
        this.f16129d = z10;
    }

    @Override
    public void J5(I<? super R> i10) {
        if (r.b(this.f16127b, this.f16128c, i10)) {
            return;
        }
        this.f16127b.c(new a(i10, this.f16128c, this.f16129d));
    }
}
