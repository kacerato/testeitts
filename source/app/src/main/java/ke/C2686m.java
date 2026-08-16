package Ke;

import Be.AbstractC2353c;
import Be.InterfaceC2356f;
import Be.InterfaceC2359i;
import io.reactivex.exceptions.CompositeException;

public final class C2686m extends AbstractC2353c {

    public final InterfaceC2359i f11305b;

    public final Fe.g<? super Throwable> f11306c;

    public final class a implements InterfaceC2356f {

        public final InterfaceC2356f f11307b;

        public a(InterfaceC2356f interfaceC2356f) {
            this.f11307b = interfaceC2356f;
        }

        @Override
        public void a() {
            try {
                C2686m.this.f11306c.accept(null);
                this.f11307b.a();
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f11307b.onError(th2);
            }
        }

        @Override
        public void e(De.c cVar) {
            this.f11307b.e(cVar);
        }

        @Override
        public void onError(Throwable th2) {
            try {
                C2686m.this.f11306c.accept(th2);
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                th2 = new CompositeException(th2, th3);
            }
            this.f11307b.onError(th2);
        }
    }

    public C2686m(InterfaceC2359i interfaceC2359i, Fe.g<? super Throwable> gVar) {
        this.f11305b = interfaceC2359i;
        this.f11306c = gVar;
    }

    @Override
    public void K0(InterfaceC2356f interfaceC2356f) {
        this.f11305b.b(new a(interfaceC2356f));
    }
}
