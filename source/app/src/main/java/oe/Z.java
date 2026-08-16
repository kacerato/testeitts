package Oe;

import Be.AbstractC2353c;
import Be.InterfaceC2356f;
import Be.InterfaceC2359i;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class Z<T> extends AbstractC2353c implements Ie.d<T> {

    public final Be.G<T> f19325b;

    public final Fe.o<? super T, ? extends InterfaceC2359i> f19326c;

    public final boolean f19327d;

    public static final class a<T> extends AtomicInteger implements De.c, Be.I<T> {

        public static final long f19328i = 8443155186132538303L;

        public final InterfaceC2356f f19329b;

        public final Fe.o<? super T, ? extends InterfaceC2359i> f19331d;

        public final boolean f19332e;

        public De.c f19334g;

        public volatile boolean f19335h;

        public final io.reactivex.internal.util.c f19330c = new io.reactivex.internal.util.c();

        public final De.b f19333f = new De.b();

        public final class C0484a extends AtomicReference<De.c> implements InterfaceC2356f, De.c {

            public static final long f19336c = 8606673141535671828L;

            public C0484a() {
            }

            @Override
            public void a() {
                a.this.b(this);
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
                a.this.c(this, th2);
            }
        }

        public a(InterfaceC2356f interfaceC2356f, Fe.o<? super T, ? extends InterfaceC2359i> oVar, boolean z10) {
            this.f19329b = interfaceC2356f;
            this.f19331d = oVar;
            this.f19332e = z10;
            lazySet(1);
        }

        @Override
        public void a() {
            if (decrementAndGet() == 0) {
                Throwable c10 = this.f19330c.c();
                if (c10 != null) {
                    this.f19329b.onError(c10);
                } else {
                    this.f19329b.a();
                }
            }
        }

        public void b(a<T>.C0484a c0484a) {
            this.f19333f.b(c0484a);
            a();
        }

        public void c(a<T>.C0484a c0484a, Throwable th2) {
            this.f19333f.b(c0484a);
            onError(th2);
        }

        @Override
        public boolean d() {
            return this.f19334g.d();
        }

        @Override
        public void dispose() {
            this.f19335h = true;
            this.f19334g.dispose();
            this.f19333f.dispose();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f19334g, cVar)) {
                this.f19334g = cVar;
                this.f19329b.e(this);
            }
        }

        @Override
        public void h(T t10) {
            try {
                InterfaceC2359i interfaceC2359i = (InterfaceC2359i) He.b.g(this.f19331d.apply(t10), "The mapper returned a null CompletableSource");
                getAndIncrement();
                C0484a c0484a = new C0484a();
                if (this.f19335h || !this.f19333f.a(c0484a)) {
                    return;
                }
                interfaceC2359i.b(c0484a);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f19334g.dispose();
                onError(th2);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (!this.f19330c.a(th2)) {
                Ye.a.Y(th2);
                return;
            }
            if (this.f19332e) {
                if (decrementAndGet() == 0) {
                    this.f19329b.onError(this.f19330c.c());
                    return;
                }
                return;
            }
            dispose();
            if (getAndSet(0) > 0) {
                this.f19329b.onError(this.f19330c.c());
            }
        }
    }

    public Z(Be.G<T> g10, Fe.o<? super T, ? extends InterfaceC2359i> oVar, boolean z10) {
        this.f19325b = g10;
        this.f19326c = oVar;
        this.f19327d = z10;
    }

    @Override
    public void K0(InterfaceC2356f interfaceC2356f) {
        this.f19325b.c(new a(interfaceC2356f, this.f19326c, this.f19327d));
    }

    @Override
    public Be.B<T> c() {
        return Ye.a.R(new Y(this.f19325b, this.f19326c, this.f19327d));
    }
}
