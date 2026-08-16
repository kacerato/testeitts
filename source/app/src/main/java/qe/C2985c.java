package Qe;

public final class C2985c<T> extends Be.K<Boolean> {

    public final Be.Q<T> f22214b;

    public final Object f22215c;

    public final Fe.d<Object, Object> f22216d;

    public final class a implements Be.N<T> {

        public final Be.N<? super Boolean> f22217b;

        public a(Be.N<? super Boolean> n10) {
            this.f22217b = n10;
        }

        @Override
        public void b(T t10) {
            try {
                C2985c c2985c = C2985c.this;
                this.f22217b.b(Boolean.valueOf(c2985c.f22216d.test(t10, c2985c.f22215c)));
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f22217b.onError(th2);
            }
        }

        @Override
        public void e(De.c cVar) {
            this.f22217b.e(cVar);
        }

        @Override
        public void onError(Throwable th2) {
            this.f22217b.onError(th2);
        }
    }

    public C2985c(Be.Q<T> q10, Object obj, Fe.d<Object, Object> dVar) {
        this.f22214b = q10;
        this.f22215c = obj;
        this.f22216d = dVar;
    }

    @Override
    public void d1(Be.N<? super Boolean> n10) {
        this.f22214b.a(new a(n10));
    }
}
