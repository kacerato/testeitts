package Ke;

import Be.AbstractC2353c;
import Be.InterfaceC2356f;
import Be.InterfaceC2359i;
import io.reactivex.exceptions.CompositeException;

public final class H extends AbstractC2353c {

    public final InterfaceC2359i f11155b;

    public final Fe.r<? super Throwable> f11156c;

    public final class a implements InterfaceC2356f {

        public final InterfaceC2356f f11157b;

        public a(InterfaceC2356f interfaceC2356f) {
            this.f11157b = interfaceC2356f;
        }

        @Override
        public void a() {
            this.f11157b.a();
        }

        @Override
        public void e(De.c cVar) {
            this.f11157b.e(cVar);
        }

        @Override
        public void onError(Throwable th2) {
            try {
                if (H.this.f11156c.test(th2)) {
                    this.f11157b.a();
                } else {
                    this.f11157b.onError(th2);
                }
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                this.f11157b.onError(new CompositeException(th2, th3));
            }
        }
    }

    public H(InterfaceC2359i interfaceC2359i, Fe.r<? super Throwable> rVar) {
        this.f11155b = interfaceC2359i;
        this.f11156c = rVar;
    }

    @Override
    public void K0(InterfaceC2356f interfaceC2356f) {
        this.f11155b.b(new a(interfaceC2356f));
    }
}
