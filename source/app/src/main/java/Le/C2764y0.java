package Le;

import Be.AbstractC2368s;
import Be.InterfaceC2367q;

public final class C2764y0<T> extends AbstractC2368s<T> {

    public final hn.b<T> f13387b;

    public static final class a<T> implements InterfaceC2367q<T>, De.c {

        public final Be.v<? super T> f13388b;

        public hn.d f13389c;

        public T f13390d;

        public a(Be.v<? super T> vVar) {
            this.f13388b = vVar;
        }

        @Override
        public void a() {
            this.f13389c = Ue.j.CANCELLED;
            T t10 = this.f13390d;
            if (t10 == null) {
                this.f13388b.a();
            } else {
                this.f13390d = null;
                this.f13388b.b(t10);
            }
        }

        @Override
        public boolean d() {
            return this.f13389c == Ue.j.CANCELLED;
        }

        @Override
        public void dispose() {
            this.f13389c.cancel();
            this.f13389c = Ue.j.CANCELLED;
        }

        @Override
        public void h(T t10) {
            this.f13390d = t10;
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f13389c, dVar)) {
                this.f13389c = dVar;
                this.f13388b.e(this);
                dVar.i(Long.MAX_VALUE);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f13389c = Ue.j.CANCELLED;
            this.f13390d = null;
            this.f13388b.onError(th2);
        }
    }

    public C2764y0(hn.b<T> bVar) {
        this.f13387b = bVar;
    }

    @Override
    public void t1(Be.v<? super T> vVar) {
        this.f13387b.l(new a(vVar));
    }
}
