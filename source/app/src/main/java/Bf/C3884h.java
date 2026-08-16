package bf;

import Be.K;
import Be.N;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

public final class C3884h<T> extends K<T> implements N<T> {

    public static final a[] f33168f = new a[0];

    public static final a[] f33169g = new a[0];

    public T f33172d;

    public Throwable f33173e;

    public final AtomicBoolean f33171c = new AtomicBoolean();

    public final AtomicReference<a<T>[]> f33170b = new AtomicReference<>(f33168f);

    public static final class a<T> extends AtomicReference<C3884h<T>> implements De.c {

        public static final long f33174c = -7650903191002190468L;

        public final N<? super T> f33175b;

        public a(N<? super T> n10, C3884h<T> c3884h) {
            this.f33175b = n10;
            lazySet(c3884h);
        }

        @Override
        public boolean d() {
            return get() == null;
        }

        @Override
        public void dispose() {
            C3884h<T> andSet = getAndSet(null);
            if (andSet != null) {
                andSet.X1(this);
            }
        }
    }

    @Ce.f
    @Ce.d
    public static <T> C3884h<T> Q1() {
        return new C3884h<>();
    }

    public boolean P1(@Ce.f a<T> aVar) {
        a<T>[] aVarArr;
        a[] aVarArr2;
        do {
            aVarArr = this.f33170b.get();
            if (aVarArr == f33169g) {
                return false;
            }
            int length = aVarArr.length;
            aVarArr2 = new a[length + 1];
            System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
            aVarArr2[length] = aVar;
        } while (!androidx.lifecycle.c.a(this.f33170b, aVarArr, aVarArr2));
        return true;
    }

    @Ce.g
    public Throwable R1() {
        if (this.f33170b.get() == f33169g) {
            return this.f33173e;
        }
        return null;
    }

    @Ce.g
    public T S1() {
        if (this.f33170b.get() == f33169g) {
            return this.f33172d;
        }
        return null;
    }

    public boolean T1() {
        return this.f33170b.get().length != 0;
    }

    public boolean U1() {
        return this.f33170b.get() == f33169g && this.f33173e != null;
    }

    public boolean V1() {
        return this.f33170b.get() == f33169g && this.f33172d != null;
    }

    public int W1() {
        return this.f33170b.get().length;
    }

    public void X1(@Ce.f a<T> aVar) {
        a<T>[] aVarArr;
        a[] aVarArr2;
        do {
            aVarArr = this.f33170b.get();
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
                aVarArr2 = f33168f;
            } else {
                a[] aVarArr3 = new a[length - 1];
                System.arraycopy(aVarArr, 0, aVarArr3, 0, i10);
                System.arraycopy(aVarArr, i10 + 1, aVarArr3, i10, (length - i10) - 1);
                aVarArr2 = aVarArr3;
            }
        } while (!androidx.lifecycle.c.a(this.f33170b, aVarArr, aVarArr2));
    }

    @Override
    public void b(@Ce.f T t10) {
        He.b.g(t10, "onSuccess called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f33171c.compareAndSet(false, true)) {
            this.f33172d = t10;
            for (a<T> aVar : this.f33170b.getAndSet(f33169g)) {
                aVar.f33175b.b(t10);
            }
        }
    }

    @Override
    public void d1(@Ce.f N<? super T> n10) {
        a<T> aVar = new a<>(n10, this);
        n10.e(aVar);
        if (P1(aVar)) {
            if (aVar.d()) {
                X1(aVar);
            }
        } else {
            Throwable th2 = this.f33173e;
            if (th2 != null) {
                n10.onError(th2);
            } else {
                n10.b(this.f33172d);
            }
        }
    }

    @Override
    public void e(@Ce.f De.c cVar) {
        if (this.f33170b.get() == f33169g) {
            cVar.dispose();
        }
    }

    @Override
    public void onError(@Ce.f Throwable th2) {
        He.b.g(th2, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (!this.f33171c.compareAndSet(false, true)) {
            Ye.a.Y(th2);
            return;
        }
        this.f33173e = th2;
        for (a<T> aVar : this.f33170b.getAndSet(f33169g)) {
            aVar.f33175b.onError(th2);
        }
    }
}
