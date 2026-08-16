package Oe;

import bf.AbstractC3885i;
import bf.C3881e;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class V0<T> extends AbstractC2859a<T, T> {

    public final Fe.o<? super Be.B<Throwable>, ? extends Be.G<?>> f19235c;

    public static final class a<T> extends AtomicInteger implements Be.I<T>, De.c {

        public static final long f19236j = 802743776666017014L;

        public final Be.I<? super T> f19237b;

        public final AbstractC3885i<Throwable> f19240e;

        public final Be.G<T> f19243h;

        public volatile boolean f19244i;

        public final AtomicInteger f19238c = new AtomicInteger();

        public final io.reactivex.internal.util.c f19239d = new io.reactivex.internal.util.c();

        public final a<T>.C0482a f19241f = new C0482a();

        public final AtomicReference<De.c> f19242g = new AtomicReference<>();

        public final class C0482a extends AtomicReference<De.c> implements Be.I<Object> {

            public static final long f19245c = 3254781284376480842L;

            public C0482a() {
            }

            @Override
            public void a() {
                a.this.b();
            }

            @Override
            public void e(De.c cVar) {
                Ge.d.h(this, cVar);
            }

            @Override
            public void h(Object obj) {
                a.this.f();
            }

            @Override
            public void onError(Throwable th2) {
                a.this.c(th2);
            }
        }

        public a(Be.I<? super T> i10, AbstractC3885i<Throwable> abstractC3885i, Be.G<T> g10) {
            this.f19237b = i10;
            this.f19240e = abstractC3885i;
            this.f19243h = g10;
        }

        @Override
        public void a() {
            Ge.d.a(this.f19241f);
            io.reactivex.internal.util.k.a(this.f19237b, this, this.f19239d);
        }

        public void b() {
            Ge.d.a(this.f19242g);
            io.reactivex.internal.util.k.a(this.f19237b, this, this.f19239d);
        }

        public void c(Throwable th2) {
            Ge.d.a(this.f19242g);
            io.reactivex.internal.util.k.c(this.f19237b, th2, this, this.f19239d);
        }

        @Override
        public boolean d() {
            return Ge.d.b(this.f19242g.get());
        }

        @Override
        public void dispose() {
            Ge.d.a(this.f19242g);
            Ge.d.a(this.f19241f);
        }

        @Override
        public void e(De.c cVar) {
            Ge.d.c(this.f19242g, cVar);
        }

        public void f() {
            g();
        }

        public void g() {
            if (this.f19238c.getAndIncrement() != 0) {
                return;
            }
            while (!d()) {
                if (!this.f19244i) {
                    this.f19244i = true;
                    this.f19243h.c(this);
                }
                if (this.f19238c.decrementAndGet() == 0) {
                    return;
                }
            }
        }

        @Override
        public void h(T t10) {
            io.reactivex.internal.util.k.e(this.f19237b, t10, this, this.f19239d);
        }

        @Override
        public void onError(Throwable th2) {
            Ge.d.c(this.f19242g, null);
            this.f19244i = false;
            this.f19240e.h(th2);
        }
    }

    public V0(Be.G<T> g10, Fe.o<? super Be.B<Throwable>, ? extends Be.G<?>> oVar) {
        super(g10);
        this.f19235c = oVar;
    }

    @Override
    public void J5(Be.I<? super T> i10) {
        AbstractC3885i<T> n82 = C3881e.p8().n8();
        try {
            Be.G g10 = (Be.G) He.b.g(this.f19235c.apply(n82), "The handler returned a null ObservableSource");
            a aVar = new a(i10, n82, this.f19344b);
            i10.e(aVar);
            g10.c(aVar.f19241f);
            aVar.g();
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            Ge.e.h(th2, i10);
        }
    }
}
