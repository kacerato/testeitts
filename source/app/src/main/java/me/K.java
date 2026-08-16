package Me;

import Be.AbstractC2368s;
import Be.InterfaceC2356f;
import Be.InterfaceC2359i;

public final class K<T> extends AbstractC2368s<T> implements Ie.e {

    public final InterfaceC2359i f14929b;

    public static final class a<T> implements InterfaceC2356f, De.c {

        public final Be.v<? super T> f14930b;

        public De.c f14931c;

        public a(Be.v<? super T> vVar) {
            this.f14930b = vVar;
        }

        @Override
        public void a() {
            this.f14931c = Ge.d.DISPOSED;
            this.f14930b.a();
        }

        @Override
        public boolean d() {
            return this.f14931c.d();
        }

        @Override
        public void dispose() {
            this.f14931c.dispose();
            this.f14931c = Ge.d.DISPOSED;
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f14931c, cVar)) {
                this.f14931c = cVar;
                this.f14930b.e(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f14931c = Ge.d.DISPOSED;
            this.f14930b.onError(th2);
        }
    }

    public K(InterfaceC2359i interfaceC2359i) {
        this.f14929b = interfaceC2359i;
    }

    @Override
    public InterfaceC2359i source() {
        return this.f14929b;
    }

    @Override
    public void t1(Be.v<? super T> vVar) {
        this.f14929b.b(new a(vVar));
    }
}
