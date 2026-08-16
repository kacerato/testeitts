package Ne;

import Be.B;
import Be.I;
import Be.N;
import Be.Q;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class n<T, R> extends B<R> {

    public final B<T> f16093b;

    public final Fe.o<? super T, ? extends Q<? extends R>> f16094c;

    public final io.reactivex.internal.util.j f16095d;

    public final int f16096e;

    public static final class a<T, R> extends AtomicInteger implements I<T>, De.c {

        public static final long f16097m = -9140123220065488293L;

        public static final int f16098n = 0;

        public static final int f16099o = 1;

        public static final int f16100p = 2;

        public final I<? super R> f16101b;

        public final Fe.o<? super T, ? extends Q<? extends R>> f16102c;

        public final io.reactivex.internal.util.c f16103d = new io.reactivex.internal.util.c();

        public final C0454a<R> f16104e = new C0454a<>(this);

        public final Ie.n<T> f16105f;

        public final io.reactivex.internal.util.j f16106g;

        public De.c f16107h;

        public volatile boolean f16108i;

        public volatile boolean f16109j;

        public R f16110k;

        public volatile int f16111l;

        public static final class C0454a<R> extends AtomicReference<De.c> implements N<R> {

            public static final long f16112c = -3051469169682093892L;

            public final a<?, R> f16113b;

            public C0454a(a<?, R> aVar) {
                this.f16113b = aVar;
            }

            public void a() {
                Ge.d.a(this);
            }

            @Override
            public void b(R r10) {
                this.f16113b.f(r10);
            }

            @Override
            public void e(De.c cVar) {
                Ge.d.c(this, cVar);
            }

            @Override
            public void onError(Throwable th2) {
                this.f16113b.c(th2);
            }
        }

        public a(I<? super R> i10, Fe.o<? super T, ? extends Q<? extends R>> oVar, int i11, io.reactivex.internal.util.j jVar) {
            this.f16101b = i10;
            this.f16102c = oVar;
            this.f16106g = jVar;
            this.f16105f = new Re.c(i11);
        }

        @Override
        public void a() {
            this.f16108i = true;
            b();
        }

        public void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            I<? super R> i10 = this.f16101b;
            io.reactivex.internal.util.j jVar = this.f16106g;
            Ie.n<T> nVar = this.f16105f;
            io.reactivex.internal.util.c cVar = this.f16103d;
            int i11 = 1;
            while (true) {
                if (this.f16109j) {
                    nVar.clear();
                    this.f16110k = null;
                } else {
                    int i12 = this.f16111l;
                    if (cVar.get() == null || (jVar != io.reactivex.internal.util.j.IMMEDIATE && (jVar != io.reactivex.internal.util.j.BOUNDARY || i12 != 0))) {
                        if (i12 == 0) {
                            boolean z10 = this.f16108i;
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
                                    Q q10 = (Q) He.b.g(this.f16102c.apply(poll), "The mapper returned a null SingleSource");
                                    this.f16111l = 1;
                                    q10.a(this.f16104e);
                                } catch (Throwable th2) {
                                    io.reactivex.exceptions.a.b(th2);
                                    this.f16107h.dispose();
                                    nVar.clear();
                                    cVar.a(th2);
                                    i10.onError(cVar.c());
                                    return;
                                }
                            }
                        } else if (i12 == 2) {
                            R r10 = this.f16110k;
                            this.f16110k = null;
                            i10.h(r10);
                            this.f16111l = 0;
                        }
                    }
                }
                i11 = addAndGet(-i11);
                if (i11 == 0) {
                    return;
                }
            }
            nVar.clear();
            this.f16110k = null;
            i10.onError(cVar.c());
        }

        public void c(Throwable th2) {
            if (!this.f16103d.a(th2)) {
                Ye.a.Y(th2);
                return;
            }
            if (this.f16106g != io.reactivex.internal.util.j.END) {
                this.f16107h.dispose();
            }
            this.f16111l = 0;
            b();
        }

        @Override
        public boolean d() {
            return this.f16109j;
        }

        @Override
        public void dispose() {
            this.f16109j = true;
            this.f16107h.dispose();
            this.f16104e.a();
            if (getAndIncrement() == 0) {
                this.f16105f.clear();
                this.f16110k = null;
            }
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f16107h, cVar)) {
                this.f16107h = cVar;
                this.f16101b.e(this);
            }
        }

        public void f(R r10) {
            this.f16110k = r10;
            this.f16111l = 2;
            b();
        }

        @Override
        public void h(T t10) {
            this.f16105f.offer(t10);
            b();
        }

        @Override
        public void onError(Throwable th2) {
            if (!this.f16103d.a(th2)) {
                Ye.a.Y(th2);
                return;
            }
            if (this.f16106g == io.reactivex.internal.util.j.IMMEDIATE) {
                this.f16104e.a();
            }
            this.f16108i = true;
            b();
        }
    }

    public n(B<T> b10, Fe.o<? super T, ? extends Q<? extends R>> oVar, io.reactivex.internal.util.j jVar, int i10) {
        this.f16093b = b10;
        this.f16094c = oVar;
        this.f16095d = jVar;
        this.f16096e = i10;
    }

    @Override
    public void J5(I<? super R> i10) {
        if (r.c(this.f16093b, this.f16094c, i10)) {
            return;
        }
        this.f16093b.c(new a(i10, this.f16094c, this.f16096e, this.f16095d));
    }
}
