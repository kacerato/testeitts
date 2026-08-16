package Oe;

import Be.InterfaceC2356f;
import Be.InterfaceC2359i;
import java.util.concurrent.atomic.AtomicReference;

public final class Y<T> extends AbstractC2859a<T, T> {

    public final Fe.o<? super T, ? extends InterfaceC2359i> f19304c;

    public final boolean f19305d;

    public static final class a<T> extends Je.b<T> implements Be.I<T> {

        public static final long f19306j = 8443155186132538303L;

        public final Be.I<? super T> f19307c;

        public final Fe.o<? super T, ? extends InterfaceC2359i> f19309e;

        public final boolean f19310f;

        public De.c f19312h;

        public volatile boolean f19313i;

        public final io.reactivex.internal.util.c f19308d = new io.reactivex.internal.util.c();

        public final De.b f19311g = new De.b();

        public final class C0483a extends AtomicReference<De.c> implements InterfaceC2356f, De.c {

            public static final long f19314c = 8606673141535671828L;

            public C0483a() {
            }

            @Override
            public void a() {
                a.this.c(this);
            }

            @Override
            public boolean d() {
                return Ge.d.b(get());
            }

            @Override
            public void dispose() {
                Ge.d.a(this);
            }

            @Override
            public void e(De.c cVar) {
                Ge.d.h(this, cVar);
            }

            @Override
            public void onError(Throwable th2) {
                a.this.f(this, th2);
            }
        }

        public a(Be.I<? super T> i10, Fe.o<? super T, ? extends InterfaceC2359i> oVar, boolean z10) {
            this.f19307c = i10;
            this.f19309e = oVar;
            this.f19310f = z10;
            lazySet(1);
        }

        @Override
        public void a() {
            if (decrementAndGet() == 0) {
                Throwable c10 = this.f19308d.c();
                if (c10 != null) {
                    this.f19307c.onError(c10);
                } else {
                    this.f19307c.a();
                }
            }
        }

        public void c(a<T>.C0483a c0483a) {
            this.f19311g.b(c0483a);
            a();
        }

        @Override
        public void clear() {
        }

        @Override
        public boolean d() {
            return this.f19312h.d();
        }

        @Override
        public void dispose() {
            this.f19313i = true;
            this.f19312h.dispose();
            this.f19311g.dispose();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f19312h, cVar)) {
                this.f19312h = cVar;
                this.f19307c.e(this);
            }
        }

        public void f(a<T>.C0483a c0483a, Throwable th2) {
            this.f19311g.b(c0483a);
            onError(th2);
        }

        @Override
        public void h(T t10) {
            try {
                InterfaceC2359i interfaceC2359i = (InterfaceC2359i) He.b.g(this.f19309e.apply(t10), "The mapper returned a null CompletableSource");
                getAndIncrement();
                C0483a c0483a = new C0483a();
                if (this.f19313i || !this.f19311g.a(c0483a)) {
                    return;
                }
                interfaceC2359i.b(c0483a);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f19312h.dispose();
                onError(th2);
            }
        }

        @Override
        public boolean isEmpty() {
            return true;
        }

        @Override
        public int m(int i10) {
            return i10 & 2;
        }

        @Override
        public void onError(Throwable th2) {
            if (!this.f19308d.a(th2)) {
                Ye.a.Y(th2);
                return;
            }
            if (this.f19310f) {
                if (decrementAndGet() == 0) {
                    this.f19307c.onError(this.f19308d.c());
                    return;
                }
                return;
            }
            dispose();
            if (getAndSet(0) > 0) {
                this.f19307c.onError(this.f19308d.c());
            }
        }

        @Override
        @Ce.g
        public T poll() throws Exception {
            return null;
        }
    }

    public Y(Be.G<T> g10, Fe.o<? super T, ? extends InterfaceC2359i> oVar, boolean z10) {
        super(g10);
        this.f19304c = oVar;
        this.f19305d = z10;
    }

    @Override
    public void J5(Be.I<? super T> i10) {
        this.f19344b.c(new a(i10, this.f19304c, this.f19305d));
    }
}
