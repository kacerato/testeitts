package Ze;

import Ue.j;
import io.reactivex.exceptions.MissingBackpressureException;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class e<T> extends c<T> {

    public static final a[] f31160e = new a[0];

    public static final a[] f31161f = new a[0];

    public final AtomicReference<a<T>[]> f31162c = new AtomicReference<>(f31161f);

    public Throwable f31163d;

    public static final class a<T> extends AtomicLong implements hn.d {

        public static final long f31164d = 3562861878281475070L;

        public final hn.c<? super T> f31165b;

        public final e<T> f31166c;

        public a(hn.c<? super T> cVar, e<T> eVar) {
            this.f31165b = cVar;
            this.f31166c = eVar;
        }

        public boolean a() {
            return get() == Long.MIN_VALUE;
        }

        public boolean b() {
            return get() == 0;
        }

        public void c() {
            if (get() != Long.MIN_VALUE) {
                this.f31165b.a();
            }
        }

        @Override
        public void cancel() {
            if (getAndSet(Long.MIN_VALUE) != Long.MIN_VALUE) {
                this.f31166c.W8(this);
            }
        }

        public void d(Throwable th2) {
            if (get() != Long.MIN_VALUE) {
                this.f31165b.onError(th2);
            } else {
                Ye.a.Y(th2);
            }
        }

        public void e(T t10) {
            long j10 = get();
            if (j10 == Long.MIN_VALUE) {
                return;
            }
            if (j10 != 0) {
                this.f31165b.h(t10);
                io.reactivex.internal.util.d.f(this, 1L);
            } else {
                cancel();
                this.f31165b.onError(new MissingBackpressureException("Could not emit value due to lack of requests"));
            }
        }

        @Override
        public void i(long j10) {
            if (j.m(j10)) {
                io.reactivex.internal.util.d.b(this, j10);
            }
        }
    }

    @Ce.f
    @Ce.d
    public static <T> e<T> U8() {
        return new e<>();
    }

    @Override
    @Ce.g
    public Throwable O8() {
        if (this.f31162c.get() == f31160e) {
            return this.f31163d;
        }
        return null;
    }

    @Override
    public boolean P8() {
        return this.f31162c.get() == f31160e && this.f31163d == null;
    }

    @Override
    public boolean Q8() {
        return this.f31162c.get().length != 0;
    }

    @Override
    public boolean R8() {
        return this.f31162c.get() == f31160e && this.f31163d != null;
    }

    public boolean T8(a<T> aVar) {
        a<T>[] aVarArr;
        a[] aVarArr2;
        do {
            aVarArr = this.f31162c.get();
            if (aVarArr == f31160e) {
                return false;
            }
            int length = aVarArr.length;
            aVarArr2 = new a[length + 1];
            System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
            aVarArr2[length] = aVar;
        } while (!androidx.lifecycle.c.a(this.f31162c, aVarArr, aVarArr2));
        return true;
    }

    public boolean V8(T t10) {
        if (t10 == null) {
            onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
            return true;
        }
        a<T>[] aVarArr = this.f31162c.get();
        for (a<T> aVar : aVarArr) {
            if (aVar.b()) {
                return false;
            }
        }
        for (a<T> aVar2 : aVarArr) {
            aVar2.e(t10);
        }
        return true;
    }

    public void W8(a<T> aVar) {
        a<T>[] aVarArr;
        a[] aVarArr2;
        do {
            aVarArr = this.f31162c.get();
            if (aVarArr == f31160e || aVarArr == f31161f) {
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
                aVarArr2 = f31161f;
            } else {
                a[] aVarArr3 = new a[length - 1];
                System.arraycopy(aVarArr, 0, aVarArr3, 0, i10);
                System.arraycopy(aVarArr, i10 + 1, aVarArr3, i10, (length - i10) - 1);
                aVarArr2 = aVarArr3;
            }
        } while (!androidx.lifecycle.c.a(this.f31162c, aVarArr, aVarArr2));
    }

    @Override
    public void a() {
        a<T>[] aVarArr = this.f31162c.get();
        a<T>[] aVarArr2 = f31160e;
        if (aVarArr == aVarArr2) {
            return;
        }
        for (a<T> aVar : this.f31162c.getAndSet(aVarArr2)) {
            aVar.c();
        }
    }

    @Override
    public void h(T t10) {
        He.b.g(t10, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        for (a<T> aVar : this.f31162c.get()) {
            aVar.e(t10);
        }
    }

    @Override
    public void j(hn.d dVar) {
        if (this.f31162c.get() == f31160e) {
            dVar.cancel();
        } else {
            dVar.i(Long.MAX_VALUE);
        }
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        a<T> aVar = new a<>(cVar, this);
        cVar.j(aVar);
        if (T8(aVar)) {
            if (aVar.a()) {
                W8(aVar);
            }
        } else {
            Throwable th2 = this.f31163d;
            if (th2 != null) {
                cVar.onError(th2);
            } else {
                cVar.a();
            }
        }
    }

    @Override
    public void onError(Throwable th2) {
        He.b.g(th2, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        a<T>[] aVarArr = this.f31162c.get();
        a<T>[] aVarArr2 = f31160e;
        if (aVarArr == aVarArr2) {
            Ye.a.Y(th2);
            return;
        }
        this.f31163d = th2;
        for (a<T> aVar : this.f31162c.getAndSet(aVarArr2)) {
            aVar.d(th2);
        }
    }
}
