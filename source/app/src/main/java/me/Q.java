package Me;

import Be.AbstractC2353c;
import Be.AbstractC2368s;
import Be.InterfaceC2356f;

public final class Q<T> extends AbstractC2353c implements Ie.c<T> {

    public final Be.y<T> f14943b;

    public static final class a<T> implements Be.v<T>, De.c {

        public final InterfaceC2356f f14944b;

        public De.c f14945c;

        public a(InterfaceC2356f interfaceC2356f) {
            this.f14944b = interfaceC2356f;
        }

        @Override
        public void a() {
            this.f14945c = Ge.d.DISPOSED;
            this.f14944b.a();
        }

        @Override
        public void b(T t10) {
            this.f14945c = Ge.d.DISPOSED;
            this.f14944b.a();
        }

        @Override
        public boolean d() {
            return this.f14945c.d();
        }

        @Override
        public void dispose() {
            this.f14945c.dispose();
            this.f14945c = Ge.d.DISPOSED;
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f14945c, cVar)) {
                this.f14945c = cVar;
                this.f14944b.e(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f14945c = Ge.d.DISPOSED;
            this.f14944b.onError(th2);
        }
    }

    public Q(Be.y<T> yVar) {
        this.f14943b = yVar;
    }

    @Override
    public void K0(InterfaceC2356f interfaceC2356f) {
        this.f14943b.d(new a(interfaceC2356f));
    }

    @Override
    public AbstractC2368s<T> d() {
        return Ye.a.Q(new P(this.f14943b));
    }
}
