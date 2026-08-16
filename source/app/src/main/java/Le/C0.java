package Le;

import Be.AbstractC2362l;

public final class C0<T, U> extends AbstractC2692a<T, U> {

    public final Fe.o<? super T, ? extends U> f11770d;

    public static final class a<T, U> extends Te.a<T, U> {

        public final Fe.o<? super T, ? extends U> f11771g;

        public a(Ie.a<? super U> aVar, Fe.o<? super T, ? extends U> oVar) {
            super(aVar);
            this.f11771g = oVar;
        }

        @Override
        public void h(T t10) {
            if (this.f24833e) {
                return;
            }
            if (this.f24834f != 0) {
                this.f24830b.h(null);
                return;
            }
            try {
                this.f24830b.h(He.b.g(this.f11771g.apply(t10), "The mapper function returned a null value."));
            } catch (Throwable th2) {
                d(th2);
            }
        }

        @Override
        public int m(int i10) {
            return e(i10);
        }

        @Override
        @Ce.g
        public U poll() throws Exception {
            T poll = this.f24832d.poll();
            if (poll != null) {
                return (U) He.b.g(this.f11771g.apply(poll), "The mapper function returned a null value.");
            }
            return null;
        }

        @Override
        public boolean u(T t10) {
            if (this.f24833e) {
                return false;
            }
            try {
                return this.f24830b.u(He.b.g(this.f11771g.apply(t10), "The mapper function returned a null value."));
            } catch (Throwable th2) {
                d(th2);
                return true;
            }
        }
    }

    public static final class b<T, U> extends Te.b<T, U> {

        public final Fe.o<? super T, ? extends U> f11772g;

        public b(hn.c<? super U> cVar, Fe.o<? super T, ? extends U> oVar) {
            super(cVar);
            this.f11772g = oVar;
        }

        @Override
        public void h(T t10) {
            if (this.f24838e) {
                return;
            }
            if (this.f24839f != 0) {
                this.f24835b.h(null);
                return;
            }
            try {
                this.f24835b.h(He.b.g(this.f11772g.apply(t10), "The mapper function returned a null value."));
            } catch (Throwable th2) {
                d(th2);
            }
        }

        @Override
        public int m(int i10) {
            return e(i10);
        }

        @Override
        @Ce.g
        public U poll() throws Exception {
            T poll = this.f24837d.poll();
            if (poll != null) {
                return (U) He.b.g(this.f11772g.apply(poll), "The mapper function returned a null value.");
            }
            return null;
        }
    }

    public C0(AbstractC2362l<T> abstractC2362l, Fe.o<? super T, ? extends U> oVar) {
        super(abstractC2362l);
        this.f11770d = oVar;
    }

    @Override
    public void m6(hn.c<? super U> cVar) {
        if (cVar instanceof Ie.a) {
            this.f12507c.l6(new a((Ie.a) cVar, this.f11770d));
        } else {
            this.f12507c.l6(new b(cVar, this.f11770d));
        }
    }
}
