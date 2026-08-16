package Ne;

import Be.B;
import Be.G;
import Be.I;
import Be.InterfaceC2356f;
import Be.InterfaceC2359i;
import java.util.concurrent.atomic.AtomicReference;

public final class a<R> extends B<R> {

    public final InterfaceC2359i f15910b;

    public final G<? extends R> f15911c;

    public static final class C0445a<R> extends AtomicReference<De.c> implements I<R>, InterfaceC2356f, De.c {

        public static final long f15912d = -8948264376121066672L;

        public final I<? super R> f15913b;

        public G<? extends R> f15914c;

        public C0445a(I<? super R> i10, G<? extends R> g10) {
            this.f15914c = g10;
            this.f15913b = i10;
        }

        @Override
        public void a() {
            G<? extends R> g10 = this.f15914c;
            if (g10 == null) {
                this.f15913b.a();
            } else {
                this.f15914c = null;
                g10.c(this);
            }
        }

        @Override
        public boolean d() {
            return Ge.d.b(get());
        }

        @Override
        public void dispose() {
            Ge.d.a(this);
        }

        @Override
        public void e(De.c cVar) {
            Ge.d.c(this, cVar);
        }

        @Override
        public void h(R r10) {
            this.f15913b.h(r10);
        }

        @Override
        public void onError(Throwable th2) {
            this.f15913b.onError(th2);
        }
    }

    public a(InterfaceC2359i interfaceC2359i, G<? extends R> g10) {
        this.f15910b = interfaceC2359i;
        this.f15911c = g10;
    }

    @Override
    public void J5(I<? super R> i10) {
        C0445a c0445a = new C0445a(i10, this.f15911c);
        i10.e(c0445a);
        this.f15910b.b(c0445a);
    }
}
