package Pe;

import Fe.r;
import io.reactivex.exceptions.CompositeException;

public final class e<T> extends Xe.b<T> {

    public final Xe.b<T> f21301a;

    public final r<? super T> f21302b;

    public final Fe.c<? super Long, ? super Throwable, Xe.a> f21303c;

    public static class a {

        public static final int[] f21304a;

        static {
            int[] iArr = new int[Xe.a.values().length];
            f21304a = iArr;
            try {
                iArr[Xe.a.RETRY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f21304a[Xe.a.SKIP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f21304a[Xe.a.STOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static abstract class b<T> implements Ie.a<T>, hn.d {

        public final r<? super T> f21305b;

        public final Fe.c<? super Long, ? super Throwable, Xe.a> f21306c;

        public hn.d f21307d;

        public boolean f21308e;

        public b(r<? super T> rVar, Fe.c<? super Long, ? super Throwable, Xe.a> cVar) {
            this.f21305b = rVar;
            this.f21306c = cVar;
        }

        @Override
        public final void cancel() {
            this.f21307d.cancel();
        }

        @Override
        public final void h(T t10) {
            if (u(t10) || this.f21308e) {
                return;
            }
            this.f21307d.i(1L);
        }

        @Override
        public final void i(long j10) {
            this.f21307d.i(j10);
        }
    }

    public static final class c<T> extends b<T> {

        public final Ie.a<? super T> f21309f;

        public c(Ie.a<? super T> aVar, r<? super T> rVar, Fe.c<? super Long, ? super Throwable, Xe.a> cVar) {
            super(rVar, cVar);
            this.f21309f = aVar;
        }

        @Override
        public void a() {
            if (this.f21308e) {
                return;
            }
            this.f21308e = true;
            this.f21309f.a();
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f21307d, dVar)) {
                this.f21307d = dVar;
                this.f21309f.j(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f21308e) {
                Ye.a.Y(th2);
            } else {
                this.f21308e = true;
                this.f21309f.onError(th2);
            }
        }

        @Override
        public boolean u(T t10) {
            int i10;
            if (!this.f21308e) {
                long j10 = 0;
                do {
                    try {
                        return this.f21305b.test(t10) && this.f21309f.u(t10);
                    } catch (Throwable th2) {
                        io.reactivex.exceptions.a.b(th2);
                        try {
                            j10++;
                            i10 = a.f21304a[((Xe.a) He.b.g(this.f21306c.apply(Long.valueOf(j10), th2), "The errorHandler returned a null item")).ordinal()];
                        } catch (Throwable th3) {
                            io.reactivex.exceptions.a.b(th3);
                            cancel();
                            onError(new CompositeException(th2, th3));
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
            return false;
        }
    }

    public static final class d<T> extends b<T> {

        public final hn.c<? super T> f21310f;

        public d(hn.c<? super T> cVar, r<? super T> rVar, Fe.c<? super Long, ? super Throwable, Xe.a> cVar2) {
            super(rVar, cVar2);
            this.f21310f = cVar;
        }

        @Override
        public void a() {
            if (this.f21308e) {
                return;
            }
            this.f21308e = true;
            this.f21310f.a();
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f21307d, dVar)) {
                this.f21307d = dVar;
                this.f21310f.j(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f21308e) {
                Ye.a.Y(th2);
            } else {
                this.f21308e = true;
                this.f21310f.onError(th2);
            }
        }

        @Override
        public boolean u(T t10) {
            int i10;
            if (!this.f21308e) {
                long j10 = 0;
                do {
                    try {
                        if (!this.f21305b.test(t10)) {
                            return false;
                        }
                        this.f21310f.h(t10);
                        return true;
                    } catch (Throwable th2) {
                        io.reactivex.exceptions.a.b(th2);
                        try {
                            j10++;
                            i10 = a.f21304a[((Xe.a) He.b.g(this.f21306c.apply(Long.valueOf(j10), th2), "The errorHandler returned a null item")).ordinal()];
                        } catch (Throwable th3) {
                            io.reactivex.exceptions.a.b(th3);
                            cancel();
                            onError(new CompositeException(th2, th3));
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
            return false;
        }
    }

    public e(Xe.b<T> bVar, r<? super T> rVar, Fe.c<? super Long, ? super Throwable, Xe.a> cVar) {
        this.f21301a = bVar;
        this.f21302b = rVar;
        this.f21303c = cVar;
    }

    @Override
    public int F() {
        return this.f21301a.F();
    }

    @Override
    public void Q(hn.c<? super T>[] cVarArr) {
        if (U(cVarArr)) {
            int length = cVarArr.length;
            hn.c<? super T>[] cVarArr2 = new hn.c[length];
            for (int i10 = 0; i10 < length; i10++) {
                hn.c<? super T> cVar = cVarArr[i10];
                if (cVar instanceof Ie.a) {
                    cVarArr2[i10] = new c((Ie.a) cVar, this.f21302b, this.f21303c);
                } else {
                    cVarArr2[i10] = new d(cVar, this.f21302b, this.f21303c);
                }
            }
            this.f21301a.Q(cVarArr2);
        }
    }
}
