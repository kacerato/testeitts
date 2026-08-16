package Oe;

public final class C2877g<T> extends Be.K<Boolean> implements Ie.d<Boolean> {

    public final Be.G<T> f19476b;

    public final Fe.r<? super T> f19477c;

    public static final class a<T> implements Be.I<T>, De.c {

        public final Be.N<? super Boolean> f19478b;

        public final Fe.r<? super T> f19479c;

        public De.c f19480d;

        public boolean f19481e;

        public a(Be.N<? super Boolean> n10, Fe.r<? super T> rVar) {
            this.f19478b = n10;
            this.f19479c = rVar;
        }

        @Override
        public void a() {
            if (this.f19481e) {
                return;
            }
            this.f19481e = true;
            this.f19478b.b(Boolean.TRUE);
        }

        @Override
        public boolean d() {
            return this.f19480d.d();
        }

        @Override
        public void dispose() {
            this.f19480d.dispose();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f19480d, cVar)) {
                this.f19480d = cVar;
                this.f19478b.e(this);
            }
        }

        @Override
        public void h(T t10) {
            if (this.f19481e) {
                return;
            }
            try {
                if (this.f19479c.test(t10)) {
                    return;
                }
                this.f19481e = true;
                this.f19480d.dispose();
                this.f19478b.b(Boolean.FALSE);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f19480d.dispose();
                onError(th2);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f19481e) {
                Ye.a.Y(th2);
            } else {
                this.f19481e = true;
                this.f19478b.onError(th2);
            }
        }
    }

    public C2877g(Be.G<T> g10, Fe.r<? super T> rVar) {
        this.f19476b = g10;
        this.f19477c = rVar;
    }

    @Override
    public Be.B<Boolean> c() {
        return Ye.a.R(new C2874f(this.f19476b, this.f19477c));
    }

    @Override
    public void d1(Be.N<? super Boolean> n10) {
        this.f19476b.c(new a(n10, this.f19477c));
    }
}
