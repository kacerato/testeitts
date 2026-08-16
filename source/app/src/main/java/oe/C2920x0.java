package Oe;

import Je.AbstractC2668a;

public final class C2920x0<T, U> extends AbstractC2859a<T, U> {

    public final Fe.o<? super T, ? extends U> f20019c;

    public static final class a<T, U> extends AbstractC2668a<T, U> {

        public final Fe.o<? super T, ? extends U> f20020g;

        public a(Be.I<? super U> i10, Fe.o<? super T, ? extends U> oVar) {
            super(i10);
            this.f20020g = oVar;
        }

        @Override
        public void h(T t10) {
            if (this.f10456e) {
                return;
            }
            if (this.f10457f != 0) {
                this.f10453b.h(null);
                return;
            }
            try {
                this.f10453b.h(He.b.g(this.f20020g.apply(t10), "The mapper function returned a null value."));
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
        public U poll() throws Exception {
            T poll = this.f10455d.poll();
            if (poll != null) {
                return (U) He.b.g(this.f20020g.apply(poll), "The mapper function returned a null value.");
            }
            return null;
        }
    }

    public C2920x0(Be.G<T> g10, Fe.o<? super T, ? extends U> oVar) {
        super(g10);
        this.f20019c = oVar;
    }

    @Override
    public void J5(Be.I<? super U> i10) {
        this.f19344b.c(new a(i10, this.f20019c));
    }
}
