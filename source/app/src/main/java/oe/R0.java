package Oe;

import bf.AbstractC3885i;
import bf.C3881e;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class R0<T> extends AbstractC2859a<T, T> {

    public final Fe.o<? super Be.B<Object>, ? extends Be.G<?>> f19147c;

    public static final class a<T> extends AtomicInteger implements Be.I<T>, De.c {

        public static final long f19148j = 802743776666017014L;

        public final Be.I<? super T> f19149b;

        public final AbstractC3885i<Object> f19152e;

        public final Be.G<T> f19155h;

        public volatile boolean f19156i;

        public final AtomicInteger f19150c = new AtomicInteger();

        public final io.reactivex.internal.util.c f19151d = new io.reactivex.internal.util.c();

        public final a<T>.C0481a f19153f = new C0481a();

        public final AtomicReference<De.c> f19154g = new AtomicReference<>();

        public final class C0481a extends AtomicReference<De.c> implements Be.I<Object> {

            public static final long f19157c = 3254781284376480842L;

            public C0481a() {
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

        public a(Be.I<? super T> i10, AbstractC3885i<Object> abstractC3885i, Be.G<T> g10) {
            this.f19149b = i10;
            this.f19152e = abstractC3885i;
            this.f19155h = g10;
        }

        @Override
        public void a() {
            Ge.d.c(this.f19154g, null);
            this.f19156i = false;
            this.f19152e.h(0);
        }

        public void b() {
            Ge.d.a(this.f19154g);
            io.reactivex.internal.util.k.a(this.f19149b, this, this.f19151d);
        }

        public void c(Throwable th2) {
            Ge.d.a(this.f19154g);
            io.reactivex.internal.util.k.c(this.f19149b, th2, this, this.f19151d);
        }

        @Override
        public boolean d() {
            return Ge.d.b(this.f19154g.get());
        }

        @Override
        public void dispose() {
            Ge.d.a(this.f19154g);
            Ge.d.a(this.f19153f);
        }

        @Override
        public void e(De.c cVar) {
            Ge.d.h(this.f19154g, cVar);
        }

        public void f() {
            g();
        }

        public void g() {
            if (this.f19150c.getAndIncrement() != 0) {
                return;
            }
            while (!d()) {
                if (!this.f19156i) {
                    this.f19156i = true;
                    this.f19155h.c(this);
                }
                if (this.f19150c.decrementAndGet() == 0) {
                    return;
                }
            }
        }

        @Override
        public void h(T t10) {
            io.reactivex.internal.util.k.e(this.f19149b, t10, this, this.f19151d);
        }

        @Override
        public void onError(Throwable th2) {
            Ge.d.a(this.f19153f);
            io.reactivex.internal.util.k.c(this.f19149b, th2, this, this.f19151d);
        }
    }

    public R0(Be.G<T> g10, Fe.o<? super Be.B<Object>, ? extends Be.G<?>> oVar) {
        super(g10);
        this.f19147c = oVar;
    }

    @Override
    public void J5(Be.I<? super T> i10) {
        AbstractC3885i<T> n82 = C3881e.p8().n8();
        try {
            Be.G g10 = (Be.G) He.b.g(this.f19147c.apply(n82), "The handler returned a null ObservableSource");
            a aVar = new a(i10, n82, this.f19344b);
            i10.e(aVar);
            g10.c(aVar.f19153f);
            aVar.g();
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            Ge.e.h(th2, i10);
        }
    }
}
