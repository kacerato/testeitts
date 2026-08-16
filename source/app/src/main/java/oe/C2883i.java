package Oe;

public final class C2883i<T> extends AbstractC2859a<T, Boolean> {

    public final Fe.r<? super T> f19511c;

    public static final class a<T> implements Be.I<T>, De.c {

        public final Be.I<? super Boolean> f19512b;

        public final Fe.r<? super T> f19513c;

        public De.c f19514d;

        public boolean f19515e;

        public a(Be.I<? super Boolean> i10, Fe.r<? super T> rVar) {
            this.f19512b = i10;
            this.f19513c = rVar;
        }

        @Override
        public void a() {
            if (this.f19515e) {
                return;
            }
            this.f19515e = true;
            this.f19512b.h(Boolean.FALSE);
            this.f19512b.a();
        }

        @Override
        public boolean d() {
            return this.f19514d.d();
        }

        @Override
        public void dispose() {
            this.f19514d.dispose();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f19514d, cVar)) {
                this.f19514d = cVar;
                this.f19512b.e(this);
            }
        }

        @Override
        public void h(T t10) {
            if (this.f19515e) {
                return;
            }
            try {
                if (this.f19513c.test(t10)) {
                    this.f19515e = true;
                    this.f19514d.dispose();
                    this.f19512b.h(Boolean.TRUE);
                    this.f19512b.a();
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f19514d.dispose();
                onError(th2);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f19515e) {
                Ye.a.Y(th2);
            } else {
                this.f19515e = true;
                this.f19512b.onError(th2);
            }
        }
    }

    public C2883i(Be.G<T> g10, Fe.r<? super T> rVar) {
        super(g10);
        this.f19511c = rVar;
    }

    @Override
    public void J5(Be.I<? super Boolean> i10) {
        this.f19344b.c(new a(i10, this.f19511c));
    }
}
