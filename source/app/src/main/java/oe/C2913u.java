package Oe;

import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class C2913u<T, R> extends Be.B<R> {

    public final Be.G<? extends T>[] f19898b;

    public final Iterable<? extends Be.G<? extends T>> f19899c;

    public final Fe.o<? super Object[], ? extends R> f19900d;

    public final int f19901e;

    public final boolean f19902f;

    public static final class a<T, R> extends AtomicReference<De.c> implements Be.I<T> {

        public static final long f19903d = -4823716997131257941L;

        public final b<T, R> f19904b;

        public final int f19905c;

        public a(b<T, R> bVar, int i10) {
            this.f19904b = bVar;
            this.f19905c = i10;
        }

        @Override
        public void a() {
            this.f19904b.e(this.f19905c);
        }

        public void b() {
            Ge.d.a(this);
        }

        @Override
        public void e(De.c cVar) {
            Ge.d.h(this, cVar);
        }

        @Override
        public void h(T t10) {
            this.f19904b.g(this.f19905c, t10);
        }

        @Override
        public void onError(Throwable th2) {
            this.f19904b.f(this.f19905c, th2);
        }
    }

    public static final class b<T, R> extends AtomicInteger implements De.c {

        public static final long f19906m = 8567835998786448817L;

        public final Be.I<? super R> f19907b;

        public final Fe.o<? super Object[], ? extends R> f19908c;

        public final a<T, R>[] f19909d;

        public Object[] f19910e;

        public final Re.c<Object[]> f19911f;

        public final boolean f19912g;

        public volatile boolean f19913h;

        public volatile boolean f19914i;

        public final io.reactivex.internal.util.c f19915j = new io.reactivex.internal.util.c();

        public int f19916k;

        public int f19917l;

        public b(Be.I<? super R> i10, Fe.o<? super Object[], ? extends R> oVar, int i11, int i12, boolean z10) {
            this.f19907b = i10;
            this.f19908c = oVar;
            this.f19912g = z10;
            this.f19910e = new Object[i11];
            a<T, R>[] aVarArr = new a[i11];
            for (int i13 = 0; i13 < i11; i13++) {
                aVarArr[i13] = new a<>(this, i13);
            }
            this.f19909d = aVarArr;
            this.f19911f = new Re.c<>(i12);
        }

        public void a() {
            for (a<T, R> aVar : this.f19909d) {
                aVar.b();
            }
        }

        public void b(Re.c<?> cVar) {
            synchronized (this) {
                this.f19910e = null;
            }
            cVar.clear();
        }

        public void c() {
            if (getAndIncrement() != 0) {
                return;
            }
            Re.c<Object[]> cVar = this.f19911f;
            Be.I<? super R> i10 = this.f19907b;
            boolean z10 = this.f19912g;
            int i11 = 1;
            while (!this.f19913h) {
                if (!z10 && this.f19915j.get() != null) {
                    a();
                    b(cVar);
                    i10.onError(this.f19915j.c());
                    return;
                }
                boolean z11 = this.f19914i;
                Object[] poll = cVar.poll();
                boolean z12 = poll == null;
                if (z11 && z12) {
                    b(cVar);
                    Throwable c10 = this.f19915j.c();
                    if (c10 == null) {
                        i10.a();
                        return;
                    } else {
                        i10.onError(c10);
                        return;
                    }
                }
                if (z12) {
                    i11 = addAndGet(-i11);
                    if (i11 == 0) {
                        return;
                    }
                } else {
                    try {
                        i10.h((Object) He.b.g(this.f19908c.apply(poll), "The combiner returned a null value"));
                    } catch (Throwable th2) {
                        io.reactivex.exceptions.a.b(th2);
                        this.f19915j.a(th2);
                        a();
                        b(cVar);
                        i10.onError(this.f19915j.c());
                        return;
                    }
                }
            }
            b(cVar);
        }

        @Override
        public boolean d() {
            return this.f19913h;
        }

        @Override
        public void dispose() {
            if (this.f19913h) {
                return;
            }
            this.f19913h = true;
            a();
            if (getAndIncrement() == 0) {
                b(this.f19911f);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x0019, code lost:
        
            if (r2 == r0.length) goto L16;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void e(int i10) {
            synchronized (this) {
                try {
                    Object[] objArr = this.f19910e;
                    if (objArr == null) {
                        return;
                    }
                    boolean z10 = objArr[i10] == null;
                    if (!z10) {
                        int i11 = this.f19917l + 1;
                        this.f19917l = i11;
                    }
                    this.f19914i = true;
                    if (z10) {
                        a();
                    }
                    c();
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:17:0x0025, code lost:
        
            if (r1 == r4.length) goto L20;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void f(int i10, Throwable th2) {
            if (!this.f19915j.a(th2)) {
                Ye.a.Y(th2);
                return;
            }
            boolean z10 = true;
            if (this.f19912g) {
                synchronized (this) {
                    try {
                        Object[] objArr = this.f19910e;
                        if (objArr == null) {
                            return;
                        }
                        boolean z11 = objArr[i10] == null;
                        if (!z11) {
                            int i11 = this.f19917l + 1;
                            this.f19917l = i11;
                        }
                        this.f19914i = true;
                        z10 = z11;
                    } finally {
                    }
                }
            }
            if (z10) {
                a();
            }
            c();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void g(int i10, T t10) {
            boolean z10;
            synchronized (this) {
                try {
                    Object[] objArr = this.f19910e;
                    if (objArr == null) {
                        return;
                    }
                    Object obj = objArr[i10];
                    int i11 = this.f19916k;
                    if (obj == null) {
                        i11++;
                        this.f19916k = i11;
                    }
                    objArr[i10] = t10;
                    if (i11 == objArr.length) {
                        this.f19911f.offer(objArr.clone());
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    if (z10) {
                        c();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        public void h(Be.G<? extends T>[] gArr) {
            a<T, R>[] aVarArr = this.f19909d;
            int length = aVarArr.length;
            this.f19907b.e(this);
            for (int i10 = 0; i10 < length && !this.f19914i && !this.f19913h; i10++) {
                gArr[i10].c(aVarArr[i10]);
            }
        }
    }

    public C2913u(Be.G<? extends T>[] gArr, Iterable<? extends Be.G<? extends T>> iterable, Fe.o<? super Object[], ? extends R> oVar, int i10, boolean z10) {
        this.f19898b = gArr;
        this.f19899c = iterable;
        this.f19900d = oVar;
        this.f19901e = i10;
        this.f19902f = z10;
    }

    @Override
    public void J5(Be.I<? super R> i10) {
        int length;
        Be.G<? extends T>[] gArr = this.f19898b;
        if (gArr == null) {
            gArr = new Be.B[8];
            length = 0;
            for (Be.G<? extends T> g10 : this.f19899c) {
                if (length == gArr.length) {
                    Be.G<? extends T>[] gArr2 = new Be.G[(length >> 2) + length];
                    System.arraycopy(gArr, 0, gArr2, 0, length);
                    gArr = gArr2;
                }
                gArr[length] = g10;
                length++;
            }
        } else {
            length = gArr.length;
        }
        int i11 = length;
        if (i11 == 0) {
            Ge.e.c(i10);
        } else {
            new b(i10, this.f19900d, i11, this.f19901e, this.f19902f).h(gArr);
        }
    }
}
