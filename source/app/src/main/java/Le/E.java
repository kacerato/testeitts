package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;

public final class E<T> extends Be.K<Long> implements Ie.b<Long> {

    public final AbstractC2362l<T> f11794b;

    public static final class a implements InterfaceC2367q<Object>, De.c {

        public final Be.N<? super Long> f11795b;

        public hn.d f11796c;

        public long f11797d;

        public a(Be.N<? super Long> n10) {
            this.f11795b = n10;
        }

        @Override
        public void a() {
            this.f11796c = Ue.j.CANCELLED;
            this.f11795b.b(Long.valueOf(this.f11797d));
        }

        @Override
        public boolean d() {
            return this.f11796c == Ue.j.CANCELLED;
        }

        @Override
        public void dispose() {
            this.f11796c.cancel();
            this.f11796c = Ue.j.CANCELLED;
        }

        @Override
        public void h(Object obj) {
            this.f11797d++;
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f11796c, dVar)) {
                this.f11796c = dVar;
                this.f11795b.e(this);
                dVar.i(Long.MAX_VALUE);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f11796c = Ue.j.CANCELLED;
            this.f11795b.onError(th2);
        }
    }

    public E(AbstractC2362l<T> abstractC2362l) {
        this.f11794b = abstractC2362l;
    }

    @Override
    public void d1(Be.N<? super Long> n10) {
        this.f11794b.l6(new a(n10));
    }

    @Override
    public AbstractC2362l<Long> f() {
        return Ye.a.P(new D(this.f11794b));
    }
}
