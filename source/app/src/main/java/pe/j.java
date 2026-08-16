package Pe;

import Be.InterfaceC2367q;

public final class j<T, R> extends Xe.b<R> {

    public final Xe.b<T> f21356a;

    public final Fe.o<? super T, ? extends R> f21357b;

    public static final class a<T, R> implements Ie.a<T>, hn.d {

        public final Ie.a<? super R> f21358b;

        public final Fe.o<? super T, ? extends R> f21359c;

        public hn.d f21360d;

        public boolean f21361e;

        public a(Ie.a<? super R> aVar, Fe.o<? super T, ? extends R> oVar) {
            this.f21358b = aVar;
            this.f21359c = oVar;
        }

        @Override
        public void a() {
            if (this.f21361e) {
                return;
            }
            this.f21361e = true;
            this.f21358b.a();
        }

        @Override
        public void cancel() {
            this.f21360d.cancel();
        }

        @Override
        public void h(T t10) {
            if (this.f21361e) {
                return;
            }
            try {
                this.f21358b.h(He.b.g(this.f21359c.apply(t10), "The mapper returned a null value"));
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                cancel();
                onError(th2);
            }
        }

        @Override
        public void i(long j10) {
            this.f21360d.i(j10);
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f21360d, dVar)) {
                this.f21360d = dVar;
                this.f21358b.j(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f21361e) {
                Ye.a.Y(th2);
            } else {
                this.f21361e = true;
                this.f21358b.onError(th2);
            }
        }

        @Override
        public boolean u(T t10) {
            if (this.f21361e) {
                return false;
            }
            try {
                return this.f21358b.u(He.b.g(this.f21359c.apply(t10), "The mapper returned a null value"));
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                cancel();
                onError(th2);
                return false;
            }
        }
    }

    public static final class b<T, R> implements InterfaceC2367q<T>, hn.d {

        public final hn.c<? super R> f21362b;

        public final Fe.o<? super T, ? extends R> f21363c;

        public hn.d f21364d;

        public boolean f21365e;

        public b(hn.c<? super R> cVar, Fe.o<? super T, ? extends R> oVar) {
            this.f21362b = cVar;
            this.f21363c = oVar;
        }

        @Override
        public void a() {
            if (this.f21365e) {
                return;
            }
            this.f21365e = true;
            this.f21362b.a();
        }

        @Override
        public void cancel() {
            this.f21364d.cancel();
        }

        @Override
        public void h(T t10) {
            if (this.f21365e) {
                return;
            }
            try {
                this.f21362b.h(He.b.g(this.f21363c.apply(t10), "The mapper returned a null value"));
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                cancel();
                onError(th2);
            }
        }

        @Override
        public void i(long j10) {
            this.f21364d.i(j10);
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f21364d, dVar)) {
                this.f21364d = dVar;
                this.f21362b.j(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f21365e) {
                Ye.a.Y(th2);
            } else {
                this.f21365e = true;
                this.f21362b.onError(th2);
            }
        }
    }

    public j(Xe.b<T> bVar, Fe.o<? super T, ? extends R> oVar) {
        this.f21356a = bVar;
        this.f21357b = oVar;
    }

    @Override
    public int F() {
        return this.f21356a.F();
    }

    @Override
    public void Q(hn.c<? super R>[] cVarArr) {
        if (U(cVarArr)) {
            int length = cVarArr.length;
            hn.c<? super T>[] cVarArr2 = new hn.c[length];
            for (int i10 = 0; i10 < length; i10++) {
                hn.c<? super R> cVar = cVarArr[i10];
                if (cVar instanceof Ie.a) {
                    cVarArr2[i10] = new a((Ie.a) cVar, this.f21357b);
                } else {
                    cVarArr2[i10] = new b(cVar, this.f21357b);
                }
            }
            this.f21356a.Q(cVarArr2);
        }
    }
}
