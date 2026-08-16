package Qe;

import io.reactivex.exceptions.CompositeException;

public final class C2999q<T> extends Be.K<T> {

    public final Be.Q<T> f22287b;

    public final Fe.g<? super Throwable> f22288c;

    public final class a implements Be.N<T> {

        public final Be.N<? super T> f22289b;

        public a(Be.N<? super T> n10) {
            this.f22289b = n10;
        }

        @Override
        public void b(T t10) {
            this.f22289b.b(t10);
        }

        @Override
        public void e(De.c cVar) {
            this.f22289b.e(cVar);
        }

        @Override
        public void onError(Throwable th2) {
            try {
                C2999q.this.f22288c.accept(th2);
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                th2 = new CompositeException(th2, th3);
            }
            this.f22289b.onError(th2);
        }
    }

    public C2999q(Be.Q<T> q10, Fe.g<? super Throwable> gVar) {
        this.f22287b = q10;
        this.f22288c = gVar;
    }

    @Override
    public void d1(Be.N<? super T> n10) {
        this.f22287b.a(new a(n10));
    }
}
