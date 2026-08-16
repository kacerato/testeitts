package Qe;

import java.util.concurrent.atomic.AtomicReference;

public final class C2992j<T, U> extends Be.K<T> {

    public final Be.Q<T> f22253b;

    public final Be.Q<U> f22254c;

    public static final class a<T, U> extends AtomicReference<De.c> implements Be.N<U>, De.c {

        public static final long f22255d = -8565274649390031272L;

        public final Be.N<? super T> f22256b;

        public final Be.Q<T> f22257c;

        public a(Be.N<? super T> n10, Be.Q<T> q10) {
            this.f22256b = n10;
            this.f22257c = q10;
        }

        @Override
        public void b(U u10) {
            this.f22257c.a(new Je.z(this, this.f22256b));
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
                this.f22256b.e(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f22256b.onError(th2);
        }
    }

    public C2992j(Be.Q<T> q10, Be.Q<U> q11) {
        this.f22253b = q10;
        this.f22254c = q11;
    }

    @Override
    public void d1(Be.N<? super T> n10) {
        this.f22254c.a(new a(n10, this.f22253b));
    }
}
