package Oe;

import Je.AbstractC2668a;

public final class L<T, K> extends AbstractC2859a<T, T> {

    public final Fe.o<? super T, K> f19019c;

    public final Fe.d<? super K, ? super K> f19020d;

    public static final class a<T, K> extends AbstractC2668a<T, T> {

        public final Fe.o<? super T, K> f19021g;

        public final Fe.d<? super K, ? super K> f19022h;

        public K f19023i;

        public boolean f19024j;

        public a(Be.I<? super T> i10, Fe.o<? super T, K> oVar, Fe.d<? super K, ? super K> dVar) {
            super(i10);
            this.f19021g = oVar;
            this.f19022h = dVar;
        }

        @Override
        public void h(T t10) {
            if (this.f10456e) {
                return;
            }
            if (this.f10457f != 0) {
                this.f10453b.h(t10);
                return;
            }
            try {
                K apply = this.f19021g.apply(t10);
                if (this.f19024j) {
                    boolean test = this.f19022h.test(this.f19023i, apply);
                    this.f19023i = apply;
                    if (test) {
                        return;
                    }
                } else {
                    this.f19024j = true;
                    this.f19023i = apply;
                }
                this.f10453b.h(t10);
            } catch (Throwable th2) {
                f(th2);
            }
        }

        @Override
        public int m(int i10) {
            return g(i10);
        }

        @Override
        @Ce.g
        public T poll() throws Exception {
            while (true) {
                T poll = this.f10455d.poll();
                if (poll == null) {
                    return null;
                }
                K apply = this.f19021g.apply(poll);
                if (!this.f19024j) {
                    this.f19024j = true;
                    this.f19023i = apply;
                    return poll;
                }
                if (!this.f19022h.test(this.f19023i, apply)) {
                    this.f19023i = apply;
                    return poll;
                }
                this.f19023i = apply;
            }
        }
    }

    public L(Be.G<T> g10, Fe.o<? super T, K> oVar, Fe.d<? super K, ? super K> dVar) {
        super(g10);
        this.f19019c = oVar;
        this.f19020d = dVar;
    }

    @Override
    public void J5(Be.I<? super T> i10) {
        this.f19344b.c(new a(i10, this.f19019c, this.f19020d));
    }
}
