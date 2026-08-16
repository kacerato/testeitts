package Qe;

import Be.InterfaceC2367q;
import java.util.concurrent.atomic.AtomicReference;

public final class C2991i<T, U> extends Be.K<T> {

    public final Be.Q<T> f22246b;

    public final hn.b<U> f22247c;

    public static final class a<T, U> extends AtomicReference<De.c> implements InterfaceC2367q<U>, De.c {

        public static final long f22248f = -8565274649390031272L;

        public final Be.N<? super T> f22249b;

        public final Be.Q<T> f22250c;

        public boolean f22251d;

        public hn.d f22252e;

        public a(Be.N<? super T> n10, Be.Q<T> q10) {
            this.f22249b = n10;
            this.f22250c = q10;
        }

        @Override
        public void a() {
            if (this.f22251d) {
                return;
            }
            this.f22251d = true;
            this.f22250c.a(new Je.z(this, this.f22249b));
        }

        @Override
        public boolean d() {
            return Ge.d.b(get());
        }

        @Override
        public void dispose() {
            this.f22252e.cancel();
            Ge.d.a(this);
        }

        @Override
        public void h(U u10) {
            this.f22252e.cancel();
            a();
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f22252e, dVar)) {
                this.f22252e = dVar;
                this.f22249b.e(this);
                dVar.i(Long.MAX_VALUE);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f22251d) {
                Ye.a.Y(th2);
            } else {
                this.f22251d = true;
                this.f22249b.onError(th2);
            }
        }
    }

    public C2991i(Be.Q<T> q10, hn.b<U> bVar) {
        this.f22246b = q10;
        this.f22247c = bVar;
    }

    @Override
    public void d1(Be.N<? super T> n10) {
        this.f22247c.l(new a(n10, this.f22246b));
    }
}
