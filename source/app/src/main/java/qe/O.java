package Qe;

import io.reactivex.exceptions.CompositeException;

public final class O<T> extends Be.K<T> {

    public final Be.Q<? extends T> f22121b;

    public final Fe.o<? super Throwable, ? extends T> f22122c;

    public final T f22123d;

    public final class a implements Be.N<T> {

        public final Be.N<? super T> f22124b;

        public a(Be.N<? super T> n10) {
            this.f22124b = n10;
        }

        @Override
        public void b(T t10) {
            this.f22124b.b(t10);
        }

        @Override
        public void e(De.c cVar) {
            this.f22124b.e(cVar);
        }

        @Override
        public void onError(Throwable th2) {
            T apply;
            O o10 = O.this;
            Fe.o<? super Throwable, ? extends T> oVar = o10.f22122c;
            if (oVar != null) {
                try {
                    apply = oVar.apply(th2);
                } catch (Throwable th3) {
                    io.reactivex.exceptions.a.b(th3);
                    this.f22124b.onError(new CompositeException(th2, th3));
                    return;
                }
            } else {
                apply = o10.f22123d;
            }
            if (apply != null) {
                this.f22124b.b(apply);
                return;
            }
            NullPointerException nullPointerException = new NullPointerException("Value supplied was null");
            nullPointerException.initCause(th2);
            this.f22124b.onError(nullPointerException);
        }
    }

    public O(Be.Q<? extends T> q10, Fe.o<? super Throwable, ? extends T> oVar, T t10) {
        this.f22121b = q10;
        this.f22122c = oVar;
        this.f22123d = t10;
    }

    @Override
    public void d1(Be.N<? super T> n10) {
        this.f22121b.a(new a(n10));
    }
}
