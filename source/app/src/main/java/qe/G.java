package Qe;

public final class G<T> extends Be.K<T> {

    public final Be.Q<? extends T> f22100b;

    public static final class a<T> implements Be.N<T>, De.c {

        public final Be.N<? super T> f22101b;

        public De.c f22102c;

        public a(Be.N<? super T> n10) {
            this.f22101b = n10;
        }

        @Override
        public void b(T t10) {
            this.f22101b.b(t10);
        }

        @Override
        public boolean d() {
            return this.f22102c.d();
        }

        @Override
        public void dispose() {
            this.f22102c.dispose();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f22102c, cVar)) {
                this.f22102c = cVar;
                this.f22101b.e(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f22101b.onError(th2);
        }
    }

    public G(Be.Q<? extends T> q10) {
        this.f22100b = q10;
    }

    @Override
    public void d1(Be.N<? super T> n10) {
        this.f22100b.a(new a(n10));
    }
}
