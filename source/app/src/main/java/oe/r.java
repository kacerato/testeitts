package Oe;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class r<T> extends AbstractC2859a<T, T> implements Be.I<T> {

    public static final a[] f19800l = new a[0];

    public static final a[] f19801m = new a[0];

    public final AtomicBoolean f19802c;

    public final int f19803d;

    public final AtomicReference<a<T>[]> f19804e;

    public volatile long f19805f;

    public final b<T> f19806g;

    public b<T> f19807h;

    public int f19808i;

    public Throwable f19809j;

    public volatile boolean f19810k;

    public static final class a<T> extends AtomicInteger implements De.c {

        public static final long f19811h = 6770240836423125754L;

        public final Be.I<? super T> f19812b;

        public final r<T> f19813c;

        public b<T> f19814d;

        public int f19815e;

        public long f19816f;

        public volatile boolean f19817g;

        public a(Be.I<? super T> i10, r<T> rVar) {
            this.f19812b = i10;
            this.f19813c = rVar;
            this.f19814d = rVar.f19806g;
        }

        @Override
        public boolean d() {
            return this.f19817g;
        }

        @Override
        public void dispose() {
            if (this.f19817g) {
                return;
            }
            this.f19817g = true;
            this.f19813c.n8(this);
        }
    }

    public static final class b<T> {

        public final T[] f19818a;

        public volatile b<T> f19819b;

        public b(int i10) {
            this.f19818a = (T[]) new Object[i10];
        }
    }

    public r(Be.B<T> b10, int i10) {
        super(b10);
        this.f19803d = i10;
        this.f19802c = new AtomicBoolean();
        b<T> bVar = new b<>(i10);
        this.f19806g = bVar;
        this.f19807h = bVar;
        this.f19804e = new AtomicReference<>(f19800l);
    }

    @Override
    public void J5(Be.I<? super T> i10) {
        a<T> aVar = new a<>(i10, this);
        i10.e(aVar);
        j8(aVar);
        if (this.f19802c.get() || !this.f19802c.compareAndSet(false, true)) {
            o8(aVar);
        } else {
            this.f19344b.c(this);
        }
    }

    @Override
    public void a() {
        this.f19810k = true;
        for (a<T> aVar : this.f19804e.getAndSet(f19801m)) {
            o8(aVar);
        }
    }

    @Override
    public void e(De.c cVar) {
    }

    @Override
    public void h(T t10) {
        int i10 = this.f19808i;
        if (i10 == this.f19803d) {
            b<T> bVar = new b<>(i10);
            bVar.f19818a[0] = t10;
            this.f19808i = 1;
            this.f19807h.f19819b = bVar;
            this.f19807h = bVar;
        } else {
            this.f19807h.f19818a[i10] = t10;
            this.f19808i = i10 + 1;
        }
        this.f19805f++;
        for (a<T> aVar : this.f19804e.get()) {
            o8(aVar);
        }
    }

    public void j8(a<T> aVar) {
        a<T>[] aVarArr;
        a[] aVarArr2;
        do {
            aVarArr = this.f19804e.get();
            if (aVarArr == f19801m) {
                return;
            }
            int length = aVarArr.length;
            aVarArr2 = new a[length + 1];
            System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
            aVarArr2[length] = aVar;
        } while (!androidx.lifecycle.c.a(this.f19804e, aVarArr, aVarArr2));
    }

    public long k8() {
        return this.f19805f;
    }

    public boolean l8() {
        return this.f19804e.get().length != 0;
    }

    public boolean m8() {
        return this.f19802c.get();
    }

    public void n8(a<T> aVar) {
        a<T>[] aVarArr;
        a[] aVarArr2;
        do {
            aVarArr = this.f19804e.get();
            int length = aVarArr.length;
            if (length == 0) {
                return;
            }
            int i10 = 0;
            while (true) {
                if (i10 >= length) {
                    i10 = -1;
                    break;
                } else if (aVarArr[i10] == aVar) {
                    break;
                } else {
                    i10++;
                }
            }
            if (i10 < 0) {
                return;
            }
            if (length == 1) {
                aVarArr2 = f19800l;
            } else {
                a[] aVarArr3 = new a[length - 1];
                System.arraycopy(aVarArr, 0, aVarArr3, 0, i10);
                System.arraycopy(aVarArr, i10 + 1, aVarArr3, i10, (length - i10) - 1);
                aVarArr2 = aVarArr3;
            }
        } while (!androidx.lifecycle.c.a(this.f19804e, aVarArr, aVarArr2));
    }

    public void o8(a<T> aVar) {
        if (aVar.getAndIncrement() != 0) {
            return;
        }
        long j10 = aVar.f19816f;
        int i10 = aVar.f19815e;
        b<T> bVar = aVar.f19814d;
        Be.I<? super T> i11 = aVar.f19812b;
        int i12 = this.f19803d;
        int i13 = 1;
        while (!aVar.f19817g) {
            boolean z10 = this.f19810k;
            boolean z11 = this.f19805f == j10;
            if (z10 && z11) {
                aVar.f19814d = null;
                Throwable th2 = this.f19809j;
                if (th2 != null) {
                    i11.onError(th2);
                    return;
                } else {
                    i11.a();
                    return;
                }
            }
            if (z11) {
                aVar.f19816f = j10;
                aVar.f19815e = i10;
                aVar.f19814d = bVar;
                i13 = aVar.addAndGet(-i13);
                if (i13 == 0) {
                    return;
                }
            } else {
                if (i10 == i12) {
                    bVar = bVar.f19819b;
                    i10 = 0;
                }
                i11.h(bVar.f19818a[i10]);
                i10++;
                j10++;
            }
        }
        aVar.f19814d = null;
    }

    @Override
    public void onError(Throwable th2) {
        this.f19809j = th2;
        this.f19810k = true;
        for (a<T> aVar : this.f19804e.getAndSet(f19801m)) {
            o8(aVar);
        }
    }
}
