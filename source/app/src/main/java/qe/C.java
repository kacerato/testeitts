package Qe;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class C<T, R> extends AbstractC2362l<R> {

    public final Be.Q<T> f22085c;

    public final Fe.o<? super T, ? extends hn.b<? extends R>> f22086d;

    public static final class a<S, T> extends AtomicLong implements Be.N<S>, InterfaceC2367q<T>, hn.d {

        public static final long f22087f = 7759721921468635667L;

        public final hn.c<? super T> f22088b;

        public final Fe.o<? super S, ? extends hn.b<? extends T>> f22089c;

        public final AtomicReference<hn.d> f22090d = new AtomicReference<>();

        public De.c f22091e;

        public a(hn.c<? super T> cVar, Fe.o<? super S, ? extends hn.b<? extends T>> oVar) {
            this.f22088b = cVar;
            this.f22089c = oVar;
        }

        @Override
        public void a() {
            this.f22088b.a();
        }

        @Override
        public void b(S s10) {
            try {
                ((hn.b) He.b.g(this.f22089c.apply(s10), "the mapper returned a null Publisher")).l(this);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f22088b.onError(th2);
            }
        }

        @Override
        public void cancel() {
            this.f22091e.dispose();
            Ue.j.a(this.f22090d);
        }

        @Override
        public void e(De.c cVar) {
            this.f22091e = cVar;
            this.f22088b.j(this);
        }

        @Override
        public void h(T t10) {
            this.f22088b.h(t10);
        }

        @Override
        public void i(long j10) {
            Ue.j.b(this.f22090d, this, j10);
        }

        @Override
        public void j(hn.d dVar) {
            Ue.j.c(this.f22090d, this, dVar);
        }

        @Override
        public void onError(Throwable th2) {
            this.f22088b.onError(th2);
        }
    }

    public C(Be.Q<T> q10, Fe.o<? super T, ? extends hn.b<? extends R>> oVar) {
        this.f22085c = q10;
        this.f22086d = oVar;
    }

    @Override
    public void m6(hn.c<? super R> cVar) {
        this.f22085c.a(new a(cVar, this.f22086d));
    }
}
