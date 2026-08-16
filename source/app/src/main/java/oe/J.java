package Oe;

public final class J<T> extends AbstractC2859a<T, T> {

    public static final class a<T> implements Be.I<T>, De.c {

        public Be.I<? super T> f18947b;

        public De.c f18948c;

        public a(Be.I<? super T> i10) {
            this.f18947b = i10;
        }

        @Override
        public void a() {
            Be.I<? super T> i10 = this.f18947b;
            this.f18948c = io.reactivex.internal.util.h.INSTANCE;
            this.f18947b = io.reactivex.internal.util.h.c();
            i10.a();
        }

        @Override
        public boolean d() {
            return this.f18948c.d();
        }

        @Override
        public void dispose() {
            De.c cVar = this.f18948c;
            this.f18948c = io.reactivex.internal.util.h.INSTANCE;
            this.f18947b = io.reactivex.internal.util.h.c();
            cVar.dispose();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f18948c, cVar)) {
                this.f18948c = cVar;
                this.f18947b.e(this);
            }
        }

        @Override
        public void h(T t10) {
            this.f18947b.h(t10);
        }

        @Override
        public void onError(Throwable th2) {
            Be.I<? super T> i10 = this.f18947b;
            this.f18948c = io.reactivex.internal.util.h.INSTANCE;
            this.f18947b = io.reactivex.internal.util.h.c();
            i10.onError(th2);
        }
    }

    public J(Be.G<T> g10) {
        super(g10);
    }

    @Override
    public void J5(Be.I<? super T> i10) {
        this.f19344b.c(new a(i10));
    }
}
