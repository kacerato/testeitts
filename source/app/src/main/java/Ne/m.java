package Ne;

import Be.B;
import Be.I;
import Be.v;
import Be.y;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class m<T, R> extends B<R> {

    public final B<T> f16072b;

    public final Fe.o<? super T, ? extends y<? extends R>> f16073c;

    public final io.reactivex.internal.util.j f16074d;

    public final int f16075e;

    public static final class a<T, R> extends AtomicInteger implements I<T>, De.c {

        public static final long f16076m = -9140123220065488293L;

        public static final int f16077n = 0;

        public static final int f16078o = 1;

        public static final int f16079p = 2;

        public final I<? super R> f16080b;

        public final Fe.o<? super T, ? extends y<? extends R>> f16081c;

        public final io.reactivex.internal.util.c f16082d = new io.reactivex.internal.util.c();

        public final C0453a<R> f16083e = new C0453a<>(this);

        public final Ie.n<T> f16084f;

        public final io.reactivex.internal.util.j f16085g;

        public De.c f16086h;

        public volatile boolean f16087i;

        public volatile boolean f16088j;

        public R f16089k;

        public volatile int f16090l;

        public static final class C0453a<R> extends AtomicReference<De.c> implements v<R> {

            public static final long f16091c = -3051469169682093892L;

            public final a<?, R> f16092b;

            public C0453a(a<?, R> aVar) {
                this.f16092b = aVar;
            }

            @Override
            public void a() {
                this.f16092b.c();
            }

            @Override
            public void b(R r10) {
                this.f16092b.g(r10);
            }

            public void c() {
                Ge.d.a(this);
            }

            @Override
            public void e(De.c cVar) {
                Ge.d.c(this, cVar);
            }

            @Override
            public void onError(Throwable th2) {
                this.f16092b.f(th2);
            }
        }

        public a(I<? super R> i10, Fe.o<? super T, ? extends y<? extends R>> oVar, int i11, io.reactivex.internal.util.j jVar) {
            this.f16080b = i10;
            this.f16081c = oVar;
            this.f16085g = jVar;
            this.f16084f = new Re.c(i11);
        }

        @Override
        public void a() {
            this.f16087i = true;
            b();
        }

        public void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            I<? super R> i10 = this.f16080b;
            io.reactivex.internal.util.j jVar = this.f16085g;
            Ie.n<T> nVar = this.f16084f;
            io.reactivex.internal.util.c cVar = this.f16082d;
            int i11 = 1;
            while (true) {
                if (this.f16088j) {
                    nVar.clear();
                    this.f16089k = null;
                } else {
                    int i12 = this.f16090l;
                    if (cVar.get() == null || (jVar != io.reactivex.internal.util.j.IMMEDIATE && (jVar != io.reactivex.internal.util.j.BOUNDARY || i12 != 0))) {
                        if (i12 == 0) {
                            boolean z10 = this.f16087i;
                            T poll = nVar.poll();
                            boolean z11 = poll == null;
                            if (z10 && z11) {
                                Throwable c10 = cVar.c();
                                if (c10 == null) {
                                    i10.a();
                                    return;
                                } else {
                                    i10.onError(c10);
                                    return;
                                }
                            }
                            if (!z11) {
                                try {
                                    y yVar = (y) He.b.g(this.f16081c.apply(poll), "The mapper returned a null MaybeSource");
                                    this.f16090l = 1;
                                    yVar.d(this.f16083e);
                                } catch (Throwable th2) {
                                    io.reactivex.exceptions.a.b(th2);
                                    this.f16086h.dispose();
                                    nVar.clear();
                                    cVar.a(th2);
                                    i10.onError(cVar.c());
                                    return;
                                }
                            }
                        } else if (i12 == 2) {
                            R r10 = this.f16089k;
                            this.f16089k = null;
                            i10.h(r10);
                            this.f16090l = 0;
                        }
                    }
                }
                i11 = addAndGet(-i11);
                if (i11 == 0) {
                    return;
                }
            }
            nVar.clear();
            this.f16089k = null;
            i10.onError(cVar.c());
        }

        public void c() {
            this.f16090l = 0;
            b();
        }

        @Override
        public boolean d() {
            return this.f16088j;
        }

        @Override
        public void dispose() {
            this.f16088j = true;
            this.f16086h.dispose();
            this.f16083e.c();
            if (getAndIncrement() == 0) {
                this.f16084f.clear();
                this.f16089k = null;
            }
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f16086h, cVar)) {
                this.f16086h = cVar;
                this.f16080b.e(this);
            }
        }

        public void f(Throwable th2) {
            if (!this.f16082d.a(th2)) {
                Ye.a.Y(th2);
                return;
            }
            if (this.f16085g != io.reactivex.internal.util.j.END) {
                this.f16086h.dispose();
            }
            this.f16090l = 0;
            b();
        }

        public void g(R r10) {
            this.f16089k = r10;
            this.f16090l = 2;
            b();
        }

        @Override
        public void h(T t10) {
            this.f16084f.offer(t10);
            b();
        }

        @Override
        public void onError(Throwable th2) {
            if (!this.f16082d.a(th2)) {
                Ye.a.Y(th2);
                return;
            }
            if (this.f16085g == io.reactivex.internal.util.j.IMMEDIATE) {
                this.f16083e.c();
            }
            this.f16087i = true;
            b();
        }
    }

    public m(B<T> b10, Fe.o<? super T, ? extends y<? extends R>> oVar, io.reactivex.internal.util.j jVar, int i10) {
        this.f16072b = b10;
        this.f16073c = oVar;
        this.f16074d = jVar;
        this.f16075e = i10;
    }

    @Override
    public void J5(I<? super R> i10) {
        if (r.b(this.f16072b, this.f16073c, i10)) {
            return;
        }
        this.f16072b.c(new a(i10, this.f16073c, this.f16075e, this.f16074d));
    }
}
