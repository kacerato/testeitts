package Qe;

import io.reactivex.exceptions.CompositeException;

public final class C3002u<T> extends Be.K<T> {

    public final Be.Q<T> f22304b;

    public final Fe.a f22305c;

    public final class a implements Be.N<T> {

        public final Be.N<? super T> f22306b;

        public a(Be.N<? super T> n10) {
            this.f22306b = n10;
        }

        @Override
        public void b(T t10) {
            try {
                C3002u.this.f22305c.run();
                this.f22306b.b(t10);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f22306b.onError(th2);
            }
        }

        @Override
        public void e(De.c cVar) {
            this.f22306b.e(cVar);
        }

        @Override
        public void onError(Throwable th2) {
            try {
                C3002u.this.f22305c.run();
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                th2 = new CompositeException(th2, th3);
            }
            this.f22306b.onError(th2);
        }
    }

    public C3002u(Be.Q<T> q10, Fe.a aVar) {
        this.f22304b = q10;
        this.f22305c = aVar;
    }

    @Override
    public void d1(Be.N<? super T> n10) {
        this.f22304b.a(new a(n10));
    }
}
