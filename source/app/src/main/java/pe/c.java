package Pe;

import io.reactivex.exceptions.CompositeException;

public final class c<T> extends Xe.b<T> {

    public final Xe.b<T> f21280a;

    public final Fe.g<? super T> f21281b;

    public final Fe.c<? super Long, ? super Throwable, Xe.a> f21282c;

    public static class a {

        public static final int[] f21283a;

        static {
            int[] iArr = new int[Xe.a.values().length];
            f21283a = iArr;
            try {
                iArr[Xe.a.RETRY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f21283a[Xe.a.SKIP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f21283a[Xe.a.STOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static final class b<T> implements Ie.a<T>, hn.d {

        public final Ie.a<? super T> f21284b;

        public final Fe.g<? super T> f21285c;

        public final Fe.c<? super Long, ? super Throwable, Xe.a> f21286d;

        public hn.d f21287e;

        public boolean f21288f;

        public b(Ie.a<? super T> aVar, Fe.g<? super T> gVar, Fe.c<? super Long, ? super Throwable, Xe.a> cVar) {
            this.f21284b = aVar;
            this.f21285c = gVar;
            this.f21286d = cVar;
        }

        @Override
        public void a() {
            if (this.f21288f) {
                return;
            }
            this.f21288f = true;
            this.f21284b.a();
        }

        @Override
        public void cancel() {
            this.f21287e.cancel();
        }

        @Override
        public void h(T t10) {
            if (u(t10) || this.f21288f) {
                return;
            }
            this.f21287e.i(1L);
        }

        @Override
        public void i(long j10) {
            this.f21287e.i(j10);
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f21287e, dVar)) {
                this.f21287e = dVar;
                this.f21284b.j(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f21288f) {
                Ye.a.Y(th2);
            } else {
                this.f21288f = true;
                this.f21284b.onError(th2);
            }
        }

        @Override
        public boolean u(T t10) {
            int i10;
            if (this.f21288f) {
                return false;
            }
            long j10 = 0;
            do {
                try {
                    this.f21285c.accept(t10);
                    return this.f21284b.u(t10);
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    try {
                        j10++;
                        i10 = a.f21283a[((Xe.a) He.b.g(this.f21286d.apply(Long.valueOf(j10), th2), "The errorHandler returned a null item")).ordinal()];
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

    public static final class C0520c<T> implements Ie.a<T>, hn.d {

        public final hn.c<? super T> f21289b;

        public final Fe.g<? super T> f21290c;

        public final Fe.c<? super Long, ? super Throwable, Xe.a> f21291d;

        public hn.d f21292e;

        public boolean f21293f;

        public C0520c(hn.c<? super T> cVar, Fe.g<? super T> gVar, Fe.c<? super Long, ? super Throwable, Xe.a> cVar2) {
            this.f21289b = cVar;
            this.f21290c = gVar;
            this.f21291d = cVar2;
        }

        @Override
        public void a() {
            if (this.f21293f) {
                return;
            }
            this.f21293f = true;
            this.f21289b.a();
        }

        @Override
        public void cancel() {
            this.f21292e.cancel();
        }

        @Override
        public void h(T t10) {
            if (u(t10)) {
                return;
            }
            this.f21292e.i(1L);
        }

        @Override
        public void i(long j10) {
            this.f21292e.i(j10);
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f21292e, dVar)) {
                this.f21292e = dVar;
                this.f21289b.j(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f21293f) {
                Ye.a.Y(th2);
            } else {
                this.f21293f = true;
                this.f21289b.onError(th2);
            }
        }

        @Override
        public boolean u(T t10) {
            int i10;
            if (this.f21293f) {
                return false;
            }
            long j10 = 0;
            do {
                try {
                    this.f21290c.accept(t10);
                    this.f21289b.h(t10);
                    return true;
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    try {
                        j10++;
                        i10 = a.f21283a[((Xe.a) He.b.g(this.f21291d.apply(Long.valueOf(j10), th2), "The errorHandler returned a null item")).ordinal()];
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

    public c(Xe.b<T> bVar, Fe.g<? super T> gVar, Fe.c<? super Long, ? super Throwable, Xe.a> cVar) {
        this.f21280a = bVar;
        this.f21281b = gVar;
        this.f21282c = cVar;
    }

    @Override
    public int F() {
        return this.f21280a.F();
    }

    @Override
    public void Q(hn.c<? super T>[] cVarArr) {
        if (U(cVarArr)) {
            int length = cVarArr.length;
            hn.c<? super T>[] cVarArr2 = new hn.c[length];
            for (int i10 = 0; i10 < length; i10++) {
                hn.c<? super T> cVar = cVarArr[i10];
                if (cVar instanceof Ie.a) {
                    cVarArr2[i10] = new b((Ie.a) cVar, this.f21281b, this.f21282c);
                } else {
                    cVarArr2[i10] = new C0520c(cVar, this.f21281b, this.f21282c);
                }
            }
            this.f21280a.Q(cVarArr2);
        }
    }
}
