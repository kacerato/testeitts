package Ne;

import Be.B;
import Be.I;
import Be.N;
import Be.Q;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class q<T, R> extends B<R> {

    public final B<T> f16143b;

    public final Fe.o<? super T, ? extends Q<? extends R>> f16144c;

    public final boolean f16145d;

    public static final class a<T, R> extends AtomicInteger implements I<T>, De.c {

        public static final long f16146j = -5402190102429853762L;

        public static final C0457a<Object> f16147k = new C0457a<>(null);

        public final I<? super R> f16148b;

        public final Fe.o<? super T, ? extends Q<? extends R>> f16149c;

        public final boolean f16150d;

        public final io.reactivex.internal.util.c f16151e = new io.reactivex.internal.util.c();

        public final AtomicReference<C0457a<R>> f16152f = new AtomicReference<>();

        public De.c f16153g;

        public volatile boolean f16154h;

        public volatile boolean f16155i;

        public static final class C0457a<R> extends AtomicReference<De.c> implements N<R> {

            public static final long f16156d = 8042919737683345351L;

            public final a<?, R> f16157b;

            public volatile R f16158c;

            public C0457a(a<?, R> aVar) {
                this.f16157b = aVar;
            }

            public void a() {
                Ge.d.a(this);
            }

            @Override
            public void b(R r10) {
                this.f16158c = r10;
                this.f16157b.c();
            }

            @Override
            public void e(De.c cVar) {
                Ge.d.h(this, cVar);
            }

            @Override
            public void onError(Throwable th2) {
                this.f16157b.f(this, th2);
            }
        }

        public a(I<? super R> i10, Fe.o<? super T, ? extends Q<? extends R>> oVar, boolean z10) {
            this.f16148b = i10;
            this.f16149c = oVar;
            this.f16150d = z10;
        }

        @Override
        public void a() {
            this.f16154h = true;
            c();
        }

        public void b() {
            AtomicReference<C0457a<R>> atomicReference = this.f16152f;
            C0457a<Object> c0457a = f16147k;
            C0457a<Object> c0457a2 = (C0457a) atomicReference.getAndSet(c0457a);
            if (c0457a2 == null || c0457a2 == c0457a) {
                return;
            }
            c0457a2.a();
        }

        public void c() {
            if (getAndIncrement() != 0) {
                return;
            }
            I<? super R> i10 = this.f16148b;
            io.reactivex.internal.util.c cVar = this.f16151e;
            AtomicReference<C0457a<R>> atomicReference = this.f16152f;
            int i11 = 1;
            while (!this.f16155i) {
                if (cVar.get() != null && !this.f16150d) {
                    i10.onError(cVar.c());
                    return;
                }
                boolean z10 = this.f16154h;
                C0457a<R> c0457a = atomicReference.get();
                boolean z11 = c0457a == null;
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
                if (z11 || c0457a.f16158c == null) {
                    i11 = addAndGet(-i11);
                    if (i11 == 0) {
                        return;
                    }
                } else {
                    androidx.lifecycle.c.a(atomicReference, c0457a, null);
                    i10.h(c0457a.f16158c);
                }
            }
        }

        @Override
        public boolean d() {
            return this.f16155i;
        }

        @Override
        public void dispose() {
            this.f16155i = true;
            this.f16153g.dispose();
            b();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f16153g, cVar)) {
                this.f16153g = cVar;
                this.f16148b.e(this);
            }
        }

        public void f(C0457a<R> c0457a, Throwable th2) {
            if (!androidx.lifecycle.c.a(this.f16152f, c0457a, null) || !this.f16151e.a(th2)) {
                Ye.a.Y(th2);
                return;
            }
            if (!this.f16150d) {
                this.f16153g.dispose();
                b();
            }
            c();
        }

        @Override
        public void h(T t10) {
            C0457a<R> c0457a;
            C0457a<R> c0457a2 = this.f16152f.get();
            if (c0457a2 != null) {
                c0457a2.a();
            }
            try {
                Q q10 = (Q) He.b.g(this.f16149c.apply(t10), "The mapper returned a null SingleSource");
                C0457a c0457a3 = new C0457a(this);
                do {
                    c0457a = this.f16152f.get();
                    if (c0457a == f16147k) {
                        return;
                    }
                } while (!androidx.lifecycle.c.a(this.f16152f, c0457a, c0457a3));
                q10.a(c0457a3);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f16153g.dispose();
                this.f16152f.getAndSet(f16147k);
                onError(th2);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (!this.f16151e.a(th2)) {
                Ye.a.Y(th2);
                return;
            }
            if (!this.f16150d) {
                b();
            }
            this.f16154h = true;
            c();
        }
    }

    public q(B<T> b10, Fe.o<? super T, ? extends Q<? extends R>> oVar, boolean z10) {
        this.f16143b = b10;
        this.f16144c = oVar;
        this.f16145d = z10;
    }

    @Override
    public void J5(I<? super R> i10) {
        if (r.c(this.f16143b, this.f16144c, i10)) {
            return;
        }
        this.f16143b.c(new a(i10, this.f16144c, this.f16145d));
    }
}
