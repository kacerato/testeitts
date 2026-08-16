package Oe;

public final class I<T, R> extends AbstractC2859a<T, R> {

    public final Fe.o<? super T, ? extends Be.A<R>> f18918c;

    public static final class a<T, R> implements Be.I<T>, De.c {

        public final Be.I<? super R> f18919b;

        public final Fe.o<? super T, ? extends Be.A<R>> f18920c;

        public boolean f18921d;

        public De.c f18922e;

        public a(Be.I<? super R> i10, Fe.o<? super T, ? extends Be.A<R>> oVar) {
            this.f18919b = i10;
            this.f18920c = oVar;
        }

        @Override
        public void a() {
            if (this.f18921d) {
                return;
            }
            this.f18921d = true;
            this.f18919b.a();
        }

        @Override
        public boolean d() {
            return this.f18922e.d();
        }

        @Override
        public void dispose() {
            this.f18922e.dispose();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f18922e, cVar)) {
                this.f18922e = cVar;
                this.f18919b.e(this);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void h(T t10) {
            if (this.f18921d) {
                if (t10 instanceof Be.A) {
                    Be.A a10 = (Be.A) t10;
                    if (a10.g()) {
                        Ye.a.Y(a10.d());
                        return;
                    }
                    return;
                }
                return;
            }
            try {
                Be.A a11 = (Be.A) He.b.g(this.f18920c.apply(t10), "The selector returned a null Notification");
                if (a11.g()) {
                    this.f18922e.dispose();
                    onError(a11.d());
                } else if (!a11.f()) {
                    this.f18919b.h((Object) a11.e());
                } else {
                    this.f18922e.dispose();
                    a();
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f18922e.dispose();
                onError(th2);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f18921d) {
                Ye.a.Y(th2);
            } else {
                this.f18921d = true;
                this.f18919b.onError(th2);
            }
        }
    }

    public I(Be.G<T> g10, Fe.o<? super T, ? extends Be.A<R>> oVar) {
        super(g10);
        this.f18918c = oVar;
    }

    @Override
    public void J5(Be.I<? super R> i10) {
        this.f19344b.c(new a(i10, this.f18918c));
    }
}
