package Qe;

import Be.InterfaceC2356f;
import Be.InterfaceC2359i;
import java.util.concurrent.atomic.AtomicReference;

public final class C2989g<T> extends Be.K<T> {

    public final Be.Q<T> f22235b;

    public final InterfaceC2359i f22236c;

    public static final class a<T> extends AtomicReference<De.c> implements InterfaceC2356f, De.c {

        public static final long f22237d = -8565274649390031272L;

        public final Be.N<? super T> f22238b;

        public final Be.Q<T> f22239c;

        public a(Be.N<? super T> n10, Be.Q<T> q10) {
            this.f22238b = n10;
            this.f22239c = q10;
        }

        @Override
        public void a() {
            this.f22239c.a(new Je.z(this, this.f22238b));
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
            if (Ge.d.h(this, cVar)) {
                this.f22238b.e(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f22238b.onError(th2);
        }
    }

    public C2989g(Be.Q<T> q10, InterfaceC2359i interfaceC2359i) {
        this.f22235b = q10;
        this.f22236c = interfaceC2359i;
    }

    @Override
    public void d1(Be.N<? super T> n10) {
        this.f22236c.b(new a(n10, this.f22235b));
    }
}
