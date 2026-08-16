package bf;

import Be.AbstractC2368s;
import Be.v;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

public final class C3880d<T> extends AbstractC2368s<T> implements v<T> {

    public static final a[] f33114f = new a[0];

    public static final a[] f33115g = new a[0];

    public T f33118d;

    public Throwable f33119e;

    public final AtomicBoolean f33117c = new AtomicBoolean();

    public final AtomicReference<a<T>[]> f33116b = new AtomicReference<>(f33114f);

    public static final class a<T> extends AtomicReference<C3880d<T>> implements De.c {

        public static final long f33120c = -7650903191002190468L;

        public final v<? super T> f33121b;

        public a(v<? super T> vVar, C3880d<T> c3880d) {
            this.f33121b = vVar;
            lazySet(c3880d);
        }

        @Override
        public boolean d() {
            return get() == null;
        }

        @Override
        public void dispose() {
            C3880d<T> andSet = getAndSet(null);
            if (andSet != null) {
                andSet.q2(this);
            }
        }
    }

    @Ce.f
    @Ce.d
    public static <T> C3880d<T> i2() {
        return new C3880d<>();
    }

    @Override
    public void a() {
        if (this.f33117c.compareAndSet(false, true)) {
            for (a<T> aVar : this.f33116b.getAndSet(f33115g)) {
                aVar.f33121b.a();
            }
        }
    }

    @Override
    public void b(T t10) {
        He.b.g(t10, "onSuccess called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f33117c.compareAndSet(false, true)) {
            this.f33118d = t10;
            for (a<T> aVar : this.f33116b.getAndSet(f33115g)) {
                aVar.f33121b.b(t10);
            }
        }
    }

    @Override
    public void e(De.c cVar) {
        if (this.f33116b.get() == f33115g) {
            cVar.dispose();
        }
    }

    public boolean h2(a<T> aVar) {
        a<T>[] aVarArr;
        a[] aVarArr2;
        do {
            aVarArr = this.f33116b.get();
            if (aVarArr == f33115g) {
                return false;
            }
            int length = aVarArr.length;
            aVarArr2 = new a[length + 1];
            System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
            aVarArr2[length] = aVar;
        } while (!androidx.lifecycle.c.a(this.f33116b, aVarArr, aVarArr2));
        return true;
    }

    @Ce.g
    public Throwable j2() {
        if (this.f33116b.get() == f33115g) {
            return this.f33119e;
        }
        return null;
    }

    @Ce.g
    public T k2() {
        if (this.f33116b.get() == f33115g) {
            return this.f33118d;
        }
        return null;
    }

    public boolean l2() {
        return this.f33116b.get() == f33115g && this.f33118d == null && this.f33119e == null;
    }

    public boolean m2() {
        return this.f33116b.get().length != 0;
    }

    public boolean n2() {
        return this.f33116b.get() == f33115g && this.f33119e != null;
    }

    public boolean o2() {
        return this.f33116b.get() == f33115g && this.f33118d != null;
    }

    @Override
    public void onError(Throwable th2) {
        He.b.g(th2, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (!this.f33117c.compareAndSet(false, true)) {
            Ye.a.Y(th2);
            return;
        }
        this.f33119e = th2;
        for (a<T> aVar : this.f33116b.getAndSet(f33115g)) {
            aVar.f33121b.onError(th2);
        }
    }

    public int p2() {
        return this.f33116b.get().length;
    }

    public void q2(a<T> aVar) {
        a<T>[] aVarArr;
        a[] aVarArr2;
        do {
            aVarArr = this.f33116b.get();
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
                aVarArr2 = f33114f;
            } else {
                a[] aVarArr3 = new a[length - 1];
                System.arraycopy(aVarArr, 0, aVarArr3, 0, i10);
                System.arraycopy(aVarArr, i10 + 1, aVarArr3, i10, (length - i10) - 1);
                aVarArr2 = aVarArr3;
            }
        } while (!androidx.lifecycle.c.a(this.f33116b, aVarArr, aVarArr2));
    }

    @Override
    public void t1(v<? super T> vVar) {
        a<T> aVar = new a<>(vVar, this);
        vVar.e(aVar);
        if (h2(aVar)) {
            if (aVar.d()) {
                q2(aVar);
                return;
            }
            return;
        }
        Throwable th2 = this.f33119e;
        if (th2 != null) {
            vVar.onError(th2);
            return;
        }
        T t10 = this.f33118d;
        if (t10 == null) {
            vVar.a();
        } else {
            vVar.b(t10);
        }
    }
}
