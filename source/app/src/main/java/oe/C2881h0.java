package Oe;

import Be.InterfaceC2367q;

public final class C2881h0<T> extends Be.B<T> {

    public final hn.b<? extends T> f19503b;

    public static final class a<T> implements InterfaceC2367q<T>, De.c {

        public final Be.I<? super T> f19504b;

        public hn.d f19505c;

        public a(Be.I<? super T> i10) {
            this.f19504b = i10;
        }

        @Override
        public void a() {
            this.f19504b.a();
        }

        @Override
        public boolean d() {
            return this.f19505c == Ue.j.CANCELLED;
        }

        @Override
        public void dispose() {
            this.f19505c.cancel();
            this.f19505c = Ue.j.CANCELLED;
        }

        @Override
        public void h(T t10) {
            this.f19504b.h(t10);
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f19505c, dVar)) {
                this.f19505c = dVar;
                this.f19504b.e(this);
                dVar.i(Long.MAX_VALUE);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f19504b.onError(th2);
        }
    }

    public C2881h0(hn.b<? extends T> bVar) {
        this.f19503b = bVar;
    }

    @Override
    public void J5(Be.I<? super T> i10) {
        this.f19503b.l(new a(i10));
    }
}
