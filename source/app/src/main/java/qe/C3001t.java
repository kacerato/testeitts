package Qe;

public final class C3001t<T> extends Be.K<T> {

    public final Be.Q<T> f22300b;

    public final Fe.g<? super T> f22301c;

    public final class a implements Be.N<T> {

        public final Be.N<? super T> f22302b;

        public a(Be.N<? super T> n10) {
            this.f22302b = n10;
        }

        @Override
        public void b(T t10) {
            try {
                C3001t.this.f22301c.accept(t10);
                this.f22302b.b(t10);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f22302b.onError(th2);
            }
        }

        @Override
        public void e(De.c cVar) {
            this.f22302b.e(cVar);
        }

        @Override
        public void onError(Throwable th2) {
            this.f22302b.onError(th2);
        }
    }

    public C3001t(Be.Q<T> q10, Fe.g<? super T> gVar) {
        this.f22300b = q10;
        this.f22301c = gVar;
    }

    @Override
    public void d1(Be.N<? super T> n10) {
        this.f22300b.a(new a(n10));
    }
}
