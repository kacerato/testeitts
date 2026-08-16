package Le;

import Be.AbstractC2362l;

public final class F0<T> extends AbstractC2692a<T, Be.A<T>> {

    public static final class a<T> extends Te.t<T, Be.A<T>> {

        public static final long f11844i = -3740826063558713822L;

        public a(hn.c<? super Be.A<T>> cVar) {
            super(cVar);
        }

        @Override
        public void a() {
            c(Be.A.a());
        }

        @Override
        public void d(Be.A<T> a10) {
            if (a10.g()) {
                Ye.a.Y(a10.d());
            }
        }

        @Override
        public void h(T t10) {
            this.f24937e++;
            this.f24934b.h(Be.A.c(t10));
        }

        @Override
        public void onError(Throwable th2) {
            c(Be.A.b(th2));
        }
    }

    public F0(AbstractC2362l<T> abstractC2362l) {
        super(abstractC2362l);
    }

    @Override
    public void m6(hn.c<? super Be.A<T>> cVar) {
        this.f12507c.l6(new a(cVar));
    }
}
