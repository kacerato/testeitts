package bf;

import Be.I;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.internal.util.a;
import io.reactivex.internal.util.p;
import java.lang.reflect.Array;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

public final class C3878b<T> extends AbstractC3885i<T> {

    public static final Object[] f33089i = new Object[0];

    public static final a[] f33090j = new a[0];

    public static final a[] f33091k = new a[0];

    public final AtomicReference<Object> f33092b;

    public final AtomicReference<a<T>[]> f33093c;

    public final ReadWriteLock f33094d;

    public final Lock f33095e;

    public final Lock f33096f;

    public final AtomicReference<Throwable> f33097g;

    public long f33098h;

    public static final class a<T> implements De.c, a.InterfaceC1782a<Object> {

        public final I<? super T> f33099b;

        public final C3878b<T> f33100c;

        public boolean f33101d;

        public boolean f33102e;

        public io.reactivex.internal.util.a<Object> f33103f;

        public boolean f33104g;

        public volatile boolean f33105h;

        public long f33106i;

        public a(I<? super T> i10, C3878b<T> c3878b) {
            this.f33099b = i10;
            this.f33100c = c3878b;
        }

        public void a() {
            if (this.f33105h) {
                return;
            }
            synchronized (this) {
                try {
                    if (this.f33105h) {
                        return;
                    }
                    if (this.f33101d) {
                        return;
                    }
                    C3878b<T> c3878b = this.f33100c;
                    Lock lock = c3878b.f33095e;
                    lock.lock();
                    this.f33106i = c3878b.f33098h;
                    Object obj = c3878b.f33092b.get();
                    lock.unlock();
                    this.f33102e = obj != null;
                    this.f33101d = true;
                    if (obj == null || test(obj)) {
                        return;
                    }
                    b();
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        public void b() {
            io.reactivex.internal.util.a<Object> aVar;
            while (!this.f33105h) {
                synchronized (this) {
                    try {
                        aVar = this.f33103f;
                        if (aVar == null) {
                            this.f33102e = false;
                            return;
                        }
                        this.f33103f = null;
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                aVar.d(this);
            }
        }

        public void c(Object obj, long j10) {
            if (this.f33105h) {
                return;
            }
            if (!this.f33104g) {
                synchronized (this) {
                    try {
                        if (this.f33105h) {
                            return;
                        }
                        if (this.f33106i == j10) {
                            return;
                        }
                        if (this.f33102e) {
                            io.reactivex.internal.util.a<Object> aVar = this.f33103f;
                            if (aVar == null) {
                                aVar = new io.reactivex.internal.util.a<>(4);
                                this.f33103f = aVar;
                            }
                            aVar.c(obj);
                            return;
                        }
                        this.f33101d = true;
                        this.f33104g = true;
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
            test(obj);
        }

        @Override
        public boolean d() {
            return this.f33105h;
        }

        @Override
        public void dispose() {
            if (this.f33105h) {
                return;
            }
            this.f33105h = true;
            this.f33100c.v8(this);
        }

        @Override
        public boolean test(Object obj) {
            return this.f33105h || p.a(obj, this.f33099b);
        }
    }

    public C3878b() {
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock();
        this.f33094d = reentrantReadWriteLock;
        this.f33095e = reentrantReadWriteLock.readLock();
        this.f33096f = reentrantReadWriteLock.writeLock();
        this.f33093c = new AtomicReference<>(f33090j);
        this.f33092b = new AtomicReference<>();
        this.f33097g = new AtomicReference<>();
    }

    @Ce.f
    @Ce.d
    public static <T> C3878b<T> p8() {
        return new C3878b<>();
    }

    @Ce.f
    @Ce.d
    public static <T> C3878b<T> q8(T t10) {
        return new C3878b<>(t10);
    }

    @Override
    public void J5(I<? super T> i10) {
        a<T> aVar = new a<>(i10, this);
        i10.e(aVar);
        if (o8(aVar)) {
            if (aVar.f33105h) {
                v8(aVar);
                return;
            } else {
                aVar.a();
                return;
            }
        }
        Throwable th2 = this.f33097g.get();
        if (th2 == ExceptionHelper.f92434a) {
            i10.a();
        } else {
            i10.onError(th2);
        }
    }

    @Override
    public void a() {
        if (androidx.lifecycle.c.a(this.f33097g, null, ExceptionHelper.f92434a)) {
            Object e10 = p.e();
            for (a<T> aVar : y8(e10)) {
                aVar.c(e10, this.f33098h);
            }
        }
    }

    @Override
    public void e(De.c cVar) {
        if (this.f33097g.get() != null) {
            cVar.dispose();
        }
    }

    @Override
    public void h(T t10) {
        He.b.g(t10, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f33097g.get() != null) {
            return;
        }
        Object u10 = p.u(t10);
        w8(u10);
        for (a<T> aVar : this.f33093c.get()) {
            aVar.c(u10, this.f33098h);
        }
    }

    @Override
    @Ce.g
    public Throwable j8() {
        Object obj = this.f33092b.get();
        if (p.r(obj)) {
            return p.j(obj);
        }
        return null;
    }

    @Override
    public boolean k8() {
        return p.o(this.f33092b.get());
    }

    @Override
    public boolean l8() {
        return this.f33093c.get().length != 0;
    }

    @Override
    public boolean m8() {
        return p.r(this.f33092b.get());
    }

    public boolean o8(a<T> aVar) {
        a<T>[] aVarArr;
        a[] aVarArr2;
        do {
            aVarArr = this.f33093c.get();
            if (aVarArr == f33091k) {
                return false;
            }
            int length = aVarArr.length;
            aVarArr2 = new a[length + 1];
            System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
            aVarArr2[length] = aVar;
        } while (!androidx.lifecycle.c.a(this.f33093c, aVarArr, aVarArr2));
        return true;
    }

    @Override
    public void onError(Throwable th2) {
        He.b.g(th2, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (!androidx.lifecycle.c.a(this.f33097g, null, th2)) {
            Ye.a.Y(th2);
            return;
        }
        Object h10 = p.h(th2);
        for (a<T> aVar : y8(h10)) {
            aVar.c(h10, this.f33098h);
        }
    }

    @Ce.g
    public T r8() {
        Object obj = this.f33092b.get();
        if (p.o(obj) || p.r(obj)) {
            return null;
        }
        return (T) p.m(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Deprecated
    public Object[] s8() {
        Object[] objArr = f33089i;
        Object[] t82 = t8(objArr);
        return t82 == objArr ? new Object[0] : t82;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Deprecated
    public T[] t8(T[] tArr) {
        Object obj = this.f33092b.get();
        if (obj == null || p.o(obj) || p.r(obj)) {
            if (tArr.length != 0) {
                tArr[0] = 0;
            }
            return tArr;
        }
        Object m10 = p.m(obj);
        if (tArr.length == 0) {
            T[] tArr2 = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), 1));
            tArr2[0] = m10;
            return tArr2;
        }
        tArr[0] = m10;
        if (tArr.length == 1) {
            return tArr;
        }
        tArr[1] = 0;
        return tArr;
    }

    public boolean u8() {
        Object obj = this.f33092b.get();
        return (obj == null || p.o(obj) || p.r(obj)) ? false : true;
    }

    public void v8(a<T> aVar) {
        a<T>[] aVarArr;
        a[] aVarArr2;
        do {
            aVarArr = this.f33093c.get();
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
                aVarArr2 = f33090j;
            } else {
                a[] aVarArr3 = new a[length - 1];
                System.arraycopy(aVarArr, 0, aVarArr3, 0, i10);
                System.arraycopy(aVarArr, i10 + 1, aVarArr3, i10, (length - i10) - 1);
                aVarArr2 = aVarArr3;
            }
        } while (!androidx.lifecycle.c.a(this.f33093c, aVarArr, aVarArr2));
    }

    public void w8(Object obj) {
        this.f33096f.lock();
        this.f33098h++;
        this.f33092b.lazySet(obj);
        this.f33096f.unlock();
    }

    public int x8() {
        return this.f33093c.get().length;
    }

    public a<T>[] y8(Object obj) {
        AtomicReference<a<T>[]> atomicReference = this.f33093c;
        a<T>[] aVarArr = f33091k;
        a<T>[] andSet = atomicReference.getAndSet(aVarArr);
        if (andSet != aVarArr) {
            w8(obj);
        }
        return andSet;
    }

    public C3878b(T t10) {
        this();
        this.f33092b.lazySet(He.b.g(t10, "defaultValue is null"));
    }
}
