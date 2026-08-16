package Oe;

public final class u1<T> extends AbstractC2859a<T, T> {

    public final Fe.r<? super T> f19922c;

    public static final class a<T> implements Be.I<T>, De.c {

        public final Be.I<? super T> f19923b;

        public final Fe.r<? super T> f19924c;

        public De.c f19925d;

        public boolean f19926e;

        public a(Be.I<? super T> i10, Fe.r<? super T> rVar) {
            this.f19923b = i10;
            this.f19924c = rVar;
        }

        @Override
        public void a() {
            if (this.f19926e) {
                return;
            }
            this.f19926e = true;
            this.f19923b.a();
        }

        @Override
        public boolean d() {
            return this.f19925d.d();
        }

        @Override
        public void dispose() {
            this.f19925d.dispose();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f19925d, cVar)) {
                this.f19925d = cVar;
                this.f19923b.e(this);
            }
        }

        @Override
        public void h(T t10) {
            if (this.f19926e) {
                return;
            }
            try {
                if (this.f19924c.test(t10)) {
                    this.f19923b.h(t10);
                    return;
                }
                this.f19926e = true;
                this.f19925d.dispose();
                this.f19923b.a();
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f19925d.dispose();
                onError(th2);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f19926e) {
                Ye.a.Y(th2);
            } else {
                this.f19926e = true;
                this.f19923b.onError(th2);
            }
        }
    }

    public u1(Be.G<T> g10, Fe.r<? super T> rVar) {
        super(g10);
        this.f19922c = rVar;
    }

    @Override
    public void J5(Be.I<? super T> i10) {
        this.f19344b.c(new a(i10, this.f19922c));
    }
}
