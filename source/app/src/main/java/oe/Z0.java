package Oe;

public final class Z0<T> extends AbstractC2859a<T, T> {

    public final Fe.c<T, T, T> f19338c;

    public static final class a<T> implements Be.I<T>, De.c {

        public final Be.I<? super T> f19339b;

        public final Fe.c<T, T, T> f19340c;

        public De.c f19341d;

        public T f19342e;

        public boolean f19343f;

        public a(Be.I<? super T> i10, Fe.c<T, T, T> cVar) {
            this.f19339b = i10;
            this.f19340c = cVar;
        }

        @Override
        public void a() {
            if (this.f19343f) {
                return;
            }
            this.f19343f = true;
            this.f19339b.a();
        }

        @Override
        public boolean d() {
            return this.f19341d.d();
        }

        @Override
        public void dispose() {
            this.f19341d.dispose();
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f19341d, cVar)) {
                this.f19341d = cVar;
                this.f19339b.e(this);
            }
        }

        /* JADX WARN: Type inference failed for: r4v3, types: [T, java.lang.Object] */
        @Override
        public void h(T t10) {
            if (this.f19343f) {
                return;
            }
            Be.I<? super T> i10 = this.f19339b;
            T t11 = this.f19342e;
            if (t11 == null) {
                this.f19342e = t10;
                i10.h(t10);
                return;
            }
            try {
                ?? r42 = (T) He.b.g(this.f19340c.apply(t11, t10), "The value returned by the accumulator is null");
                this.f19342e = r42;
                i10.h(r42);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f19341d.dispose();
                onError(th2);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f19343f) {
                Ye.a.Y(th2);
            } else {
                this.f19343f = true;
                this.f19339b.onError(th2);
            }
        }
    }

    public Z0(Be.G<T> g10, Fe.c<T, T, T> cVar) {
        super(g10);
        this.f19338c = cVar;
    }

    @Override
    public void J5(Be.I<? super T> i10) {
        this.f19344b.c(new a(i10, this.f19338c));
    }
}
