package Ne;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import Be.v;
import Be.y;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class k<T, R> extends AbstractC2362l<R> {

    public final y<T> f16047c;

    public final Fe.o<? super T, ? extends hn.b<? extends R>> f16048d;

    public static final class a<T, R> extends AtomicReference<hn.d> implements InterfaceC2367q<R>, v<T>, hn.d {

        public static final long f16049f = -8948264376121066672L;

        public final hn.c<? super R> f16050b;

        public final Fe.o<? super T, ? extends hn.b<? extends R>> f16051c;

        public De.c f16052d;

        public final AtomicLong f16053e = new AtomicLong();

        public a(hn.c<? super R> cVar, Fe.o<? super T, ? extends hn.b<? extends R>> oVar) {
            this.f16050b = cVar;
            this.f16051c = oVar;
        }

        @Override
        public void a() {
            this.f16050b.a();
        }

        @Override
        public void b(T t10) {
            try {
                ((hn.b) He.b.g(this.f16051c.apply(t10), "The mapper returned a null Publisher")).l(this);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f16050b.onError(th2);
            }
        }

        @Override
        public void cancel() {
            this.f16052d.dispose();
            Ue.j.a(this);
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f16052d, cVar)) {
                this.f16052d = cVar;
                this.f16050b.j(this);
            }
        }

        @Override
        public void h(R r10) {
            this.f16050b.h(r10);
        }

        @Override
        public void i(long j10) {
            Ue.j.b(this, this.f16053e, j10);
        }

        @Override
        public void j(hn.d dVar) {
            Ue.j.c(this, this.f16053e, dVar);
        }

        @Override
        public void onError(Throwable th2) {
            this.f16050b.onError(th2);
        }
    }

    public k(y<T> yVar, Fe.o<? super T, ? extends hn.b<? extends R>> oVar) {
        this.f16047c = yVar;
        this.f16048d = oVar;
    }

    @Override
    public void m6(hn.c<? super R> cVar) {
        this.f16047c.d(new a(cVar, this.f16048d));
    }
}
