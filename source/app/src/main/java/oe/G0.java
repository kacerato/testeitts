package Oe;

import io.reactivex.exceptions.CompositeException;

public final class G0<T> extends AbstractC2859a<T, T> {

    public final Fe.o<? super Throwable, ? extends T> f18861c;

    public static final class a<T> implements Be.I<T>, De.c {

        public final Be.I<? super T> f18862b;

        public final Fe.o<? super Throwable, ? extends T> f18863c;

        public De.c f18864d;

        public a(Be.I<? super T> i10, Fe.o<? super Throwable, ? extends T> oVar) {
            this.f18862b = i10;
            this.f18863c = oVar;
        }

        @Override
        public void a() {
            this.f18862b.a();
        }

        @Override
        public boolean d() {
            return this.f18864d.d();
        }

        @Override
        public void dispose() {
            this.f18864d.dispose();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f18864d, cVar)) {
                this.f18864d = cVar;
                this.f18862b.e(this);
            }
        }

        @Override
        public void h(T t10) {
            this.f18862b.h(t10);
        }

        @Override
        public void onError(Throwable th2) {
            try {
                T apply = this.f18863c.apply(th2);
                if (apply != null) {
                    this.f18862b.h(apply);
                    this.f18862b.a();
                } else {
                    NullPointerException nullPointerException = new NullPointerException("The supplied value is null");
                    nullPointerException.initCause(th2);
                    this.f18862b.onError(nullPointerException);
                }
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                this.f18862b.onError(new CompositeException(th2, th3));
            }
        }
    }

    public G0(Be.G<T> g10, Fe.o<? super Throwable, ? extends T> oVar) {
        super(g10);
        this.f18861c = oVar;
    }

    @Override
    public void J5(Be.I<? super T> i10) {
        this.f19344b.c(new a(i10, this.f18861c));
    }
}
