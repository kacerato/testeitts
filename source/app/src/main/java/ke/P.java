package Ke;

import Be.InterfaceC2356f;
import Be.InterfaceC2359i;

public final class P<T> extends Be.B<T> {

    public final InterfaceC2359i f11208b;

    public static final class a extends Je.c<Void> implements InterfaceC2356f {

        public final Be.I<?> f11209b;

        public De.c f11210c;

        public a(Be.I<?> i10) {
            this.f11209b = i10;
        }

        @Override
        public void a() {
            this.f11209b.a();
        }

        @Override
        public Void poll() throws Exception {
            return null;
        }

        @Override
        public void clear() {
        }

        @Override
        public boolean d() {
            return this.f11210c.d();
        }

        @Override
        public void dispose() {
            this.f11210c.dispose();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f11210c, cVar)) {
                this.f11210c = cVar;
                this.f11209b.e(this);
            }
        }

        @Override
        public boolean isEmpty() {
            return true;
        }

        @Override
        public int m(int i10) {
            return i10 & 2;
        }

        @Override
        public void onError(Throwable th2) {
            this.f11209b.onError(th2);
        }
    }

    public P(InterfaceC2359i interfaceC2359i) {
        this.f11208b = interfaceC2359i;
    }

    @Override
    public void J5(Be.I<? super T> i10) {
        this.f11208b.b(new a(i10));
    }
}
