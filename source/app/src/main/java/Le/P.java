package Le;

import Be.AbstractC2362l;

public final class P<T> extends AbstractC2692a<T, T> {

    public final Fe.g<? super T> f12146d;

    public static final class a<T> extends Te.a<T, T> {

        public final Fe.g<? super T> f12147g;

        public a(Ie.a<? super T> aVar, Fe.g<? super T> gVar) {
            super(aVar);
            this.f12147g = gVar;
        }

        @Override
        public void h(T t10) {
            this.f24830b.h(t10);
            if (this.f24834f == 0) {
                try {
                    this.f12147g.accept(t10);
                } catch (Throwable th2) {
                    d(th2);
                }
            }
        }

        @Override
        public int m(int i10) {
            return e(i10);
        }

        @Override
        @Ce.g
        public T poll() throws Exception {
            T poll = this.f24832d.poll();
            if (poll != null) {
                this.f12147g.accept(poll);
            }
            return poll;
        }

        @Override
        public boolean u(T t10) {
            boolean u10 = this.f24830b.u(t10);
            try {
                this.f12147g.accept(t10);
            } catch (Throwable th2) {
                d(th2);
            }
            return u10;
        }
    }

    public static final class b<T> extends Te.b<T, T> {

        public final Fe.g<? super T> f12148g;

        public b(hn.c<? super T> cVar, Fe.g<? super T> gVar) {
            super(cVar);
            this.f12148g = gVar;
        }

        @Override
        public void h(T t10) {
            if (this.f24838e) {
                return;
            }
            this.f24835b.h(t10);
            if (this.f24839f == 0) {
                try {
                    this.f12148g.accept(t10);
                } catch (Throwable th2) {
                    d(th2);
                }
            }
        }

        @Override
        public int m(int i10) {
            return e(i10);
        }

        @Override
        @Ce.g
        public T poll() throws Exception {
            T poll = this.f24837d.poll();
            if (poll != null) {
                this.f12148g.accept(poll);
            }
            return poll;
        }
    }

    public P(AbstractC2362l<T> abstractC2362l, Fe.g<? super T> gVar) {
        super(abstractC2362l);
        this.f12146d = gVar;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        if (cVar instanceof Ie.a) {
            this.f12507c.l6(new a((Ie.a) cVar, this.f12146d));
        } else {
            this.f12507c.l6(new b(cVar, this.f12146d));
        }
    }
}
