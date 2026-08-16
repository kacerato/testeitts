package bf;

import Be.I;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

public final class C3881e<T> extends AbstractC3885i<T> {

    public static final a[] f33122d = new a[0];

    public static final a[] f33123e = new a[0];

    public final AtomicReference<a<T>[]> f33124b = new AtomicReference<>(f33123e);

    public Throwable f33125c;

    public static final class a<T> extends AtomicBoolean implements De.c {

        public static final long f33126d = 3562861878281475070L;

        public final I<? super T> f33127b;

        public final C3881e<T> f33128c;

        public a(I<? super T> i10, C3881e<T> c3881e) {
            this.f33127b = i10;
            this.f33128c = c3881e;
        }

        public void a() {
            if (get()) {
                return;
            }
            this.f33127b.a();
        }

        public void b(Throwable th2) {
            if (get()) {
                Ye.a.Y(th2);
            } else {
                this.f33127b.onError(th2);
            }
        }

        public void c(T t10) {
            if (get()) {
                return;
            }
            this.f33127b.h(t10);
        }

        @Override
        public boolean d() {
            return get();
        }

        @Override
        public void dispose() {
            if (compareAndSet(false, true)) {
                this.f33128c.q8(this);
            }
        }
    }

    @Ce.f
    @Ce.d
    public static <T> C3881e<T> p8() {
        return new C3881e<>();
    }

    @Override
    public void J5(I<? super T> i10) {
        a<T> aVar = new a<>(i10, this);
        i10.e(aVar);
        if (o8(aVar)) {
            if (aVar.d()) {
                q8(aVar);
            }
        } else {
            Throwable th2 = this.f33125c;
            if (th2 != null) {
                i10.onError(th2);
            } else {
                i10.a();
            }
        }
    }

    @Override
    public void a() {
        a<T>[] aVarArr = this.f33124b.get();
        a<T>[] aVarArr2 = f33122d;
        if (aVarArr == aVarArr2) {
            return;
        }
        for (a<T> aVar : this.f33124b.getAndSet(aVarArr2)) {
            aVar.a();
        }
    }

    @Override
    public void e(De.c cVar) {
        if (this.f33124b.get() == f33122d) {
            cVar.dispose();
        }
    }

    @Override
    public void h(T t10) {
        He.b.g(t10, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        for (a<T> aVar : this.f33124b.get()) {
            aVar.c(t10);
        }
    }

    @Override
    @Ce.g
    public Throwable j8() {
        if (this.f33124b.get() == f33122d) {
            return this.f33125c;
        }
        return null;
    }

    @Override
    public boolean k8() {
        return this.f33124b.get() == f33122d && this.f33125c == null;
    }

    @Override
    public boolean l8() {
        return this.f33124b.get().length != 0;
    }

    @Override
    public boolean m8() {
        return this.f33124b.get() == f33122d && this.f33125c != null;
    }

    public boolean o8(a<T> aVar) {
        a<T>[] aVarArr;
        a[] aVarArr2;
        do {
            aVarArr = this.f33124b.get();
            if (aVarArr == f33122d) {
                return false;
            }
            int length = aVarArr.length;
            aVarArr2 = new a[length + 1];
            System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
            aVarArr2[length] = aVar;
        } while (!androidx.lifecycle.c.a(this.f33124b, aVarArr, aVarArr2));
        return true;
    }

    @Override
    public void onError(Throwable th2) {
        He.b.g(th2, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        a<T>[] aVarArr = this.f33124b.get();
        a<T>[] aVarArr2 = f33122d;
        if (aVarArr == aVarArr2) {
            Ye.a.Y(th2);
            return;
        }
        this.f33125c = th2;
        for (a<T> aVar : this.f33124b.getAndSet(aVarArr2)) {
            aVar.b(th2);
        }
    }

    public void q8(a<T> aVar) {
        a<T>[] aVarArr;
        a[] aVarArr2;
        do {
            aVarArr = this.f33124b.get();
            if (aVarArr == f33122d || aVarArr == f33123e) {
                return;
            }
            int length = aVarArr.length;
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
                aVarArr2 = f33123e;
            } else {
                a[] aVarArr3 = new a[length - 1];
                System.arraycopy(aVarArr, 0, aVarArr3, 0, i10);
                System.arraycopy(aVarArr, i10 + 1, aVarArr3, i10, (length - i10) - 1);
                aVarArr2 = aVarArr3;
            }
        } while (!androidx.lifecycle.c.a(this.f33124b, aVarArr, aVarArr2));
    }
}
