package Ze;

import Ue.j;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.internal.util.a;
import io.reactivex.internal.util.p;
import java.lang.reflect.Array;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

public final class b<T> extends c<T> {

    public static final Object[] f31123j = new Object[0];

    public static final a[] f31124k = new a[0];

    public static final a[] f31125l = new a[0];

    public final AtomicReference<a<T>[]> f31126c;

    public final ReadWriteLock f31127d;

    public final Lock f31128e;

    public final Lock f31129f;

    public final AtomicReference<Object> f31130g;

    public final AtomicReference<Throwable> f31131h;

    public long f31132i;

    public static final class a<T> extends AtomicLong implements hn.d, a.InterfaceC1782a<Object> {

        public static final long f31133j = 3293175281126227086L;

        public final hn.c<? super T> f31134b;

        public final b<T> f31135c;

        public boolean f31136d;

        public boolean f31137e;

        public io.reactivex.internal.util.a<Object> f31138f;

        public boolean f31139g;

        public volatile boolean f31140h;

        public long f31141i;

        public a(hn.c<? super T> cVar, b<T> bVar) {
            this.f31134b = cVar;
            this.f31135c = bVar;
        }

        public void a() {
            if (this.f31140h) {
                return;
            }
            synchronized (this) {
                try {
                    if (this.f31140h) {
                        return;
                    }
                    if (this.f31136d) {
                        return;
                    }
                    b<T> bVar = this.f31135c;
                    Lock lock = bVar.f31128e;
                    lock.lock();
                    this.f31141i = bVar.f31132i;
                    Object obj = bVar.f31130g.get();
                    lock.unlock();
                    this.f31137e = obj != null;
                    this.f31136d = true;
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
            while (!this.f31140h) {
                synchronized (this) {
                    try {
                        aVar = this.f31138f;
                        if (aVar == null) {
                            this.f31137e = false;
                            return;
                        }
                        this.f31138f = null;
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                aVar.d(this);
            }
        }

        public void c(Object obj, long j10) {
            if (this.f31140h) {
                return;
            }
            if (!this.f31139g) {
                synchronized (this) {
                    try {
                        if (this.f31140h) {
                            return;
                        }
                        if (this.f31141i == j10) {
                            return;
                        }
                        if (this.f31137e) {
                            io.reactivex.internal.util.a<Object> aVar = this.f31138f;
                            if (aVar == null) {
                                aVar = new io.reactivex.internal.util.a<>(4);
                                this.f31138f = aVar;
                            }
                            aVar.c(obj);
                            return;
                        }
                        this.f31136d = true;
                        this.f31139g = true;
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
            test(obj);
        }

        @Override
        public void cancel() {
            if (this.f31140h) {
                return;
            }
            this.f31140h = true;
            this.f31135c.b9(this);
        }

        public boolean d() {
            return get() == 0;
        }

        @Override
        public void i(long j10) {
            if (j.m(j10)) {
                io.reactivex.internal.util.d.a(this, j10);
            }
        }

        @Override
        public boolean test(Object obj) {
            if (this.f31140h) {
                return true;
            }
            if (p.o(obj)) {
                this.f31134b.a();
                return true;
            }
            if (p.r(obj)) {
                this.f31134b.onError(p.j(obj));
                return true;
            }
            long j10 = get();
            if (j10 == 0) {
                cancel();
                this.f31134b.onError(new MissingBackpressureException("Could not deliver value due to lack of requests"));
                return true;
            }
            this.f31134b.h((Object) p.m(obj));
            if (j10 == Long.MAX_VALUE) {
                return false;
            }
            decrementAndGet();
            return false;
        }
    }

    public b() {
        this.f31130g = new AtomicReference<>();
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock();
        this.f31127d = reentrantReadWriteLock;
        this.f31128e = reentrantReadWriteLock.readLock();
        this.f31129f = reentrantReadWriteLock.writeLock();
        this.f31126c = new AtomicReference<>(f31124k);
        this.f31131h = new AtomicReference<>();
    }

    @Ce.f
    @Ce.d
    public static <T> b<T> U8() {
        return new b<>();
    }

    @Ce.f
    @Ce.d
    public static <T> b<T> V8(T t10) {
        He.b.g(t10, "defaultValue is null");
        return new b<>(t10);
    }

    @Override
    @Ce.g
    public Throwable O8() {
        Object obj = this.f31130g.get();
        if (p.r(obj)) {
            return p.j(obj);
        }
        return null;
    }

    @Override
    public boolean P8() {
        return p.o(this.f31130g.get());
    }

    @Override
    public boolean Q8() {
        return this.f31126c.get().length != 0;
    }

    @Override
    public boolean R8() {
        return p.r(this.f31130g.get());
    }

    public boolean T8(a<T> aVar) {
        a<T>[] aVarArr;
        a[] aVarArr2;
        do {
            aVarArr = this.f31126c.get();
            if (aVarArr == f31125l) {
                return false;
            }
            int length = aVarArr.length;
            aVarArr2 = new a[length + 1];
            System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
            aVarArr2[length] = aVar;
        } while (!androidx.lifecycle.c.a(this.f31126c, aVarArr, aVarArr2));
        return true;
    }

    @Ce.g
    public T W8() {
        Object obj = this.f31130g.get();
        if (p.o(obj) || p.r(obj)) {
            return null;
        }
        return (T) p.m(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Deprecated
    public Object[] X8() {
        Object[] objArr = f31123j;
        Object[] Y82 = Y8(objArr);
        return Y82 == objArr ? new Object[0] : Y82;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Deprecated
    public T[] Y8(T[] tArr) {
        Object obj = this.f31130g.get();
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

    public boolean Z8() {
        Object obj = this.f31130g.get();
        return (obj == null || p.o(obj) || p.r(obj)) ? false : true;
    }

    @Override
    public void a() {
        if (androidx.lifecycle.c.a(this.f31131h, null, ExceptionHelper.f92434a)) {
            Object e10 = p.e();
            for (a<T> aVar : e9(e10)) {
                aVar.c(e10, this.f31132i);
            }
        }
    }

    public boolean a9(T t10) {
        if (t10 == null) {
            onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
            return true;
        }
        a<T>[] aVarArr = this.f31126c.get();
        for (a<T> aVar : aVarArr) {
            if (aVar.d()) {
                return false;
            }
        }
        Object u10 = p.u(t10);
        c9(u10);
        for (a<T> aVar2 : aVarArr) {
            aVar2.c(u10, this.f31132i);
        }
        return true;
    }

    public void b9(a<T> aVar) {
        a<T>[] aVarArr;
        a[] aVarArr2;
        do {
            aVarArr = this.f31126c.get();
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
                aVarArr2 = f31124k;
            } else {
                a[] aVarArr3 = new a[length - 1];
                System.arraycopy(aVarArr, 0, aVarArr3, 0, i10);
                System.arraycopy(aVarArr, i10 + 1, aVarArr3, i10, (length - i10) - 1);
                aVarArr2 = aVarArr3;
            }
        } while (!androidx.lifecycle.c.a(this.f31126c, aVarArr, aVarArr2));
    }

    public void c9(Object obj) {
        Lock lock = this.f31129f;
        lock.lock();
        this.f31132i++;
        this.f31130g.lazySet(obj);
        lock.unlock();
    }

    public int d9() {
        return this.f31126c.get().length;
    }

    public a<T>[] e9(Object obj) {
        a<T>[] aVarArr = this.f31126c.get();
        a<T>[] aVarArr2 = f31125l;
        if (aVarArr != aVarArr2 && (aVarArr = this.f31126c.getAndSet(aVarArr2)) != aVarArr2) {
            c9(obj);
        }
        return aVarArr;
    }

    @Override
    public void h(T t10) {
        He.b.g(t10, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f31131h.get() != null) {
            return;
        }
        Object u10 = p.u(t10);
        c9(u10);
        for (a<T> aVar : this.f31126c.get()) {
            aVar.c(u10, this.f31132i);
        }
    }

    @Override
    public void j(hn.d dVar) {
        if (this.f31131h.get() != null) {
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
            if (aVar.f31140h) {
                b9(aVar);
                return;
            } else {
                aVar.a();
                return;
            }
        }
        Throwable th2 = this.f31131h.get();
        if (th2 == ExceptionHelper.f92434a) {
            cVar.a();
        } else {
            cVar.onError(th2);
        }
    }

    @Override
    public void onError(Throwable th2) {
        He.b.g(th2, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (!androidx.lifecycle.c.a(this.f31131h, null, th2)) {
            Ye.a.Y(th2);
            return;
        }
        Object h10 = p.h(th2);
        for (a<T> aVar : e9(h10)) {
            aVar.c(h10, this.f31132i);
        }
    }

    public b(T t10) {
        this();
        this.f31130g.lazySet(He.b.g(t10, "defaultValue is null"));
    }
}
