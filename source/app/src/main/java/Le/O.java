package Le;

import Be.AbstractC2362l;

public final class O<T, K> extends AbstractC2692a<T, T> {

    public final Fe.o<? super T, K> f12126d;

    public final Fe.d<? super K, ? super K> f12127e;

    public static final class a<T, K> extends Te.a<T, T> {

        public final Fe.o<? super T, K> f12128g;

        public final Fe.d<? super K, ? super K> f12129h;

        public K f12130i;

        public boolean f12131j;

        public a(Ie.a<? super T> aVar, Fe.o<? super T, K> oVar, Fe.d<? super K, ? super K> dVar) {
            super(aVar);
            this.f12128g = oVar;
            this.f12129h = dVar;
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
            while (true) {
                T poll = this.f24832d.poll();
                if (poll == null) {
                    return null;
                }
                K apply = this.f12128g.apply(poll);
                if (!this.f12131j) {
                    this.f12131j = true;
                    this.f12130i = apply;
                    return poll;
                }
                if (!this.f12129h.test(this.f12130i, apply)) {
                    this.f12130i = apply;
                    return poll;
                }
                this.f12130i = apply;
                if (this.f24834f != 1) {
                    this.f24831c.i(1L);
                }
            }
        }

        @Override
        public boolean u(T t10) {
            if (this.f24833e) {
                return false;
            }
            if (this.f24834f != 0) {
                return this.f24830b.u(t10);
            }
            try {
                K apply = this.f12128g.apply(t10);
                if (this.f12131j) {
                    boolean test = this.f12129h.test(this.f12130i, apply);
                    this.f12130i = apply;
                    if (test) {
                        return false;
                    }
                } else {
                    this.f12131j = true;
                    this.f12130i = apply;
                }
                this.f24830b.h(t10);
                return true;
            } catch (Throwable th2) {
                d(th2);
                return true;
            }
        }
    }

    public static final class b<T, K> extends Te.b<T, T> implements Ie.a<T> {

        public final Fe.o<? super T, K> f12132g;

        public final Fe.d<? super K, ? super K> f12133h;

        public K f12134i;

        public boolean f12135j;

        public b(hn.c<? super T> cVar, Fe.o<? super T, K> oVar, Fe.d<? super K, ? super K> dVar) {
            super(cVar);
            this.f12132g = oVar;
            this.f12133h = dVar;
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
            while (true) {
                T poll = this.f24837d.poll();
                if (poll == null) {
                    return null;
                }
                K apply = this.f12132g.apply(poll);
                if (!this.f12135j) {
                    this.f12135j = true;
                    this.f12134i = apply;
                    return poll;
                }
                if (!this.f12133h.test(this.f12134i, apply)) {
                    this.f12134i = apply;
                    return poll;
                }
                this.f12134i = apply;
                if (this.f24839f != 1) {
                    this.f24836c.i(1L);
                }
            }
        }

        @Override
        public boolean u(T t10) {
            if (this.f24838e) {
                return false;
            }
            if (this.f24839f != 0) {
                this.f24835b.h(t10);
                return true;
            }
            try {
                K apply = this.f12132g.apply(t10);
                if (this.f12135j) {
                    boolean test = this.f12133h.test(this.f12134i, apply);
                    this.f12134i = apply;
                    if (test) {
                        return false;
                    }
                } else {
                    this.f12135j = true;
                    this.f12134i = apply;
                }
                this.f24835b.h(t10);
                return true;
            } catch (Throwable th2) {
                d(th2);
                return true;
            }
        }
    }

    public O(AbstractC2362l<T> abstractC2362l, Fe.o<? super T, K> oVar, Fe.d<? super K, ? super K> dVar) {
        super(abstractC2362l);
        this.f12126d = oVar;
        this.f12127e = dVar;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        if (cVar instanceof Ie.a) {
            this.f12507c.l6(new a((Ie.a) cVar, this.f12126d, this.f12127e));
        } else {
            this.f12507c.l6(new b(cVar, this.f12126d, this.f12127e));
        }
    }
}
