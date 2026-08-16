package Qe;

public final class K<T, R> extends Be.K<R> {

    public final Be.Q<? extends T> f22108b;

    public final Fe.o<? super T, ? extends R> f22109c;

    public static final class a<T, R> implements Be.N<T> {

        public final Be.N<? super R> f22110b;

        public final Fe.o<? super T, ? extends R> f22111c;

        public a(Be.N<? super R> n10, Fe.o<? super T, ? extends R> oVar) {
            this.f22110b = n10;
            this.f22111c = oVar;
        }

        @Override
        public void b(T t10) {
            try {
                this.f22110b.b(He.b.g(this.f22111c.apply(t10), "The mapper function returned a null value."));
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                onError(th2);
            }
        }

        @Override
        public void e(De.c cVar) {
            this.f22110b.e(cVar);
        }

        @Override
        public void onError(Throwable th2) {
            this.f22110b.onError(th2);
        }
    }

    public K(Be.Q<? extends T> q10, Fe.o<? super T, ? extends R> oVar) {
        this.f22108b = q10;
        this.f22109c = oVar;
    }

    @Override
    public void d1(Be.N<? super R> n10) {
        this.f22108b.a(new a(n10, this.f22109c));
    }
}
