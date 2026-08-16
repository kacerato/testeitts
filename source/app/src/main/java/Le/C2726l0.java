package Le;

import Be.AbstractC2362l;

public final class C2726l0<T> extends AbstractC2362l<T> {

    public final Be.B<T> f12888c;

    public static final class a<T> implements Be.I<T>, hn.d {

        public final hn.c<? super T> f12889b;

        public De.c f12890c;

        public a(hn.c<? super T> cVar) {
            this.f12889b = cVar;
        }

        @Override
        public void a() {
            this.f12889b.a();
        }

        @Override
        public void cancel() {
            this.f12890c.dispose();
        }

        @Override
        public void e(De.c cVar) {
            this.f12890c = cVar;
            this.f12889b.j(this);
        }

        @Override
        public void h(T t10) {
            this.f12889b.h(t10);
        }

        @Override
        public void i(long j10) {
        }

        @Override
        public void onError(Throwable th2) {
            this.f12889b.onError(th2);
        }
    }

    public C2726l0(Be.B<T> b10) {
        this.f12888c = b10;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        this.f12888c.c(new a(cVar));
    }
}
