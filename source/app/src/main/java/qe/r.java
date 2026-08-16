package Qe;

import io.reactivex.exceptions.CompositeException;

public final class r<T> extends Be.K<T> {

    public final Be.Q<T> f22291b;

    public final Fe.b<? super T, ? super Throwable> f22292c;

    public final class a implements Be.N<T> {

        public final Be.N<? super T> f22293b;

        public a(Be.N<? super T> n10) {
            this.f22293b = n10;
        }

        @Override
        public void b(T t10) {
            try {
                r.this.f22292c.accept(t10, null);
                this.f22293b.b(t10);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f22293b.onError(th2);
            }
        }

        @Override
        public void e(De.c cVar) {
            this.f22293b.e(cVar);
        }

        @Override
        public void onError(Throwable th2) {
            try {
                r.this.f22292c.accept(null, th2);
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                th2 = new CompositeException(th2, th3);
            }
            this.f22293b.onError(th2);
        }
    }

    public r(Be.Q<T> q10, Fe.b<? super T, ? super Throwable> bVar) {
        this.f22291b = q10;
        this.f22292c = bVar;
    }

    @Override
    public void d1(Be.N<? super T> n10) {
        this.f22291b.a(new a(n10));
    }
}
