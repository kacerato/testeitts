package Oe;

public final class C2891k1<T> extends AbstractC2859a<T, T> {

    public final Fe.r<? super T> f19589c;

    public static final class a<T> implements Be.I<T>, De.c {

        public final Be.I<? super T> f19590b;

        public final Fe.r<? super T> f19591c;

        public De.c f19592d;

        public boolean f19593e;

        public a(Be.I<? super T> i10, Fe.r<? super T> rVar) {
            this.f19590b = i10;
            this.f19591c = rVar;
        }

        @Override
        public void a() {
            this.f19590b.a();
        }

        @Override
        public boolean d() {
            return this.f19592d.d();
        }

        @Override
        public void dispose() {
            this.f19592d.dispose();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f19592d, cVar)) {
                this.f19592d = cVar;
                this.f19590b.e(this);
            }
        }

        @Override
        public void h(T t10) {
            if (this.f19593e) {
                this.f19590b.h(t10);
                return;
            }
            try {
                if (this.f19591c.test(t10)) {
                    return;
                }
                this.f19593e = true;
                this.f19590b.h(t10);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f19592d.dispose();
                this.f19590b.onError(th2);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f19590b.onError(th2);
        }
    }

    public C2891k1(Be.G<T> g10, Fe.r<? super T> rVar) {
        super(g10);
        this.f19589c = rVar;
    }

    @Override
    public void J5(Be.I<? super T> i10) {
        this.f19344b.c(new a(i10, this.f19589c));
    }
}
