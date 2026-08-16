package Ne;

import Be.AbstractC2362l;
import Be.InterfaceC2356f;
import Be.InterfaceC2359i;
import Be.InterfaceC2367q;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class b<R> extends AbstractC2362l<R> {

    public final InterfaceC2359i f15915c;

    public final hn.b<? extends R> f15916d;

    public static final class a<R> extends AtomicReference<hn.d> implements InterfaceC2367q<R>, InterfaceC2356f, hn.d {

        public static final long f15917f = -8948264376121066672L;

        public final hn.c<? super R> f15918b;

        public hn.b<? extends R> f15919c;

        public De.c f15920d;

        public final AtomicLong f15921e = new AtomicLong();

        public a(hn.c<? super R> cVar, hn.b<? extends R> bVar) {
            this.f15918b = cVar;
            this.f15919c = bVar;
        }

        @Override
        public void a() {
            hn.b<? extends R> bVar = this.f15919c;
            if (bVar == null) {
                this.f15918b.a();
            } else {
                this.f15919c = null;
                bVar.l(this);
            }
        }

        @Override
        public void cancel() {
            this.f15920d.dispose();
            Ue.j.a(this);
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f15920d, cVar)) {
                this.f15920d = cVar;
                this.f15918b.j(this);
            }
        }

        @Override
        public void h(R r10) {
            this.f15918b.h(r10);
        }

        @Override
        public void i(long j10) {
            Ue.j.b(this, this.f15921e, j10);
        }

        @Override
        public void j(hn.d dVar) {
            Ue.j.c(this, this.f15921e, dVar);
        }

        @Override
        public void onError(Throwable th2) {
            this.f15918b.onError(th2);
        }
    }

    public b(InterfaceC2359i interfaceC2359i, hn.b<? extends R> bVar) {
        this.f15915c = interfaceC2359i;
        this.f15916d = bVar;
    }

    @Override
    public void m6(hn.c<? super R> cVar) {
        this.f15915c.b(new a(cVar, this.f15916d));
    }
}
