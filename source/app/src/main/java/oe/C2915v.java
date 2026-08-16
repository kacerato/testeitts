package Oe;

import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class C2915v<T, U> extends AbstractC2859a<T, U> {

    public final Fe.o<? super T, ? extends Be.G<? extends U>> f19927c;

    public final int f19928d;

    public final io.reactivex.internal.util.j f19929e;

    public static final class a<T, R> extends AtomicInteger implements Be.I<T>, De.c {

        public static final long f19930n = -6951100001833242599L;

        public final Be.I<? super R> f19931b;

        public final Fe.o<? super T, ? extends Be.G<? extends R>> f19932c;

        public final int f19933d;

        public final io.reactivex.internal.util.c f19934e = new io.reactivex.internal.util.c();

        public final C0490a<R> f19935f;

        public final boolean f19936g;

        public Ie.o<T> f19937h;

        public De.c f19938i;

        public volatile boolean f19939j;

        public volatile boolean f19940k;

        public volatile boolean f19941l;

        public int f19942m;

        public static final class C0490a<R> extends AtomicReference<De.c> implements Be.I<R> {

            public static final long f19943d = 2620149119579502636L;

            public final Be.I<? super R> f19944b;

            public final a<?, R> f19945c;

            public C0490a(Be.I<? super R> i10, a<?, R> aVar) {
                this.f19944b = i10;
                this.f19945c = aVar;
            }

            @Override
            public void a() {
                a<?, R> aVar = this.f19945c;
                aVar.f19939j = false;
                aVar.b();
            }

            public void b() {
                Ge.d.a(this);
            }

            @Override
            public void e(De.c cVar) {
                Ge.d.c(this, cVar);
            }

            @Override
            public void h(R r10) {
                this.f19944b.h(r10);
            }

            @Override
            public void onError(Throwable th2) {
                a<?, R> aVar = this.f19945c;
                if (!aVar.f19934e.a(th2)) {
                    Ye.a.Y(th2);
                    return;
                }
                if (!aVar.f19936g) {
                    aVar.f19938i.dispose();
                }
                aVar.f19939j = false;
                aVar.b();
            }
        }

        public a(Be.I<? super R> i10, Fe.o<? super T, ? extends Be.G<? extends R>> oVar, int i11, boolean z10) {
            this.f19931b = i10;
            this.f19932c = oVar;
            this.f19933d = i11;
            this.f19936g = z10;
            this.f19935f = new C0490a<>(i10, this);
        }

        @Override
        public void a() {
            this.f19940k = true;
            b();
        }

        public void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            Be.I<? super R> i10 = this.f19931b;
            Ie.o<T> oVar = this.f19937h;
            io.reactivex.internal.util.c cVar = this.f19934e;
            while (true) {
                if (!this.f19939j) {
                    if (this.f19941l) {
                        oVar.clear();
                        return;
                    }
                    if (!this.f19936g && cVar.get() != null) {
                        oVar.clear();
                        this.f19941l = true;
                        i10.onError(cVar.c());
                        return;
                    }
                    boolean z10 = this.f19940k;
                    try {
                        T poll = oVar.poll();
                        boolean z11 = poll == null;
                        if (z10 && z11) {
                            this.f19941l = true;
                            Throwable c10 = cVar.c();
                            if (c10 != null) {
                                i10.onError(c10);
                                return;
                            } else {
                                i10.a();
                                return;
                            }
                        }
                        if (!z11) {
                            try {
                                Be.G g10 = (Be.G) He.b.g(this.f19932c.apply(poll), "The mapper returned a null ObservableSource");
                                if (g10 instanceof Callable) {
                                    try {
                                        A.c cVar2 = (Object) ((Callable) g10).call();
                                        if (cVar2 != null && !this.f19941l) {
                                            i10.h(cVar2);
                                        }
                                    } catch (Throwable th2) {
                                        io.reactivex.exceptions.a.b(th2);
                                        cVar.a(th2);
                                    }
                                } else {
                                    this.f19939j = true;
                                    g10.c(this.f19935f);
                                }
                            } catch (Throwable th3) {
                                io.reactivex.exceptions.a.b(th3);
                                this.f19941l = true;
                                this.f19938i.dispose();
                                oVar.clear();
                                cVar.a(th3);
                                i10.onError(cVar.c());
                                return;
                            }
                        }
                    } catch (Throwable th4) {
                        io.reactivex.exceptions.a.b(th4);
                        this.f19941l = true;
                        this.f19938i.dispose();
                        cVar.a(th4);
                        i10.onError(cVar.c());
                        return;
                    }
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            }
        }

        @Override
        public boolean d() {
            return this.f19941l;
        }

        @Override
        public void dispose() {
            this.f19941l = true;
            this.f19938i.dispose();
            this.f19935f.b();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f19938i, cVar)) {
                this.f19938i = cVar;
                if (cVar instanceof Ie.j) {
                    Ie.j jVar = (Ie.j) cVar;
                    int m10 = jVar.m(3);
                    if (m10 == 1) {
                        this.f19942m = m10;
                        this.f19937h = jVar;
                        this.f19940k = true;
                        this.f19931b.e(this);
                        b();
                        return;
                    }
                    if (m10 == 2) {
                        this.f19942m = m10;
                        this.f19937h = jVar;
                        this.f19931b.e(this);
                        return;
                    }
                }
                this.f19937h = new Re.c(this.f19933d);
                this.f19931b.e(this);
            }
        }

        @Override
        public void h(T t10) {
            if (this.f19942m == 0) {
                this.f19937h.offer(t10);
            }
            b();
        }

        @Override
        public void onError(Throwable th2) {
            if (!this.f19934e.a(th2)) {
                Ye.a.Y(th2);
            } else {
                this.f19940k = true;
                b();
            }
        }
    }

    public static final class b<T, U> extends AtomicInteger implements Be.I<T>, De.c {

        public static final long f19946l = 8828587559905699186L;

        public final Be.I<? super U> f19947b;

        public final Fe.o<? super T, ? extends Be.G<? extends U>> f19948c;

        public final a<U> f19949d;

        public final int f19950e;

        public Ie.o<T> f19951f;

        public De.c f19952g;

        public volatile boolean f19953h;

        public volatile boolean f19954i;

        public volatile boolean f19955j;

        public int f19956k;

        public static final class a<U> extends AtomicReference<De.c> implements Be.I<U> {

            public static final long f19957d = -7449079488798789337L;

            public final Be.I<? super U> f19958b;

            public final b<?, ?> f19959c;

            public a(Be.I<? super U> i10, b<?, ?> bVar) {
                this.f19958b = i10;
                this.f19959c = bVar;
            }

            @Override
            public void a() {
                this.f19959c.c();
            }

            public void b() {
                Ge.d.a(this);
            }

            @Override
            public void e(De.c cVar) {
                Ge.d.c(this, cVar);
            }

            @Override
            public void h(U u10) {
                this.f19958b.h(u10);
            }

            @Override
            public void onError(Throwable th2) {
                this.f19959c.dispose();
                this.f19958b.onError(th2);
            }
        }

        public b(Be.I<? super U> i10, Fe.o<? super T, ? extends Be.G<? extends U>> oVar, int i11) {
            this.f19947b = i10;
            this.f19948c = oVar;
            this.f19950e = i11;
            this.f19949d = new a<>(i10, this);
        }

        @Override
        public void a() {
            if (this.f19955j) {
                return;
            }
            this.f19955j = true;
            b();
        }

        public void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            while (!this.f19954i) {
                if (!this.f19953h) {
                    boolean z10 = this.f19955j;
                    try {
                        T poll = this.f19951f.poll();
                        boolean z11 = poll == null;
                        if (z10 && z11) {
                            this.f19954i = true;
                            this.f19947b.a();
                            return;
                        } else if (!z11) {
                            try {
                                Be.G g10 = (Be.G) He.b.g(this.f19948c.apply(poll), "The mapper returned a null ObservableSource");
                                this.f19953h = true;
                                g10.c(this.f19949d);
                            } catch (Throwable th2) {
                                io.reactivex.exceptions.a.b(th2);
                                dispose();
                                this.f19951f.clear();
                                this.f19947b.onError(th2);
                                return;
                            }
                        }
                    } catch (Throwable th3) {
                        io.reactivex.exceptions.a.b(th3);
                        dispose();
                        this.f19951f.clear();
                        this.f19947b.onError(th3);
                        return;
                    }
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            }
            this.f19951f.clear();
        }

        public void c() {
            this.f19953h = false;
            b();
        }

        @Override
        public boolean d() {
            return this.f19954i;
        }

        @Override
        public void dispose() {
            this.f19954i = true;
            this.f19949d.b();
            this.f19952g.dispose();
            if (getAndIncrement() == 0) {
                this.f19951f.clear();
            }
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f19952g, cVar)) {
                this.f19952g = cVar;
                if (cVar instanceof Ie.j) {
                    Ie.j jVar = (Ie.j) cVar;
                    int m10 = jVar.m(3);
                    if (m10 == 1) {
                        this.f19956k = m10;
                        this.f19951f = jVar;
                        this.f19955j = true;
                        this.f19947b.e(this);
                        b();
                        return;
                    }
                    if (m10 == 2) {
                        this.f19956k = m10;
                        this.f19951f = jVar;
                        this.f19947b.e(this);
                        return;
                    }
                }
                this.f19951f = new Re.c(this.f19950e);
                this.f19947b.e(this);
            }
        }

        @Override
        public void h(T t10) {
            if (this.f19955j) {
                return;
            }
            if (this.f19956k == 0) {
                this.f19951f.offer(t10);
            }
            b();
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f19955j) {
                Ye.a.Y(th2);
                return;
            }
            this.f19955j = true;
            dispose();
            this.f19947b.onError(th2);
        }
    }

    public C2915v(Be.G<T> g10, Fe.o<? super T, ? extends Be.G<? extends U>> oVar, int i10, io.reactivex.internal.util.j jVar) {
        super(g10);
        this.f19927c = oVar;
        this.f19929e = jVar;
        this.f19928d = Math.max(8, i10);
    }

    @Override
    public void J5(Be.I<? super U> i10) {
        if (Y0.b(this.f19344b, i10, this.f19927c)) {
            return;
        }
        if (this.f19929e == io.reactivex.internal.util.j.IMMEDIATE) {
            this.f19344b.c(new b(new We.m(i10), this.f19927c, this.f19928d));
        } else {
            this.f19344b.c(new a(i10, this.f19927c, this.f19928d, this.f19929e == io.reactivex.internal.util.j.END));
        }
    }
}
