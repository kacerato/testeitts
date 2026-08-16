package Ke;

import Be.AbstractC2353c;
import Be.InterfaceC2356f;
import Be.InterfaceC2367q;

public final class t<T> extends AbstractC2353c {

    public final hn.b<T> f11316b;

    public static final class a<T> implements InterfaceC2367q<T>, De.c {

        public final InterfaceC2356f f11317b;

        public hn.d f11318c;

        public a(InterfaceC2356f interfaceC2356f) {
            this.f11317b = interfaceC2356f;
        }

        @Override
        public void a() {
            this.f11317b.a();
        }

        @Override
        public boolean d() {
            return this.f11318c == Ue.j.CANCELLED;
        }

        @Override
        public void dispose() {
            this.f11318c.cancel();
            this.f11318c = Ue.j.CANCELLED;
        }

        @Override
        public void h(T t10) {
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f11318c, dVar)) {
                this.f11318c = dVar;
                this.f11317b.e(this);
                dVar.i(Long.MAX_VALUE);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f11317b.onError(th2);
        }
    }

    public t(hn.b<T> bVar) {
        this.f11316b = bVar;
    }

    @Override
    public void K0(InterfaceC2356f interfaceC2356f) {
        this.f11316b.l(new a(interfaceC2356f));
    }
}
