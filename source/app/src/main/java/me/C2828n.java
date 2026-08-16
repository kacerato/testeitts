package Me;

import Be.InterfaceC2367q;
import java.util.concurrent.atomic.AtomicReference;

public final class C2828n<T, U> extends AbstractC2815a<T, T> {

    public final hn.b<U> f15141c;

    public static final class a<T> extends AtomicReference<De.c> implements Be.v<T> {

        public static final long f15142c = 706635022205076709L;

        public final Be.v<? super T> f15143b;

        public a(Be.v<? super T> vVar) {
            this.f15143b = vVar;
        }

        @Override
        public void a() {
            this.f15143b.a();
        }

        @Override
        public void b(T t10) {
            this.f15143b.b(t10);
        }

        @Override
        public void e(De.c cVar) {
            Ge.d.h(this, cVar);
        }

        @Override
        public void onError(Throwable th2) {
            this.f15143b.onError(th2);
        }
    }

    public static final class b<T> implements InterfaceC2367q<Object>, De.c {

        public final a<T> f15144b;

        public Be.y<T> f15145c;

        public hn.d f15146d;

        public b(Be.v<? super T> vVar, Be.y<T> yVar) {
            this.f15144b = new a<>(vVar);
            this.f15145c = yVar;
        }

        @Override
        public void a() {
            hn.d dVar = this.f15146d;
            Ue.j jVar = Ue.j.CANCELLED;
            if (dVar != jVar) {
                this.f15146d = jVar;
                b();
            }
        }

        public void b() {
            Be.y<T> yVar = this.f15145c;
            this.f15145c = null;
            yVar.d(this.f15144b);
        }

        @Override
        public boolean d() {
            return Ge.d.b(this.f15144b.get());
        }

        @Override
        public void dispose() {
            this.f15146d.cancel();
            this.f15146d = Ue.j.CANCELLED;
            Ge.d.a(this.f15144b);
        }

        @Override
        public void h(Object obj) {
            hn.d dVar = this.f15146d;
            Ue.j jVar = Ue.j.CANCELLED;
            if (dVar != jVar) {
                dVar.cancel();
                this.f15146d = jVar;
                b();
            }
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f15146d, dVar)) {
                this.f15146d = dVar;
                this.f15144b.f15143b.e(this);
                dVar.i(Long.MAX_VALUE);
            }
        }

        @Override
        public void onError(Throwable th2) {
            hn.d dVar = this.f15146d;
            Ue.j jVar = Ue.j.CANCELLED;
            if (dVar == jVar) {
                Ye.a.Y(th2);
            } else {
                this.f15146d = jVar;
                this.f15144b.f15143b.onError(th2);
            }
        }
    }

    public C2828n(Be.y<T> yVar, hn.b<U> bVar) {
        super(yVar);
        this.f15141c = bVar;
    }

    @Override
    public void t1(Be.v<? super T> vVar) {
        this.f15141c.l(new b(vVar, this.f14976b));
    }
}
