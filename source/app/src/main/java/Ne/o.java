package Ne;

import Be.AbstractC2353c;
import Be.B;
import Be.I;
import Be.InterfaceC2356f;
import Be.InterfaceC2359i;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.concurrent.atomic.AtomicReference;

public final class o<T> extends AbstractC2353c {

    public final B<T> f16114b;

    public final Fe.o<? super T, ? extends InterfaceC2359i> f16115c;

    public final boolean f16116d;

    public static final class a<T> implements I<T>, De.c {

        public static final C0455a f16117i = new C0455a(null);

        public final InterfaceC2356f f16118b;

        public final Fe.o<? super T, ? extends InterfaceC2359i> f16119c;

        public final boolean f16120d;

        public final io.reactivex.internal.util.c f16121e = new io.reactivex.internal.util.c();

        public final AtomicReference<C0455a> f16122f = new AtomicReference<>();

        public volatile boolean f16123g;

        public De.c f16124h;

        public static final class C0455a extends AtomicReference<De.c> implements InterfaceC2356f {

            public static final long f16125c = -8003404460084760287L;

            public final a<?> f16126b;

            public C0455a(a<?> aVar) {
                this.f16126b = aVar;
            }

            @Override
            public void a() {
                this.f16126b.c(this);
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
                this.f16126b.f(this, th2);
            }
        }

        public a(InterfaceC2356f interfaceC2356f, Fe.o<? super T, ? extends InterfaceC2359i> oVar, boolean z10) {
            this.f16118b = interfaceC2356f;
            this.f16119c = oVar;
            this.f16120d = z10;
        }

        @Override
        public void a() {
            this.f16123g = true;
            if (this.f16122f.get() == null) {
                Throwable c10 = this.f16121e.c();
                if (c10 == null) {
                    this.f16118b.a();
                } else {
                    this.f16118b.onError(c10);
                }
            }
        }

        public void b() {
            AtomicReference<C0455a> atomicReference = this.f16122f;
            C0455a c0455a = f16117i;
            C0455a andSet = atomicReference.getAndSet(c0455a);
            if (andSet == null || andSet == c0455a) {
                return;
            }
            andSet.b();
        }

        public void c(C0455a c0455a) {
            if (androidx.lifecycle.c.a(this.f16122f, c0455a, null) && this.f16123g) {
                Throwable c10 = this.f16121e.c();
                if (c10 == null) {
                    this.f16118b.a();
                } else {
                    this.f16118b.onError(c10);
                }
            }
        }

        @Override
        public boolean d() {
            return this.f16122f.get() == f16117i;
        }

        @Override
        public void dispose() {
            this.f16124h.dispose();
            b();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f16124h, cVar)) {
                this.f16124h = cVar;
                this.f16118b.e(this);
            }
        }

        public void f(C0455a c0455a, Throwable th2) {
            if (!androidx.lifecycle.c.a(this.f16122f, c0455a, null) || !this.f16121e.a(th2)) {
                Ye.a.Y(th2);
                return;
            }
            if (this.f16120d) {
                if (this.f16123g) {
                    this.f16118b.onError(this.f16121e.c());
                    return;
                }
                return;
            }
            dispose();
            Throwable c10 = this.f16121e.c();
            if (c10 != ExceptionHelper.f92434a) {
                this.f16118b.onError(c10);
            }
        }

        @Override
        public void h(T t10) {
            C0455a c0455a;
            try {
                InterfaceC2359i interfaceC2359i = (InterfaceC2359i) He.b.g(this.f16119c.apply(t10), "The mapper returned a null CompletableSource");
                C0455a c0455a2 = new C0455a(this);
                do {
                    c0455a = this.f16122f.get();
                    if (c0455a == f16117i) {
                        return;
                    }
                } while (!androidx.lifecycle.c.a(this.f16122f, c0455a, c0455a2));
                if (c0455a != null) {
                    c0455a.b();
                }
                interfaceC2359i.b(c0455a2);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f16124h.dispose();
                onError(th2);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (!this.f16121e.a(th2)) {
                Ye.a.Y(th2);
                return;
            }
            if (this.f16120d) {
                a();
                return;
            }
            b();
            Throwable c10 = this.f16121e.c();
            if (c10 != ExceptionHelper.f92434a) {
                this.f16118b.onError(c10);
            }
        }
    }

    public o(B<T> b10, Fe.o<? super T, ? extends InterfaceC2359i> oVar, boolean z10) {
        this.f16114b = b10;
        this.f16115c = oVar;
        this.f16116d = z10;
    }

    @Override
    public void K0(InterfaceC2356f interfaceC2356f) {
        if (r.a(this.f16114b, this.f16115c, interfaceC2356f)) {
            return;
        }
        this.f16114b.c(new a(interfaceC2356f, this.f16115c, this.f16116d));
    }
}
