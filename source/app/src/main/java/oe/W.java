package Oe;

import Je.AbstractC2668a;

public final class W<T> extends AbstractC2859a<T, T> {

    public final Fe.r<? super T> f19247c;

    public static final class a<T> extends AbstractC2668a<T, T> {

        public final Fe.r<? super T> f19248g;

        public a(Be.I<? super T> i10, Fe.r<? super T> rVar) {
            super(i10);
            this.f19248g = rVar;
        }

        @Override
        public void h(T t10) {
            if (this.f10457f != 0) {
                this.f10453b.h(null);
                return;
            }
            try {
                if (this.f19248g.test(t10)) {
                    this.f10453b.h(t10);
                }
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
            T poll;
            do {
                poll = this.f10455d.poll();
                if (poll == null) {
                    break;
                }
            } while (!this.f19248g.test(poll));
            return poll;
        }
    }

    public W(Be.G<T> g10, Fe.r<? super T> rVar) {
        super(g10);
        this.f19247c = rVar;
    }

    @Override
    public void J5(Be.I<? super T> i10) {
        this.f19344b.c(new a(i10, this.f19247c));
    }
}
