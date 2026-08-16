package Me;

import Be.AbstractC2362l;

public final class n0<T> extends AbstractC2362l<T> implements Ie.f<T> {

    public final Be.y<T> f15147c;

    public static final class a<T> extends Ue.f<T> implements Be.v<T> {

        public static final long f15148o = 7603343402964826922L;

        public De.c f15149n;

        public a(hn.c<? super T> cVar) {
            super(cVar);
        }

        @Override
        public void a() {
            this.f26033c.a();
        }

        @Override
        public void b(T t10) {
            d(t10);
        }

        @Override
        public void cancel() {
            super.cancel();
            this.f15149n.dispose();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f15149n, cVar)) {
                this.f15149n = cVar;
                this.f26033c.j(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f26033c.onError(th2);
        }
    }

    public n0(Be.y<T> yVar) {
        this.f15147c = yVar;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        this.f15147c.d(new a(cVar));
    }

    @Override
    public Be.y<T> source() {
        return this.f15147c;
    }
}
