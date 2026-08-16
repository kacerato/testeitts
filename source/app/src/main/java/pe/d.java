package Pe;

import Fe.r;

public final class d<T> extends Xe.b<T> {

    public final Xe.b<T> f21294a;

    public final r<? super T> f21295b;

    public static abstract class a<T> implements Ie.a<T>, hn.d {

        public final r<? super T> f21296b;

        public hn.d f21297c;

        public boolean f21298d;

        public a(r<? super T> rVar) {
            this.f21296b = rVar;
        }

        @Override
        public final void cancel() {
            this.f21297c.cancel();
        }

        @Override
        public final void h(T t10) {
            if (u(t10) || this.f21298d) {
                return;
            }
            this.f21297c.i(1L);
        }

        @Override
        public final void i(long j10) {
            this.f21297c.i(j10);
        }
    }

    public static final class b<T> extends a<T> {

        public final Ie.a<? super T> f21299e;

        public b(Ie.a<? super T> aVar, r<? super T> rVar) {
            super(rVar);
            this.f21299e = aVar;
        }

        @Override
        public void a() {
            if (this.f21298d) {
                return;
            }
            this.f21298d = true;
            this.f21299e.a();
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f21297c, dVar)) {
                this.f21297c = dVar;
                this.f21299e.j(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f21298d) {
                Ye.a.Y(th2);
            } else {
                this.f21298d = true;
                this.f21299e.onError(th2);
            }
        }

        @Override
        public boolean u(T t10) {
            if (!this.f21298d) {
                try {
                    if (this.f21296b.test(t10)) {
                        return this.f21299e.u(t10);
                    }
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    cancel();
                    onError(th2);
                }
            }
            return false;
        }
    }

    public static final class c<T> extends a<T> {

        public final hn.c<? super T> f21300e;

        public c(hn.c<? super T> cVar, r<? super T> rVar) {
            super(rVar);
            this.f21300e = cVar;
        }

        @Override
        public void a() {
            if (this.f21298d) {
                return;
            }
            this.f21298d = true;
            this.f21300e.a();
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f21297c, dVar)) {
                this.f21297c = dVar;
                this.f21300e.j(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f21298d) {
                Ye.a.Y(th2);
            } else {
                this.f21298d = true;
                this.f21300e.onError(th2);
            }
        }

        @Override
        public boolean u(T t10) {
            if (!this.f21298d) {
                try {
                    if (this.f21296b.test(t10)) {
                        this.f21300e.h(t10);
                        return true;
                    }
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    cancel();
                    onError(th2);
                }
            }
            return false;
        }
    }

    public d(Xe.b<T> bVar, r<? super T> rVar) {
        this.f21294a = bVar;
        this.f21295b = rVar;
    }

    @Override
    public int F() {
        return this.f21294a.F();
    }

    @Override
    public void Q(hn.c<? super T>[] cVarArr) {
        if (U(cVarArr)) {
            int length = cVarArr.length;
            hn.c<? super T>[] cVarArr2 = new hn.c[length];
            for (int i10 = 0; i10 < length; i10++) {
                hn.c<? super T> cVar = cVarArr[i10];
                if (cVar instanceof Ie.a) {
                    cVarArr2[i10] = new b((Ie.a) cVar, this.f21295b);
                } else {
                    cVarArr2[i10] = new c(cVar, this.f21295b);
                }
            }
            this.f21294a.Q(cVarArr2);
        }
    }
}
