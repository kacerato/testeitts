package Le;

import Be.AbstractC2362l;

public final class Z<T> extends AbstractC2692a<T, T> {

    public final Fe.r<? super T> f12484d;

    public static final class a<T> extends Te.a<T, T> {

        public final Fe.r<? super T> f12485g;

        public a(Ie.a<? super T> aVar, Fe.r<? super T> rVar) {
            super(aVar);
            this.f12485g = rVar;
        }

        @Override
        public void h(T t10) {
            if (u(t10)) {
                return;
            }
            this.f24831c.i(1L);
        }

        @Override
        public int m(int i10) {
            return e(i10);
        }

        @Override
        @Ce.g
        public T poll() throws Exception {
            Ie.l<T> lVar = this.f24832d;
            Fe.r<? super T> rVar = this.f12485g;
            while (true) {
                T poll = lVar.poll();
                if (poll == null) {
                    return null;
                }
                if (rVar.test(poll)) {
                    return poll;
                }
                if (this.f24834f == 2) {
                    lVar.i(1L);
                }
            }
        }

        @Override
        public boolean u(T t10) {
            if (this.f24833e) {
                return false;
            }
            if (this.f24834f != 0) {
                return this.f24830b.u(null);
            }
            try {
                return this.f12485g.test(t10) && this.f24830b.u(t10);
            } catch (Throwable th2) {
                d(th2);
                return true;
            }
        }
    }

    public static final class b<T> extends Te.b<T, T> implements Ie.a<T> {

        public final Fe.r<? super T> f12486g;

        public b(hn.c<? super T> cVar, Fe.r<? super T> rVar) {
            super(cVar);
            this.f12486g = rVar;
        }

        @Override
        public void h(T t10) {
            if (u(t10)) {
                return;
            }
            this.f24836c.i(1L);
        }

        @Override
        public int m(int i10) {
            return e(i10);
        }

        @Override
        @Ce.g
        public T poll() throws Exception {
            Ie.l<T> lVar = this.f24837d;
            Fe.r<? super T> rVar = this.f12486g;
            while (true) {
                T poll = lVar.poll();
                if (poll == null) {
                    return null;
                }
                if (rVar.test(poll)) {
                    return poll;
                }
                if (this.f24839f == 2) {
                    lVar.i(1L);
                }
            }
        }

        @Override
        public boolean u(T t10) {
            if (this.f24838e) {
                return false;
            }
            if (this.f24839f != 0) {
                this.f24835b.h(null);
                return true;
            }
            try {
                boolean test = this.f12486g.test(t10);
                if (test) {
                    this.f24835b.h(t10);
                }
                return test;
            } catch (Throwable th2) {
                d(th2);
                return true;
            }
        }
    }

    public Z(AbstractC2362l<T> abstractC2362l, Fe.r<? super T> rVar) {
        super(abstractC2362l);
        this.f12484d = rVar;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        if (cVar instanceof Ie.a) {
            this.f12507c.l6(new a((Ie.a) cVar, this.f12484d));
        } else {
            this.f12507c.l6(new b(cVar, this.f12484d));
        }
    }
}
