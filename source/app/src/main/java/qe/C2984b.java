package Qe;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class C2984b<T> extends Be.K<T> implements Be.N<T> {

    public static final a[] f22204g = new a[0];

    public static final a[] f22205h = new a[0];

    public final Be.Q<? extends T> f22206b;

    public final AtomicInteger f22207c = new AtomicInteger();

    public final AtomicReference<a<T>[]> f22208d = new AtomicReference<>(f22204g);

    public T f22209e;

    public Throwable f22210f;

    public static final class a<T> extends AtomicBoolean implements De.c {

        public static final long f22211d = 7514387411091976596L;

        public final Be.N<? super T> f22212b;

        public final C2984b<T> f22213c;

        public a(Be.N<? super T> n10, C2984b<T> c2984b) {
            this.f22212b = n10;
            this.f22213c = c2984b;
        }

        @Override
        public boolean d() {
            return get();
        }

        @Override
        public void dispose() {
            if (compareAndSet(false, true)) {
                this.f22213c.Q1(this);
            }
        }
    }

    public C2984b(Be.Q<? extends T> q10) {
        this.f22206b = q10;
    }

    public boolean P1(a<T> aVar) {
        a<T>[] aVarArr;
        a[] aVarArr2;
        do {
            aVarArr = this.f22208d.get();
            if (aVarArr == f22205h) {
                return false;
            }
            int length = aVarArr.length;
            aVarArr2 = new a[length + 1];
            System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
            aVarArr2[length] = aVar;
        } while (!androidx.lifecycle.c.a(this.f22208d, aVarArr, aVarArr2));
        return true;
    }

    public void Q1(a<T> aVar) {
        a<T>[] aVarArr;
        a[] aVarArr2;
        do {
            aVarArr = this.f22208d.get();
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
                aVarArr2 = f22204g;
            } else {
                a[] aVarArr3 = new a[length - 1];
                System.arraycopy(aVarArr, 0, aVarArr3, 0, i10);
                System.arraycopy(aVarArr, i10 + 1, aVarArr3, i10, (length - i10) - 1);
                aVarArr2 = aVarArr3;
            }
        } while (!androidx.lifecycle.c.a(this.f22208d, aVarArr, aVarArr2));
    }

    @Override
    public void b(T t10) {
        this.f22209e = t10;
        for (a<T> aVar : this.f22208d.getAndSet(f22205h)) {
            if (!aVar.d()) {
                aVar.f22212b.b(t10);
            }
        }
    }

    @Override
    public void d1(Be.N<? super T> n10) {
        a<T> aVar = new a<>(n10, this);
        n10.e(aVar);
        if (P1(aVar)) {
            if (aVar.d()) {
                Q1(aVar);
            }
            if (this.f22207c.getAndIncrement() == 0) {
                this.f22206b.a(this);
                return;
            }
            return;
        }
        Throwable th2 = this.f22210f;
        if (th2 != null) {
            n10.onError(th2);
        } else {
            n10.b(this.f22209e);
        }
    }

    @Override
    public void e(De.c cVar) {
    }

    @Override
    public void onError(Throwable th2) {
        this.f22210f = th2;
        for (a<T> aVar : this.f22208d.getAndSet(f22205h)) {
            if (!aVar.d()) {
                aVar.f22212b.onError(th2);
            }
        }
    }
}
