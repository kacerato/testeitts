package Ne;

import Be.AbstractC2353c;
import Be.AbstractC2362l;
import Be.InterfaceC2356f;
import Be.InterfaceC2359i;
import Be.InterfaceC2367q;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.concurrent.atomic.AtomicReference;

public final class f<T> extends AbstractC2353c {

    public final AbstractC2362l<T> f15991b;

    public final Fe.o<? super T, ? extends InterfaceC2359i> f15992c;

    public final boolean f15993d;

    public static final class a<T> implements InterfaceC2367q<T>, De.c {

        public static final C0449a f15994i = new C0449a(null);

        public final InterfaceC2356f f15995b;

        public final Fe.o<? super T, ? extends InterfaceC2359i> f15996c;

        public final boolean f15997d;

        public final io.reactivex.internal.util.c f15998e = new io.reactivex.internal.util.c();

        public final AtomicReference<C0449a> f15999f = new AtomicReference<>();

        public volatile boolean f16000g;

        public hn.d f16001h;

        public static final class C0449a extends AtomicReference<De.c> implements InterfaceC2356f {

            public static final long f16002c = -8003404460084760287L;

            public final a<?> f16003b;

            public C0449a(a<?> aVar) {
                this.f16003b = aVar;
            }

            @Override
            public void a() {
                this.f16003b.c(this);
            }

            public void b() {
                Ge.d.a(this);
            }

            @Override
            public void e(De.c cVar) {
                Ge.d.h(this, cVar);
            }

            @Override
            public void onError(Throwable th2) {
                this.f16003b.e(this, th2);
            }
        }

        public a(InterfaceC2356f interfaceC2356f, Fe.o<? super T, ? extends InterfaceC2359i> oVar, boolean z10) {
            this.f15995b = interfaceC2356f;
            this.f15996c = oVar;
            this.f15997d = z10;
        }

        @Override
        public void a() {
            this.f16000g = true;
            if (this.f15999f.get() == null) {
                Throwable c10 = this.f15998e.c();
                if (c10 == null) {
                    this.f15995b.a();
                } else {
                    this.f15995b.onError(c10);
                }
            }
        }

        public void b() {
            AtomicReference<C0449a> atomicReference = this.f15999f;
            C0449a c0449a = f15994i;
            C0449a andSet = atomicReference.getAndSet(c0449a);
            if (andSet == null || andSet == c0449a) {
                return;
            }
            andSet.b();
        }

        public void c(C0449a c0449a) {
            if (androidx.lifecycle.c.a(this.f15999f, c0449a, null) && this.f16000g) {
                Throwable c10 = this.f15998e.c();
                if (c10 == null) {
                    this.f15995b.a();
                } else {
                    this.f15995b.onError(c10);
                }
            }
        }

        @Override
        public boolean d() {
            return this.f15999f.get() == f15994i;
        }

        @Override
        public void dispose() {
            this.f16001h.cancel();
            b();
        }

        public void e(C0449a c0449a, Throwable th2) {
            if (!androidx.lifecycle.c.a(this.f15999f, c0449a, null) || !this.f15998e.a(th2)) {
                Ye.a.Y(th2);
                return;
            }
            if (this.f15997d) {
                if (this.f16000g) {
                    this.f15995b.onError(this.f15998e.c());
                    return;
                }
                return;
            }
            dispose();
            Throwable c10 = this.f15998e.c();
            if (c10 != ExceptionHelper.f92434a) {
                this.f15995b.onError(c10);
            }
        }

        @Override
        public void h(T t10) {
            C0449a c0449a;
            try {
                InterfaceC2359i interfaceC2359i = (InterfaceC2359i) He.b.g(this.f15996c.apply(t10), "The mapper returned a null CompletableSource");
                C0449a c0449a2 = new C0449a(this);
                do {
                    c0449a = this.f15999f.get();
                    if (c0449a == f15994i) {
                        return;
                    }
                } while (!androidx.lifecycle.c.a(this.f15999f, c0449a, c0449a2));
                if (c0449a != null) {
                    c0449a.b();
                }
                interfaceC2359i.b(c0449a2);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f16001h.cancel();
                onError(th2);
            }
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f16001h, dVar)) {
                this.f16001h = dVar;
                this.f15995b.e(this);
                dVar.i(Long.MAX_VALUE);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (!this.f15998e.a(th2)) {
                Ye.a.Y(th2);
                return;
            }
            if (this.f15997d) {
                a();
                return;
            }
            b();
            Throwable c10 = this.f15998e.c();
            if (c10 != ExceptionHelper.f92434a) {
                this.f15995b.onError(c10);
            }
        }
    }

    public f(AbstractC2362l<T> abstractC2362l, Fe.o<? super T, ? extends InterfaceC2359i> oVar, boolean z10) {
        this.f15991b = abstractC2362l;
        this.f15992c = oVar;
        this.f15993d = z10;
    }

    @Override
    public void K0(InterfaceC2356f interfaceC2356f) {
        this.f15991b.l6(new a(interfaceC2356f, this.f15992c, this.f15993d));
    }
}
