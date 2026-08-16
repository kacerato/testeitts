package Oe;

public final class C2886j<T> extends Be.K<Boolean> implements Ie.d<Boolean> {

    public final Be.G<T> f19533b;

    public final Fe.r<? super T> f19534c;

    public static final class a<T> implements Be.I<T>, De.c {

        public final Be.N<? super Boolean> f19535b;

        public final Fe.r<? super T> f19536c;

        public De.c f19537d;

        public boolean f19538e;

        public a(Be.N<? super Boolean> n10, Fe.r<? super T> rVar) {
            this.f19535b = n10;
            this.f19536c = rVar;
        }

        @Override
        public void a() {
            if (this.f19538e) {
                return;
            }
            this.f19538e = true;
            this.f19535b.b(Boolean.FALSE);
        }

        @Override
        public boolean d() {
            return this.f19537d.d();
        }

        @Override
        public void dispose() {
            this.f19537d.dispose();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f19537d, cVar)) {
                this.f19537d = cVar;
                this.f19535b.e(this);
            }
        }

        @Override
        public void h(T t10) {
            if (this.f19538e) {
                return;
            }
            try {
                if (this.f19536c.test(t10)) {
                    this.f19538e = true;
                    this.f19537d.dispose();
                    this.f19535b.b(Boolean.TRUE);
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f19537d.dispose();
                onError(th2);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f19538e) {
                Ye.a.Y(th2);
            } else {
                this.f19538e = true;
                this.f19535b.onError(th2);
            }
        }
    }

    public C2886j(Be.G<T> g10, Fe.r<? super T> rVar) {
        this.f19533b = g10;
        this.f19534c = rVar;
    }

    @Override
    public Be.B<Boolean> c() {
        return Ye.a.R(new C2883i(this.f19533b, this.f19534c));
    }

    @Override
    public void d1(Be.N<? super Boolean> n10) {
        this.f19533b.c(new a(n10, this.f19534c));
    }
}
