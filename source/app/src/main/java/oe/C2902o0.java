package Oe;

import Be.AbstractC2353c;
import Be.InterfaceC2356f;

public final class C2902o0<T> extends AbstractC2353c implements Ie.d<T> {

    public final Be.G<T> f19706b;

    public static final class a<T> implements Be.I<T>, De.c {

        public final InterfaceC2356f f19707b;

        public De.c f19708c;

        public a(InterfaceC2356f interfaceC2356f) {
            this.f19707b = interfaceC2356f;
        }

        @Override
        public void a() {
            this.f19707b.a();
        }

        @Override
        public boolean d() {
            return this.f19708c.d();
        }

        @Override
        public void dispose() {
            this.f19708c.dispose();
        }

        @Override
        public void e(De.c cVar) {
            this.f19708c = cVar;
            this.f19707b.e(this);
        }

        @Override
        public void h(T t10) {
        }

        @Override
        public void onError(Throwable th2) {
            this.f19707b.onError(th2);
        }
    }

    public C2902o0(Be.G<T> g10) {
        this.f19706b = g10;
    }

    @Override
    public void K0(InterfaceC2356f interfaceC2356f) {
        this.f19706b.c(new a(interfaceC2356f));
    }

    @Override
    public Be.B<T> c() {
        return Ye.a.R(new C2899n0(this.f19706b));
    }
}
