package Le;

import Be.InterfaceC2367q;
import java.util.NoSuchElementException;

public final class C2767z0<T> extends Be.K<T> {

    public final hn.b<T> f13406b;

    public final T f13407c;

    public static final class a<T> implements InterfaceC2367q<T>, De.c {

        public final Be.N<? super T> f13408b;

        public final T f13409c;

        public hn.d f13410d;

        public T f13411e;

        public a(Be.N<? super T> n10, T t10) {
            this.f13408b = n10;
            this.f13409c = t10;
        }

        @Override
        public void a() {
            this.f13410d = Ue.j.CANCELLED;
            T t10 = this.f13411e;
            if (t10 != null) {
                this.f13411e = null;
                this.f13408b.b(t10);
                return;
            }
            T t11 = this.f13409c;
            if (t11 != null) {
                this.f13408b.b(t11);
            } else {
                this.f13408b.onError(new NoSuchElementException());
            }
        }

        @Override
        public boolean d() {
            return this.f13410d == Ue.j.CANCELLED;
        }

        @Override
        public void dispose() {
            this.f13410d.cancel();
            this.f13410d = Ue.j.CANCELLED;
        }

        @Override
        public void h(T t10) {
            this.f13411e = t10;
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f13410d, dVar)) {
                this.f13410d = dVar;
                this.f13408b.e(this);
                dVar.i(Long.MAX_VALUE);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f13410d = Ue.j.CANCELLED;
            this.f13411e = null;
            this.f13408b.onError(th2);
        }
    }

    public C2767z0(hn.b<T> bVar, T t10) {
        this.f13406b = bVar;
        this.f13407c = t10;
    }

    @Override
    public void d1(Be.N<? super T> n10) {
        this.f13406b.l(new a(n10, this.f13407c));
    }
}
