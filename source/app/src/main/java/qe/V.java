package Qe;

import Be.AbstractC2362l;

public final class V<T> extends AbstractC2362l<T> {

    public final Be.Q<? extends T> f22163c;

    public static final class a<T> extends Ue.f<T> implements Be.N<T> {

        public static final long f22164o = 187782011903685568L;

        public De.c f22165n;

        public a(hn.c<? super T> cVar) {
            super(cVar);
        }

        @Override
        public void b(T t10) {
            d(t10);
        }

        @Override
        public void cancel() {
            super.cancel();
            this.f22165n.dispose();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f22165n, cVar)) {
                this.f22165n = cVar;
                this.f26033c.j(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f26033c.onError(th2);
        }
    }

    public V(Be.Q<? extends T> q10) {
        this.f22163c = q10;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        this.f22163c.a(new a(cVar));
    }
}
