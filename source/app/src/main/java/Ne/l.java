package Ne;

import Be.AbstractC2353c;
import Be.B;
import Be.I;
import Be.InterfaceC2356f;
import Be.InterfaceC2359i;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class l<T> extends AbstractC2353c {

    public final B<T> f16054b;

    public final Fe.o<? super T, ? extends InterfaceC2359i> f16055c;

    public final io.reactivex.internal.util.j f16056d;

    public final int f16057e;

    public static final class a<T> extends AtomicInteger implements I<T>, De.c {

        public static final long f16058m = 3610901111000061034L;

        public final InterfaceC2356f f16059b;

        public final Fe.o<? super T, ? extends InterfaceC2359i> f16060c;

        public final io.reactivex.internal.util.j f16061d;

        public final io.reactivex.internal.util.c f16062e = new io.reactivex.internal.util.c();

        public final C0452a f16063f = new C0452a(this);

        public final int f16064g;

        public Ie.o<T> f16065h;

        public De.c f16066i;

        public volatile boolean f16067j;

        public volatile boolean f16068k;

        public volatile boolean f16069l;

        public static final class C0452a extends AtomicReference<De.c> implements InterfaceC2356f {

            public static final long f16070c = 5638352172918776687L;

            public final a<?> f16071b;

            public C0452a(a<?> aVar) {
                this.f16071b = aVar;
            }

            @Override
            public void a() {
                this.f16071b.c();
            }

            public void b() {
                Ge.d.a(this);
            }

            @Override
            public void e(De.c cVar) {
                Ge.d.c(this, cVar);
            }

            @Override
            public void onError(Throwable th2) {
                this.f16071b.f(th2);
            }
        }

        public a(InterfaceC2356f interfaceC2356f, Fe.o<? super T, ? extends InterfaceC2359i> oVar, io.reactivex.internal.util.j jVar, int i10) {
            this.f16059b = interfaceC2356f;
            this.f16060c = oVar;
            this.f16061d = jVar;
            this.f16064g = i10;
        }

        @Override
        public void a() {
            this.f16068k = true;
            b();
        }

        public void b() {
            InterfaceC2359i interfaceC2359i;
            boolean z10;
            if (getAndIncrement() != 0) {
                return;
            }
            io.reactivex.internal.util.c cVar = this.f16062e;
            io.reactivex.internal.util.j jVar = this.f16061d;
            while (!this.f16069l) {
                if (!this.f16067j) {
                    if (jVar == io.reactivex.internal.util.j.BOUNDARY && cVar.get() != null) {
                        this.f16069l = true;
                        this.f16065h.clear();
                        this.f16059b.onError(cVar.c());
                        return;
                    }
                    boolean z11 = this.f16068k;
                    try {
                        T poll = this.f16065h.poll();
                        if (poll != null) {
                            interfaceC2359i = (InterfaceC2359i) He.b.g(this.f16060c.apply(poll), "The mapper returned a null CompletableSource");
                            z10 = false;
                        } else {
                            interfaceC2359i = null;
                            z10 = true;
                        }
                        if (z11 && z10) {
                            this.f16069l = true;
                            Throwable c10 = cVar.c();
                            if (c10 != null) {
                                this.f16059b.onError(c10);
                                return;
                            } else {
                                this.f16059b.a();
                                return;
                            }
                        }
                        if (!z10) {
                            this.f16067j = true;
                            interfaceC2359i.b(this.f16063f);
                        }
                    } catch (Throwable th2) {
                        io.reactivex.exceptions.a.b(th2);
                        this.f16069l = true;
                        this.f16065h.clear();
                        this.f16066i.dispose();
                        cVar.a(th2);
                        this.f16059b.onError(cVar.c());
                        return;
                    }
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            }
            this.f16065h.clear();
        }

        public void c() {
            this.f16067j = false;
            b();
        }

        @Override
        public boolean d() {
            return this.f16069l;
        }

        @Override
        public void dispose() {
            this.f16069l = true;
            this.f16066i.dispose();
            this.f16063f.b();
            if (getAndIncrement() == 0) {
                this.f16065h.clear();
            }
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f16066i, cVar)) {
                this.f16066i = cVar;
                if (cVar instanceof Ie.j) {
                    Ie.j jVar = (Ie.j) cVar;
                    int m10 = jVar.m(3);
                    if (m10 == 1) {
                        this.f16065h = jVar;
                        this.f16068k = true;
                        this.f16059b.e(this);
                        b();
                        return;
                    }
                    if (m10 == 2) {
                        this.f16065h = jVar;
                        this.f16059b.e(this);
                        return;
                    }
                }
                this.f16065h = new Re.c(this.f16064g);
                this.f16059b.e(this);
            }
        }

        public void f(Throwable th2) {
            if (!this.f16062e.a(th2)) {
                Ye.a.Y(th2);
                return;
            }
            if (this.f16061d != io.reactivex.internal.util.j.IMMEDIATE) {
                this.f16067j = false;
                b();
                return;
            }
            this.f16069l = true;
            this.f16066i.dispose();
            Throwable c10 = this.f16062e.c();
            if (c10 != ExceptionHelper.f92434a) {
                this.f16059b.onError(c10);
            }
            if (getAndIncrement() == 0) {
                this.f16065h.clear();
            }
        }

        @Override
        public void h(T t10) {
            if (t10 != null) {
                this.f16065h.offer(t10);
            }
            b();
        }

        @Override
        public void onError(Throwable th2) {
            if (!this.f16062e.a(th2)) {
                Ye.a.Y(th2);
                return;
            }
            if (this.f16061d != io.reactivex.internal.util.j.IMMEDIATE) {
                this.f16068k = true;
                b();
                return;
            }
            this.f16069l = true;
            this.f16063f.b();
            Throwable c10 = this.f16062e.c();
            if (c10 != ExceptionHelper.f92434a) {
                this.f16059b.onError(c10);
            }
            if (getAndIncrement() == 0) {
                this.f16065h.clear();
            }
        }
    }

    public l(B<T> b10, Fe.o<? super T, ? extends InterfaceC2359i> oVar, io.reactivex.internal.util.j jVar, int i10) {
        this.f16054b = b10;
        this.f16055c = oVar;
        this.f16056d = jVar;
        this.f16057e = i10;
    }

    @Override
    public void K0(InterfaceC2356f interfaceC2356f) {
        if (r.a(this.f16054b, this.f16055c, interfaceC2356f)) {
            return;
        }
        this.f16054b.c(new a(interfaceC2356f, this.f16055c, this.f16056d, this.f16057e));
    }
}
