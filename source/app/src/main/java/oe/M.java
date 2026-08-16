package Oe;

import Je.AbstractC2668a;

public final class M<T> extends AbstractC2859a<T, T> {

    public final Fe.g<? super T> f19048c;

    public static final class a<T> extends AbstractC2668a<T, T> {

        public final Fe.g<? super T> f19049g;

        public a(Be.I<? super T> i10, Fe.g<? super T> gVar) {
            super(i10);
            this.f19049g = gVar;
        }

        @Override
        public void h(T t10) {
            this.f10453b.h(t10);
            if (this.f10457f == 0) {
                try {
                    this.f19049g.accept(t10);
                } catch (Throwable th2) {
                    f(th2);
                }
            }
        }

        @Override
        public int m(int i10) {
            return g(i10);
        }

        @Override
        @Ce.g
        public T poll() throws Exception {
            T poll = this.f10455d.poll();
            if (poll != null) {
                this.f19049g.accept(poll);
            }
            return poll;
        }
    }

    public M(Be.G<T> g10, Fe.g<? super T> gVar) {
        super(g10);
        this.f19048c = gVar;
    }

    @Override
    public void J5(Be.I<? super T> i10) {
        this.f19344b.c(new a(i10, this.f19048c));
    }
}
