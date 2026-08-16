package Pe;

import io.reactivex.exceptions.CompositeException;

public final class k<T, R> extends Xe.b<R> {

    public final Xe.b<T> f21366a;

    public final Fe.o<? super T, ? extends R> f21367b;

    public final Fe.c<? super Long, ? super Throwable, Xe.a> f21368c;

    public static class a {

        public static final int[] f21369a;

        static {
            int[] iArr = new int[Xe.a.values().length];
            f21369a = iArr;
            try {
                iArr[Xe.a.RETRY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f21369a[Xe.a.SKIP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f21369a[Xe.a.STOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static final class b<T, R> implements Ie.a<T>, hn.d {

        public final Ie.a<? super R> f21370b;

        public final Fe.o<? super T, ? extends R> f21371c;

        public final Fe.c<? super Long, ? super Throwable, Xe.a> f21372d;

        public hn.d f21373e;

        public boolean f21374f;

        public b(Ie.a<? super R> aVar, Fe.o<? super T, ? extends R> oVar, Fe.c<? super Long, ? super Throwable, Xe.a> cVar) {
            this.f21370b = aVar;
            this.f21371c = oVar;
            this.f21372d = cVar;
        }

        @Override
        public void a() {
            if (this.f21374f) {
                return;
            }
            this.f21374f = true;
            this.f21370b.a();
        }

        @Override
        public void cancel() {
            this.f21373e.cancel();
        }

        @Override
        public void h(T t10) {
            if (u(t10) || this.f21374f) {
                return;
            }
            this.f21373e.i(1L);
        }

        @Override
        public void i(long j10) {
            this.f21373e.i(j10);
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f21373e, dVar)) {
                this.f21373e = dVar;
                this.f21370b.j(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f21374f) {
                Ye.a.Y(th2);
            } else {
                this.f21374f = true;
                this.f21370b.onError(th2);
            }
        }

        @Override
        public boolean u(T t10) {
            int i10;
            if (this.f21374f) {
                return false;
            }
            long j10 = 0;
            do {
                try {
                    return this.f21370b.u(He.b.g(this.f21371c.apply(t10), "The mapper returned a null value"));
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    try {
                        j10++;
                        i10 = a.f21369a[((Xe.a) He.b.g(this.f21372d.apply(Long.valueOf(j10), th2), "The errorHandler returned a null item")).ordinal()];
                    } catch (Throwable th3) {
                        io.reactivex.exceptions.a.b(th3);
                        cancel();
                        onError(new CompositeException(th2, th3));
                        return false;
                    }
                }
            } while (i10 == 1);
            if (i10 != 2) {
                if (i10 != 3) {
                    cancel();
                    onError(th2);
                    return false;
                }
                cancel();
                a();
            }
            return false;
        }
    }

    public static final class c<T, R> implements Ie.a<T>, hn.d {

        public final hn.c<? super R> f21375b;

        public final Fe.o<? super T, ? extends R> f21376c;

        public final Fe.c<? super Long, ? super Throwable, Xe.a> f21377d;

        public hn.d f21378e;

        public boolean f21379f;

        public c(hn.c<? super R> cVar, Fe.o<? super T, ? extends R> oVar, Fe.c<? super Long, ? super Throwable, Xe.a> cVar2) {
            this.f21375b = cVar;
            this.f21376c = oVar;
            this.f21377d = cVar2;
        }

        @Override
        public void a() {
            if (this.f21379f) {
                return;
            }
            this.f21379f = true;
            this.f21375b.a();
        }

        @Override
        public void cancel() {
            this.f21378e.cancel();
        }

        @Override
        public void h(T t10) {
            if (u(t10) || this.f21379f) {
                return;
            }
            this.f21378e.i(1L);
        }

        @Override
        public void i(long j10) {
            this.f21378e.i(j10);
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f21378e, dVar)) {
                this.f21378e = dVar;
                this.f21375b.j(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f21379f) {
                Ye.a.Y(th2);
            } else {
                this.f21379f = true;
                this.f21375b.onError(th2);
            }
        }

        @Override
        public boolean u(T t10) {
            int i10;
            if (this.f21379f) {
                return false;
            }
            long j10 = 0;
            do {
                try {
                    this.f21375b.h(He.b.g(this.f21376c.apply(t10), "The mapper returned a null value"));
                    return true;
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    try {
                        j10++;
                        i10 = a.f21369a[((Xe.a) He.b.g(this.f21377d.apply(Long.valueOf(j10), th2), "The errorHandler returned a null item")).ordinal()];
                    } catch (Throwable th3) {
                        io.reactivex.exceptions.a.b(th3);
                        cancel();
                        onError(new CompositeException(th2, th3));
                        return false;
                    }
                }
            } while (i10 == 1);
            if (i10 != 2) {
                if (i10 != 3) {
                    cancel();
                    onError(th2);
                    return false;
                }
                cancel();
                a();
            }
            return false;
        }
    }

    public k(Xe.b<T> bVar, Fe.o<? super T, ? extends R> oVar, Fe.c<? super Long, ? super Throwable, Xe.a> cVar) {
        this.f21366a = bVar;
        this.f21367b = oVar;
        this.f21368c = cVar;
    }

    @Override
    public int F() {
        return this.f21366a.F();
    }

    @Override
    public void Q(hn.c<? super R>[] cVarArr) {
        if (U(cVarArr)) {
            int length = cVarArr.length;
            hn.c<? super T>[] cVarArr2 = new hn.c[length];
            for (int i10 = 0; i10 < length; i10++) {
                hn.c<? super R> cVar = cVarArr[i10];
                if (cVar instanceof Ie.a) {
                    cVarArr2[i10] = new b((Ie.a) cVar, this.f21367b, this.f21368c);
                } else {
                    cVarArr2[i10] = new c(cVar, this.f21367b, this.f21368c);
                }
            }
            this.f21366a.Q(cVarArr2);
        }
    }
}
