package Qe;

import java.util.concurrent.atomic.AtomicReference;

public final class C2990h<T, U> extends Be.K<T> {

    public final Be.Q<T> f22240b;

    public final Be.G<U> f22241c;

    public static final class a<T, U> extends AtomicReference<De.c> implements Be.I<U>, De.c {

        public static final long f22242e = -8565274649390031272L;

        public final Be.N<? super T> f22243b;

        public final Be.Q<T> f22244c;

        public boolean f22245d;

        public a(Be.N<? super T> n10, Be.Q<T> q10) {
            this.f22243b = n10;
            this.f22244c = q10;
        }

        @Override
        public void a() {
            if (this.f22245d) {
                return;
            }
            this.f22245d = true;
            this.f22244c.a(new Je.z(this, this.f22243b));
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
            if (Ge.d.g(this, cVar)) {
                this.f22243b.e(this);
            }
        }

        @Override
        public void h(U u10) {
            get().dispose();
            a();
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f22245d) {
                Ye.a.Y(th2);
            } else {
                this.f22245d = true;
                this.f22243b.onError(th2);
            }
        }
    }

    public C2990h(Be.Q<T> q10, Be.G<U> g10) {
        this.f22240b = q10;
        this.f22241c = g10;
    }

    @Override
    public void d1(Be.N<? super T> n10) {
        this.f22241c.c(new a(n10, this.f22240b));
    }
}
