package Ke;

import Be.AbstractC2353c;
import Be.InterfaceC2356f;

public final class C2691s<T> extends AbstractC2353c {

    public final Be.G<T> f11314b;

    public static final class a<T> implements Be.I<T> {

        public final InterfaceC2356f f11315b;

        public a(InterfaceC2356f interfaceC2356f) {
            this.f11315b = interfaceC2356f;
        }

        @Override
        public void a() {
            this.f11315b.a();
        }

        @Override
        public void e(De.c cVar) {
            this.f11315b.e(cVar);
        }

        @Override
        public void h(T t10) {
        }

        @Override
        public void onError(Throwable th2) {
            this.f11315b.onError(th2);
        }
    }

    public C2691s(Be.G<T> g10) {
        this.f11314b = g10;
    }

    @Override
    public void K0(InterfaceC2356f interfaceC2356f) {
        this.f11314b.c(new a(interfaceC2356f));
    }
}
