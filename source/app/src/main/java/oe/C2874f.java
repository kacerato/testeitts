package Oe;

public final class C2874f<T> extends AbstractC2859a<T, Boolean> {

    public final Fe.r<? super T> f19461c;

    public static final class a<T> implements Be.I<T>, De.c {

        public final Be.I<? super Boolean> f19462b;

        public final Fe.r<? super T> f19463c;

        public De.c f19464d;

        public boolean f19465e;

        public a(Be.I<? super Boolean> i10, Fe.r<? super T> rVar) {
            this.f19462b = i10;
            this.f19463c = rVar;
        }

        @Override
        public void a() {
            if (this.f19465e) {
                return;
            }
            this.f19465e = true;
            this.f19462b.h(Boolean.TRUE);
            this.f19462b.a();
        }

        @Override
        public boolean d() {
            return this.f19464d.d();
        }

        @Override
        public void dispose() {
            this.f19464d.dispose();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f19464d, cVar)) {
                this.f19464d = cVar;
                this.f19462b.e(this);
            }
        }

        @Override
        public void h(T t10) {
            if (this.f19465e) {
                return;
            }
            try {
                if (this.f19463c.test(t10)) {
                    return;
                }
                this.f19465e = true;
                this.f19464d.dispose();
                this.f19462b.h(Boolean.FALSE);
                this.f19462b.a();
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f19464d.dispose();
                onError(th2);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f19465e) {
                Ye.a.Y(th2);
            } else {
                this.f19465e = true;
                this.f19462b.onError(th2);
            }
        }
    }

    public C2874f(Be.G<T> g10, Fe.r<? super T> rVar) {
        super(g10);
        this.f19461c = rVar;
    }

    @Override
    public void J5(Be.I<? super Boolean> i10) {
        this.f19344b.c(new a(i10, this.f19461c));
    }
}
