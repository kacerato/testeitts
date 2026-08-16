package Oe;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

public final class D<T, U> extends AbstractC2859a<T, T> {

    public final Fe.o<? super T, ? extends Be.G<U>> f18755c;

    public static final class a<T, U> implements Be.I<T>, De.c {

        public final Be.I<? super T> f18756b;

        public final Fe.o<? super T, ? extends Be.G<U>> f18757c;

        public De.c f18758d;

        public final AtomicReference<De.c> f18759e = new AtomicReference<>();

        public volatile long f18760f;

        public boolean f18761g;

        public static final class C0476a<T, U> extends We.e<U> {

            public final a<T, U> f18762c;

            public final long f18763d;

            public final T f18764e;

            public boolean f18765f;

            public final AtomicBoolean f18766g = new AtomicBoolean();

            public C0476a(a<T, U> aVar, long j10, T t10) {
                this.f18762c = aVar;
                this.f18763d = j10;
                this.f18764e = t10;
            }

            @Override
            public void a() {
                if (this.f18765f) {
                    return;
                }
                this.f18765f = true;
                f();
            }

            public void f() {
                if (this.f18766g.compareAndSet(false, true)) {
                    this.f18762c.b(this.f18763d, this.f18764e);
                }
            }

            @Override
            public void h(U u10) {
                if (this.f18765f) {
                    return;
                }
                this.f18765f = true;
                dispose();
                f();
            }

            @Override
            public void onError(Throwable th2) {
                if (this.f18765f) {
                    Ye.a.Y(th2);
                } else {
                    this.f18765f = true;
                    this.f18762c.onError(th2);
                }
            }
        }

        public a(Be.I<? super T> i10, Fe.o<? super T, ? extends Be.G<U>> oVar) {
            this.f18756b = i10;
            this.f18757c = oVar;
        }

        @Override
        public void a() {
            if (this.f18761g) {
                return;
            }
            this.f18761g = true;
            De.c cVar = this.f18759e.get();
            if (cVar != Ge.d.DISPOSED) {
                ((C0476a) cVar).f();
                Ge.d.a(this.f18759e);
                this.f18756b.a();
            }
        }

        public void b(long j10, T t10) {
            if (j10 == this.f18760f) {
                this.f18756b.h(t10);
            }
        }

        @Override
        public boolean d() {
            return this.f18758d.d();
        }

        @Override
        public void dispose() {
            this.f18758d.dispose();
            Ge.d.a(this.f18759e);
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f18758d, cVar)) {
                this.f18758d = cVar;
                this.f18756b.e(this);
            }
        }

        @Override
        public void h(T t10) {
            if (this.f18761g) {
                return;
            }
            long j10 = this.f18760f + 1;
            this.f18760f = j10;
            De.c cVar = this.f18759e.get();
            if (cVar != null) {
                cVar.dispose();
            }
            try {
                Be.G g10 = (Be.G) He.b.g(this.f18757c.apply(t10), "The ObservableSource supplied is null");
                C0476a c0476a = new C0476a(this, j10, t10);
                if (androidx.lifecycle.c.a(this.f18759e, cVar, c0476a)) {
                    g10.c(c0476a);
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                dispose();
                this.f18756b.onError(th2);
            }
        }

        @Override
        public void onError(Throwable th2) {
            Ge.d.a(this.f18759e);
            this.f18756b.onError(th2);
        }
    }

    public D(Be.G<T> g10, Fe.o<? super T, ? extends Be.G<U>> oVar) {
        super(g10);
        this.f18755c = oVar;
    }

    @Override
    public void J5(Be.I<? super T> i10) {
        this.f19344b.c(new a(new We.m(i10), this.f18755c));
    }
}
