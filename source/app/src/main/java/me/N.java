package Me;

import Be.AbstractC2368s;

public final class N<T> extends AbstractC2368s<T> implements Ie.i<T> {

    public final Be.Q<T> f14936b;

    public static final class a<T> implements Be.N<T>, De.c {

        public final Be.v<? super T> f14937b;

        public De.c f14938c;

        public a(Be.v<? super T> vVar) {
            this.f14937b = vVar;
        }

        @Override
        public void b(T t10) {
            this.f14938c = Ge.d.DISPOSED;
            this.f14937b.b(t10);
        }

        @Override
        public boolean d() {
            return this.f14938c.d();
        }

        @Override
        public void dispose() {
            this.f14938c.dispose();
            this.f14938c = Ge.d.DISPOSED;
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f14938c, cVar)) {
                this.f14938c = cVar;
                this.f14937b.e(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f14938c = Ge.d.DISPOSED;
            this.f14937b.onError(th2);
        }
    }

    public N(Be.Q<T> q10) {
        this.f14936b = q10;
    }

    @Override
    public Be.Q<T> source() {
        return this.f14936b;
    }

    @Override
    public void t1(Be.v<? super T> vVar) {
        this.f14936b.a(new a(vVar));
    }
}
