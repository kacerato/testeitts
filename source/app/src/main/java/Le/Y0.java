package Le;

import Be.InterfaceC2367q;

public final class Y0<T, R> extends Be.K<R> {

    public final hn.b<T> f12467b;

    public final R f12468c;

    public final Fe.c<R, ? super T, R> f12469d;

    public static final class a<T, R> implements InterfaceC2367q<T>, De.c {

        public final Be.N<? super R> f12470b;

        public final Fe.c<R, ? super T, R> f12471c;

        public R f12472d;

        public hn.d f12473e;

        public a(Be.N<? super R> n10, Fe.c<R, ? super T, R> cVar, R r10) {
            this.f12470b = n10;
            this.f12472d = r10;
            this.f12471c = cVar;
        }

        @Override
        public void a() {
            R r10 = this.f12472d;
            if (r10 != null) {
                this.f12472d = null;
                this.f12473e = Ue.j.CANCELLED;
                this.f12470b.b(r10);
            }
        }

        @Override
        public boolean d() {
            return this.f12473e == Ue.j.CANCELLED;
        }

        @Override
        public void dispose() {
            this.f12473e.cancel();
            this.f12473e = Ue.j.CANCELLED;
        }

        @Override
        public void h(T t10) {
            R r10 = this.f12472d;
            if (r10 != null) {
                try {
                    this.f12472d = (R) He.b.g(this.f12471c.apply(r10, t10), "The reducer returned a null value");
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    this.f12473e.cancel();
                    onError(th2);
                }
            }
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f12473e, dVar)) {
                this.f12473e = dVar;
                this.f12470b.e(this);
                dVar.i(Long.MAX_VALUE);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f12472d == null) {
                Ye.a.Y(th2);
                return;
            }
            this.f12472d = null;
            this.f12473e = Ue.j.CANCELLED;
            this.f12470b.onError(th2);
        }
    }

    public Y0(hn.b<T> bVar, R r10, Fe.c<R, ? super T, R> cVar) {
        this.f12467b = bVar;
        this.f12468c = r10;
        this.f12469d = cVar;
    }

    @Override
    public void d1(Be.N<? super R> n10) {
        this.f12467b.l(new a(n10, this.f12469d, this.f12468c));
    }
}
