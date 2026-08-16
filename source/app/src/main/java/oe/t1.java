package Oe;

public final class t1<T> extends AbstractC2859a<T, T> {

    public final Fe.r<? super T> f19893c;

    public static final class a<T> implements Be.I<T>, De.c {

        public final Be.I<? super T> f19894b;

        public final Fe.r<? super T> f19895c;

        public De.c f19896d;

        public boolean f19897e;

        public a(Be.I<? super T> i10, Fe.r<? super T> rVar) {
            this.f19894b = i10;
            this.f19895c = rVar;
        }

        @Override
        public void a() {
            if (this.f19897e) {
                return;
            }
            this.f19897e = true;
            this.f19894b.a();
        }

        @Override
        public boolean d() {
            return this.f19896d.d();
        }

        @Override
        public void dispose() {
            this.f19896d.dispose();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f19896d, cVar)) {
                this.f19896d = cVar;
                this.f19894b.e(this);
            }
        }

        @Override
        public void h(T t10) {
            if (this.f19897e) {
                return;
            }
            this.f19894b.h(t10);
            try {
                if (this.f19895c.test(t10)) {
                    this.f19897e = true;
                    this.f19896d.dispose();
                    this.f19894b.a();
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f19896d.dispose();
                onError(th2);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f19897e) {
                Ye.a.Y(th2);
            } else {
                this.f19897e = true;
                this.f19894b.onError(th2);
            }
        }
    }

    public t1(Be.G<T> g10, Fe.r<? super T> rVar) {
        super(g10);
        this.f19893c = rVar;
    }

    @Override
    public void J5(Be.I<? super T> i10) {
        this.f19344b.c(new a(i10, this.f19893c));
    }
}
