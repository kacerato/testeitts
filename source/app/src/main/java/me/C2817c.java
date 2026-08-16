package Me;

import Be.AbstractC2368s;
import java.util.concurrent.atomic.AtomicReference;

public final class C2817c<T> extends AbstractC2368s<T> implements Be.v<T> {

    public static final a[] f14993f = new a[0];

    public static final a[] f14994g = new a[0];

    public final AtomicReference<Be.y<T>> f14995b;

    public final AtomicReference<a<T>[]> f14996c = new AtomicReference<>(f14993f);

    public T f14997d;

    public Throwable f14998e;

    public static final class a<T> extends AtomicReference<C2817c<T>> implements De.c {

        public static final long f14999c = -5791853038359966195L;

        public final Be.v<? super T> f15000b;

        public a(Be.v<? super T> vVar, C2817c<T> c2817c) {
            super(c2817c);
            this.f15000b = vVar;
        }

        @Override
        public boolean d() {
            return get() == null;
        }

        @Override
        public void dispose() {
            C2817c<T> andSet = getAndSet(null);
            if (andSet != null) {
                andSet.i2(this);
            }
        }
    }

    public C2817c(Be.y<T> yVar) {
        this.f14995b = new AtomicReference<>(yVar);
    }

    @Override
    public void a() {
        for (a<T> aVar : this.f14996c.getAndSet(f14994g)) {
            if (!aVar.d()) {
                aVar.f15000b.a();
            }
        }
    }

    @Override
    public void b(T t10) {
        this.f14997d = t10;
        for (a<T> aVar : this.f14996c.getAndSet(f14994g)) {
            if (!aVar.d()) {
                aVar.f15000b.b(t10);
            }
        }
    }

    @Override
    public void e(De.c cVar) {
    }

    public boolean h2(a<T> aVar) {
        a<T>[] aVarArr;
        a[] aVarArr2;
        do {
            aVarArr = this.f14996c.get();
            if (aVarArr == f14994g) {
                return false;
            }
            int length = aVarArr.length;
            aVarArr2 = new a[length + 1];
            System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
            aVarArr2[length] = aVar;
        } while (!androidx.lifecycle.c.a(this.f14996c, aVarArr, aVarArr2));
        return true;
    }

    public void i2(a<T> aVar) {
        a<T>[] aVarArr;
        a[] aVarArr2;
        do {
            aVarArr = this.f14996c.get();
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
                aVarArr2 = f14993f;
            } else {
                a[] aVarArr3 = new a[length - 1];
                System.arraycopy(aVarArr, 0, aVarArr3, 0, i10);
                System.arraycopy(aVarArr, i10 + 1, aVarArr3, i10, (length - i10) - 1);
                aVarArr2 = aVarArr3;
            }
        } while (!androidx.lifecycle.c.a(this.f14996c, aVarArr, aVarArr2));
    }

    @Override
    public void onError(Throwable th2) {
        this.f14998e = th2;
        for (a<T> aVar : this.f14996c.getAndSet(f14994g)) {
            if (!aVar.d()) {
                aVar.f15000b.onError(th2);
            }
        }
    }

    @Override
    public void t1(Be.v<? super T> vVar) {
        a<T> aVar = new a<>(vVar, this);
        vVar.e(aVar);
        if (h2(aVar)) {
            if (aVar.d()) {
                i2(aVar);
                return;
            }
            Be.y<T> andSet = this.f14995b.getAndSet(null);
            if (andSet != null) {
                andSet.d(this);
                return;
            }
            return;
        }
        if (aVar.d()) {
            return;
        }
        Throwable th2 = this.f14998e;
        if (th2 != null) {
            vVar.onError(th2);
            return;
        }
        T t10 = this.f14997d;
        if (t10 != null) {
            vVar.b(t10);
        } else {
            vVar.a();
        }
    }
}
