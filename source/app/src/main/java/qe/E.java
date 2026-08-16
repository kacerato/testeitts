package Qe;

import Be.InterfaceC2367q;
import java.util.NoSuchElementException;

public final class E<T> extends Be.K<T> {

    public final hn.b<? extends T> f22093b;

    public static final class a<T> implements InterfaceC2367q<T>, De.c {

        public final Be.N<? super T> f22094b;

        public hn.d f22095c;

        public T f22096d;

        public boolean f22097e;

        public volatile boolean f22098f;

        public a(Be.N<? super T> n10) {
            this.f22094b = n10;
        }

        @Override
        public void a() {
            if (this.f22097e) {
                return;
            }
            this.f22097e = true;
            T t10 = this.f22096d;
            this.f22096d = null;
            if (t10 == null) {
                this.f22094b.onError(new NoSuchElementException("The source Publisher is empty"));
            } else {
                this.f22094b.b(t10);
            }
        }

        @Override
        public boolean d() {
            return this.f22098f;
        }

        @Override
        public void dispose() {
            this.f22098f = true;
            this.f22095c.cancel();
        }

        @Override
        public void h(T t10) {
            if (this.f22097e) {
                return;
            }
            if (this.f22096d == null) {
                this.f22096d = t10;
                return;
            }
            this.f22095c.cancel();
            this.f22097e = true;
            this.f22096d = null;
            this.f22094b.onError(new IndexOutOfBoundsException("Too many elements in the Publisher"));
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f22095c, dVar)) {
                this.f22095c = dVar;
                this.f22094b.e(this);
                dVar.i(Long.MAX_VALUE);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f22097e) {
                Ye.a.Y(th2);
                return;
            }
            this.f22097e = true;
            this.f22096d = null;
            this.f22094b.onError(th2);
        }
    }

    public E(hn.b<? extends T> bVar) {
        this.f22093b = bVar;
    }

    @Override
    public void d1(Be.N<? super T> n10) {
        this.f22093b.l(new a(n10));
    }
}
