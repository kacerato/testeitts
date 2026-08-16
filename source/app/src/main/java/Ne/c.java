package Ne;

import Be.AbstractC2353c;
import Be.AbstractC2362l;
import Be.InterfaceC2356f;
import Be.InterfaceC2359i;
import Be.InterfaceC2367q;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class c<T> extends AbstractC2353c {

    public final AbstractC2362l<T> f15922b;

    public final Fe.o<? super T, ? extends InterfaceC2359i> f15923c;

    public final io.reactivex.internal.util.j f15924d;

    public final int f15925e;

    public static final class a<T> extends AtomicInteger implements InterfaceC2367q<T>, De.c {

        public static final long f15926n = 3610901111000061034L;

        public final InterfaceC2356f f15927b;

        public final Fe.o<? super T, ? extends InterfaceC2359i> f15928c;

        public final io.reactivex.internal.util.j f15929d;

        public final io.reactivex.internal.util.c f15930e = new io.reactivex.internal.util.c();

        public final C0446a f15931f = new C0446a(this);

        public final int f15932g;

        public final Ie.n<T> f15933h;

        public hn.d f15934i;

        public volatile boolean f15935j;

        public volatile boolean f15936k;

        public volatile boolean f15937l;

        public int f15938m;

        public static final class C0446a extends AtomicReference<De.c> implements InterfaceC2356f {

            public static final long f15939c = 5638352172918776687L;

            public final a<?> f15940b;

            public C0446a(a<?> aVar) {
                this.f15940b = aVar;
            }

            @Override
            public void a() {
                this.f15940b.c();
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
                this.f15940b.e(th2);
            }
        }

        public a(InterfaceC2356f interfaceC2356f, Fe.o<? super T, ? extends InterfaceC2359i> oVar, io.reactivex.internal.util.j jVar, int i10) {
            this.f15927b = interfaceC2356f;
            this.f15928c = oVar;
            this.f15929d = jVar;
            this.f15932g = i10;
            this.f15933h = new Re.b(i10);
        }

        @Override
        public void a() {
            this.f15936k = true;
            b();
        }

        public void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            while (!this.f15937l) {
                if (!this.f15935j) {
                    if (this.f15929d == io.reactivex.internal.util.j.BOUNDARY && this.f15930e.get() != null) {
                        this.f15933h.clear();
                        this.f15927b.onError(this.f15930e.c());
                        return;
                    }
                    boolean z10 = this.f15936k;
                    T poll = this.f15933h.poll();
                    boolean z11 = poll == null;
                    if (z10 && z11) {
                        Throwable c10 = this.f15930e.c();
                        if (c10 != null) {
                            this.f15927b.onError(c10);
                            return;
                        } else {
                            this.f15927b.a();
                            return;
                        }
                    }
                    if (!z11) {
                        int i10 = this.f15932g;
                        int i11 = i10 - (i10 >> 1);
                        int i12 = this.f15938m + 1;
                        if (i12 == i11) {
                            this.f15938m = 0;
                            this.f15934i.i(i11);
                        } else {
                            this.f15938m = i12;
                        }
                        try {
                            InterfaceC2359i interfaceC2359i = (InterfaceC2359i) He.b.g(this.f15928c.apply(poll), "The mapper returned a null CompletableSource");
                            this.f15935j = true;
                            interfaceC2359i.b(this.f15931f);
                        } catch (Throwable th2) {
                            io.reactivex.exceptions.a.b(th2);
                            this.f15933h.clear();
                            this.f15934i.cancel();
                            this.f15930e.a(th2);
                            this.f15927b.onError(this.f15930e.c());
                            return;
                        }
                    }
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            }
            this.f15933h.clear();
        }

        public void c() {
            this.f15935j = false;
            b();
        }

        @Override
        public boolean d() {
            return this.f15937l;
        }

        @Override
        public void dispose() {
            this.f15937l = true;
            this.f15934i.cancel();
            this.f15931f.b();
            if (getAndIncrement() == 0) {
                this.f15933h.clear();
            }
        }

        public void e(Throwable th2) {
            if (!this.f15930e.a(th2)) {
                Ye.a.Y(th2);
                return;
            }
            if (this.f15929d != io.reactivex.internal.util.j.IMMEDIATE) {
                this.f15935j = false;
                b();
                return;
            }
            this.f15934i.cancel();
            Throwable c10 = this.f15930e.c();
            if (c10 != ExceptionHelper.f92434a) {
                this.f15927b.onError(c10);
            }
            if (getAndIncrement() == 0) {
                this.f15933h.clear();
            }
        }

        @Override
        public void h(T t10) {
            if (this.f15933h.offer(t10)) {
                b();
            } else {
                this.f15934i.cancel();
                onError(new MissingBackpressureException("Queue full?!"));
            }
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f15934i, dVar)) {
                this.f15934i = dVar;
                this.f15927b.e(this);
                dVar.i(this.f15932g);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (!this.f15930e.a(th2)) {
                Ye.a.Y(th2);
                return;
            }
            if (this.f15929d != io.reactivex.internal.util.j.IMMEDIATE) {
                this.f15936k = true;
                b();
                return;
            }
            this.f15931f.b();
            Throwable c10 = this.f15930e.c();
            if (c10 != ExceptionHelper.f92434a) {
                this.f15927b.onError(c10);
            }
            if (getAndIncrement() == 0) {
                this.f15933h.clear();
            }
        }
    }

    public c(AbstractC2362l<T> abstractC2362l, Fe.o<? super T, ? extends InterfaceC2359i> oVar, io.reactivex.internal.util.j jVar, int i10) {
        this.f15922b = abstractC2362l;
        this.f15923c = oVar;
        this.f15924d = jVar;
        this.f15925e = i10;
    }

    @Override
    public void K0(InterfaceC2356f interfaceC2356f) {
        this.f15922b.l6(new a(interfaceC2356f, this.f15923c, this.f15924d, this.f15925e));
    }
}
