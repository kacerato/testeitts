package Ke;

import Be.AbstractC2353c;
import Be.InterfaceC2356f;

public final class v<T> extends AbstractC2353c {

    public final Be.Q<T> f11320b;

    public static final class a<T> implements Be.N<T> {

        public final InterfaceC2356f f11321b;

        public a(InterfaceC2356f interfaceC2356f) {
            this.f11321b = interfaceC2356f;
        }

        @Override
        public void b(T t10) {
            this.f11321b.a();
        }

        @Override
        public void e(De.c cVar) {
            this.f11321b.e(cVar);
        }

        @Override
        public void onError(Throwable th2) {
            this.f11321b.onError(th2);
        }
    }

    public v(Be.Q<T> q10) {
        this.f11320b = q10;
    }

    @Override
    public void K0(InterfaceC2356f interfaceC2356f) {
        this.f11320b.a(new a(interfaceC2356f));
    }
}
