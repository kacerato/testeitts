package Ze;

import Be.J;
import Ue.j;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class f<T> extends Ze.c<T> {

    public static final Object[] f31167f = new Object[0];

    public static final c[] f31168g = new c[0];

    public static final c[] f31169h = new c[0];

    public final b<T> f31170c;

    public boolean f31171d;

    public final AtomicReference<c<T>[]> f31172e = new AtomicReference<>(f31168g);

    public static final class a<T> extends AtomicReference<a<T>> {

        public static final long f31173c = 6404226426336033100L;

        public final T f31174b;

        public a(T t10) {
            this.f31174b = t10;
        }
    }

    public interface b<T> {
        void a();

        T[] b(T[] tArr);

        void c(T t10);

        void complete();

        void d(Throwable th2);

        void e(c<T> cVar);

        Throwable getError();

        @Ce.g
        T getValue();

        boolean isDone();

        int size();
    }

    public static final class c<T> extends AtomicInteger implements hn.d {

        public static final long f31175h = 466549804534799122L;

        public final hn.c<? super T> f31176b;

        public final f<T> f31177c;

        public Object f31178d;

        public final AtomicLong f31179e = new AtomicLong();

        public volatile boolean f31180f;

        public long f31181g;

        public c(hn.c<? super T> cVar, f<T> fVar) {
            this.f31176b = cVar;
            this.f31177c = fVar;
        }

        @Override
        public void cancel() {
            if (this.f31180f) {
                return;
            }
            this.f31180f = true;
            this.f31177c.f9(this);
        }

        @Override
        public void i(long j10) {
            if (j.m(j10)) {
                io.reactivex.internal.util.d.a(this.f31179e, j10);
                this.f31177c.f31170c.e(this);
            }
        }
    }

    public static final class d<T> implements b<T> {

        public final int f31182a;

        public final long f31183b;

        public final TimeUnit f31184c;

        public final J f31185d;

        public int f31186e;

        public volatile C0821f<T> f31187f;

        public C0821f<T> f31188g;

        public Throwable f31189h;

        public volatile boolean f31190i;

        public d(int i10, long j10, TimeUnit timeUnit, J j11) {
            this.f31182a = He.b.h(i10, "maxSize");
            this.f31183b = He.b.i(j10, "maxAge");
            this.f31184c = (TimeUnit) He.b.g(timeUnit, "unit is null");
            this.f31185d = (J) He.b.g(j11, "scheduler is null");
            C0821f<T> c0821f = new C0821f<>(null, 0L);
            this.f31188g = c0821f;
            this.f31187f = c0821f;
        }

        @Override
        public void a() {
            if (this.f31187f.f31198b != null) {
                C0821f<T> c0821f = new C0821f<>(null, 0L);
                c0821f.lazySet(this.f31187f.get());
                this.f31187f = c0821f;
            }
        }

        @Override
        public T[] b(T[] tArr) {
            C0821f<T> f10 = f();
            int g10 = g(f10);
            if (g10 != 0) {
                if (tArr.length < g10) {
                    tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), g10));
                }
                for (int i10 = 0; i10 != g10; i10++) {
                    f10 = f10.get();
                    tArr[i10] = f10.f31198b;
                }
                if (tArr.length > g10) {
                    tArr[g10] = null;
                }
            } else if (tArr.length != 0) {
                tArr[0] = null;
            }
            return tArr;
        }

        @Override
        public void c(T t10) {
            C0821f<T> c0821f = new C0821f<>(t10, this.f31185d.e(this.f31184c));
            C0821f<T> c0821f2 = this.f31188g;
            this.f31188g = c0821f;
            this.f31186e++;
            c0821f2.set(c0821f);
            h();
        }

        @Override
        public void complete() {
            i();
            this.f31190i = true;
        }

        @Override
        public void d(Throwable th2) {
            i();
            this.f31189h = th2;
            this.f31190i = true;
        }

        @Override
        public void e(c<T> cVar) {
            if (cVar.getAndIncrement() != 0) {
                return;
            }
            hn.c<? super T> cVar2 = cVar.f31176b;
            C0821f<T> c0821f = (C0821f) cVar.f31178d;
            if (c0821f == null) {
                c0821f = f();
            }
            long j10 = cVar.f31181g;
            int i10 = 1;
            do {
                long j11 = cVar.f31179e.get();
                while (j10 != j11) {
                    if (cVar.f31180f) {
                        cVar.f31178d = null;
                        return;
                    }
                    boolean z10 = this.f31190i;
                    C0821f<T> c0821f2 = c0821f.get();
                    boolean z11 = c0821f2 == null;
                    if (z10 && z11) {
                        cVar.f31178d = null;
                        cVar.f31180f = true;
                        Throwable th2 = this.f31189h;
                        if (th2 == null) {
                            cVar2.a();
                            return;
                        } else {
                            cVar2.onError(th2);
                            return;
                        }
                    }
                    if (z11) {
                        break;
                    }
                    cVar2.h(c0821f2.f31198b);
                    j10++;
                    c0821f = c0821f2;
                }
                if (j10 == j11) {
                    if (cVar.f31180f) {
                        cVar.f31178d = null;
                        return;
                    }
                    if (this.f31190i && c0821f.get() == null) {
                        cVar.f31178d = null;
                        cVar.f31180f = true;
                        Throwable th3 = this.f31189h;
                        if (th3 == null) {
                            cVar2.a();
                            return;
                        } else {
                            cVar2.onError(th3);
                            return;
                        }
                    }
                }
                cVar.f31178d = c0821f;
                cVar.f31181g = j10;
                i10 = cVar.addAndGet(-i10);
            } while (i10 != 0);
        }

        public C0821f<T> f() {
            C0821f<T> c0821f;
            C0821f<T> c0821f2 = this.f31187f;
            long e10 = this.f31185d.e(this.f31184c) - this.f31183b;
            C0821f<T> c0821f3 = c0821f2.get();
            while (true) {
                C0821f<T> c0821f4 = c0821f3;
                c0821f = c0821f2;
                c0821f2 = c0821f4;
                if (c0821f2 == null || c0821f2.f31199c > e10) {
                    break;
                }
                c0821f3 = c0821f2.get();
            }
            return c0821f;
        }

        public int g(C0821f<T> c0821f) {
            int i10 = 0;
            while (i10 != Integer.MAX_VALUE && (c0821f = c0821f.get()) != null) {
                i10++;
            }
            return i10;
        }

        @Override
        public Throwable getError() {
            return this.f31189h;
        }

        @Override
        @Ce.g
        public T getValue() {
            C0821f<T> c0821f = this.f31187f;
            while (true) {
                C0821f<T> c0821f2 = c0821f.get();
                if (c0821f2 == null) {
                    break;
                }
                c0821f = c0821f2;
            }
            if (c0821f.f31199c < this.f31185d.e(this.f31184c) - this.f31183b) {
                return null;
            }
            return c0821f.f31198b;
        }

        public void h() {
            int i10 = this.f31186e;
            if (i10 > this.f31182a) {
                this.f31186e = i10 - 1;
                this.f31187f = this.f31187f.get();
            }
            long e10 = this.f31185d.e(this.f31184c) - this.f31183b;
            C0821f<T> c0821f = this.f31187f;
            while (true) {
                C0821f<T> c0821f2 = c0821f.get();
                if (c0821f2 == null) {
                    this.f31187f = c0821f;
                    return;
                } else {
                    if (c0821f2.f31199c > e10) {
                        this.f31187f = c0821f;
                        return;
                    }
                    c0821f = c0821f2;
                }
            }
        }

        public void i() {
            long e10 = this.f31185d.e(this.f31184c) - this.f31183b;
            C0821f<T> c0821f = this.f31187f;
            while (true) {
                C0821f<T> c0821f2 = c0821f.get();
                if (c0821f2 == null) {
                    if (c0821f.f31198b != null) {
                        this.f31187f = new C0821f<>(null, 0L);
                        return;
                    } else {
                        this.f31187f = c0821f;
                        return;
                    }
                }
                if (c0821f2.f31199c > e10) {
                    if (c0821f.f31198b == null) {
                        this.f31187f = c0821f;
                        return;
                    }
                    C0821f<T> c0821f3 = new C0821f<>(null, 0L);
                    c0821f3.lazySet(c0821f.get());
                    this.f31187f = c0821f3;
                    return;
                }
                c0821f = c0821f2;
            }
        }

        @Override
        public boolean isDone() {
            return this.f31190i;
        }

        @Override
        public int size() {
            return g(f());
        }
    }

    public static final class e<T> implements b<T> {

        public final int f31191a;

        public int f31192b;

        public volatile a<T> f31193c;

        public a<T> f31194d;

        public Throwable f31195e;

        public volatile boolean f31196f;

        public e(int i10) {
            this.f31191a = He.b.h(i10, "maxSize");
            a<T> aVar = new a<>(null);
            this.f31194d = aVar;
            this.f31193c = aVar;
        }

        @Override
        public void a() {
            if (this.f31193c.f31174b != null) {
                a<T> aVar = new a<>(null);
                aVar.lazySet(this.f31193c.get());
                this.f31193c = aVar;
            }
        }

        @Override
        public T[] b(T[] tArr) {
            a<T> aVar = this.f31193c;
            a<T> aVar2 = aVar;
            int i10 = 0;
            while (true) {
                aVar2 = aVar2.get();
                if (aVar2 == null) {
                    break;
                }
                i10++;
            }
            if (tArr.length < i10) {
                tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), i10));
            }
            for (int i11 = 0; i11 < i10; i11++) {
                aVar = aVar.get();
                tArr[i11] = aVar.f31174b;
            }
            if (tArr.length > i10) {
                tArr[i10] = null;
            }
            return tArr;
        }

        @Override
        public void c(T t10) {
            a<T> aVar = new a<>(t10);
            a<T> aVar2 = this.f31194d;
            this.f31194d = aVar;
            this.f31192b++;
            aVar2.set(aVar);
            f();
        }

        @Override
        public void complete() {
            a();
            this.f31196f = true;
        }

        @Override
        public void d(Throwable th2) {
            this.f31195e = th2;
            a();
            this.f31196f = true;
        }

        @Override
        public void e(c<T> cVar) {
            if (cVar.getAndIncrement() != 0) {
                return;
            }
            hn.c<? super T> cVar2 = cVar.f31176b;
            a<T> aVar = (a) cVar.f31178d;
            if (aVar == null) {
                aVar = this.f31193c;
            }
            long j10 = cVar.f31181g;
            int i10 = 1;
            do {
                long j11 = cVar.f31179e.get();
                while (j10 != j11) {
                    if (cVar.f31180f) {
                        cVar.f31178d = null;
                        return;
                    }
                    boolean z10 = this.f31196f;
                    a<T> aVar2 = aVar.get();
                    boolean z11 = aVar2 == null;
                    if (z10 && z11) {
                        cVar.f31178d = null;
                        cVar.f31180f = true;
                        Throwable th2 = this.f31195e;
                        if (th2 == null) {
                            cVar2.a();
                            return;
                        } else {
                            cVar2.onError(th2);
                            return;
                        }
                    }
                    if (z11) {
                        break;
                    }
                    cVar2.h(aVar2.f31174b);
                    j10++;
                    aVar = aVar2;
                }
                if (j10 == j11) {
                    if (cVar.f31180f) {
                        cVar.f31178d = null;
                        return;
                    }
                    if (this.f31196f && aVar.get() == null) {
                        cVar.f31178d = null;
                        cVar.f31180f = true;
                        Throwable th3 = this.f31195e;
                        if (th3 == null) {
                            cVar2.a();
                            return;
                        } else {
                            cVar2.onError(th3);
                            return;
                        }
                    }
                }
                cVar.f31178d = aVar;
                cVar.f31181g = j10;
                i10 = cVar.addAndGet(-i10);
            } while (i10 != 0);
        }

        public void f() {
            int i10 = this.f31192b;
            if (i10 > this.f31191a) {
                this.f31192b = i10 - 1;
                this.f31193c = this.f31193c.get();
            }
        }

        @Override
        public Throwable getError() {
            return this.f31195e;
        }

        @Override
        public T getValue() {
            a<T> aVar = this.f31193c;
            while (true) {
                a<T> aVar2 = aVar.get();
                if (aVar2 == null) {
                    return aVar.f31174b;
                }
                aVar = aVar2;
            }
        }

        @Override
        public boolean isDone() {
            return this.f31196f;
        }

        @Override
        public int size() {
            a<T> aVar = this.f31193c;
            int i10 = 0;
            while (i10 != Integer.MAX_VALUE && (aVar = aVar.get()) != null) {
                i10++;
            }
            return i10;
        }
    }

    public static final class C0821f<T> extends AtomicReference<C0821f<T>> {

        public static final long f31197d = 6404226426336033100L;

        public final T f31198b;

        public final long f31199c;

        public C0821f(T t10, long j10) {
            this.f31198b = t10;
            this.f31199c = j10;
        }
    }

    public static final class g<T> implements b<T> {

        public final List<T> f31200a;

        public Throwable f31201b;

        public volatile boolean f31202c;

        public volatile int f31203d;

        public g(int i10) {
            this.f31200a = new ArrayList(He.b.h(i10, "capacityHint"));
        }

        @Override
        public void a() {
        }

        @Override
        public T[] b(T[] tArr) {
            int i10 = this.f31203d;
            if (i10 == 0) {
                if (tArr.length != 0) {
                    tArr[0] = null;
                }
                return tArr;
            }
            List<T> list = this.f31200a;
            if (tArr.length < i10) {
                tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), i10));
            }
            for (int i11 = 0; i11 < i10; i11++) {
                tArr[i11] = list.get(i11);
            }
            if (tArr.length > i10) {
                tArr[i10] = null;
            }
            return tArr;
        }

        @Override
        public void c(T t10) {
            this.f31200a.add(t10);
            this.f31203d++;
        }

        @Override
        public void complete() {
            this.f31202c = true;
        }

        @Override
        public void d(Throwable th2) {
            this.f31201b = th2;
            this.f31202c = true;
        }

        @Override
        public void e(c<T> cVar) {
            int i10;
            if (cVar.getAndIncrement() != 0) {
                return;
            }
            List<T> list = this.f31200a;
            hn.c<? super T> cVar2 = cVar.f31176b;
            Integer num = (Integer) cVar.f31178d;
            if (num != null) {
                i10 = num.intValue();
            } else {
                i10 = 0;
                cVar.f31178d = 0;
            }
            long j10 = cVar.f31181g;
            int i11 = 1;
            do {
                long j11 = cVar.f31179e.get();
                while (j10 != j11) {
                    if (cVar.f31180f) {
                        cVar.f31178d = null;
                        return;
                    }
                    boolean z10 = this.f31202c;
                    int i12 = this.f31203d;
                    if (z10 && i10 == i12) {
                        cVar.f31178d = null;
                        cVar.f31180f = true;
                        Throwable th2 = this.f31201b;
                        if (th2 == null) {
                            cVar2.a();
                            return;
                        } else {
                            cVar2.onError(th2);
                            return;
                        }
                    }
                    if (i10 == i12) {
                        break;
                    }
                    cVar2.h(list.get(i10));
                    i10++;
                    j10++;
                }
                if (j10 == j11) {
                    if (cVar.f31180f) {
                        cVar.f31178d = null;
                        return;
                    }
                    boolean z11 = this.f31202c;
                    int i13 = this.f31203d;
                    if (z11 && i10 == i13) {
                        cVar.f31178d = null;
                        cVar.f31180f = true;
                        Throwable th3 = this.f31201b;
                        if (th3 == null) {
                            cVar2.a();
                            return;
                        } else {
                            cVar2.onError(th3);
                            return;
                        }
                    }
                }
                cVar.f31178d = Integer.valueOf(i10);
                cVar.f31181g = j10;
                i11 = cVar.addAndGet(-i11);
            } while (i11 != 0);
        }

        @Override
        public Throwable getError() {
            return this.f31201b;
        }

        @Override
        @Ce.g
        public T getValue() {
            int i10 = this.f31203d;
            if (i10 == 0) {
                return null;
            }
            return this.f31200a.get(i10 - 1);
        }

        @Override
        public boolean isDone() {
            return this.f31202c;
        }

        @Override
        public int size() {
            return this.f31203d;
        }
    }

    public f(b<T> bVar) {
        this.f31170c = bVar;
    }

    @Ce.f
    @Ce.d
    public static <T> f<T> V8() {
        return new f<>(new g(16));
    }

    @Ce.f
    @Ce.d
    public static <T> f<T> W8(int i10) {
        return new f<>(new g(i10));
    }

    public static <T> f<T> X8() {
        return new f<>(new e(Integer.MAX_VALUE));
    }

    @Ce.f
    @Ce.d
    public static <T> f<T> Y8(int i10) {
        return new f<>(new e(i10));
    }

    @Ce.f
    @Ce.d
    public static <T> f<T> Z8(long j10, TimeUnit timeUnit, J j11) {
        return new f<>(new d(Integer.MAX_VALUE, j10, timeUnit, j11));
    }

    @Ce.f
    @Ce.d
    public static <T> f<T> a9(long j10, TimeUnit timeUnit, J j11, int i10) {
        return new f<>(new d(i10, j10, timeUnit, j11));
    }

    @Override
    @Ce.g
    public Throwable O8() {
        b<T> bVar = this.f31170c;
        if (bVar.isDone()) {
            return bVar.getError();
        }
        return null;
    }

    @Override
    public boolean P8() {
        b<T> bVar = this.f31170c;
        return bVar.isDone() && bVar.getError() == null;
    }

    @Override
    public boolean Q8() {
        return this.f31172e.get().length != 0;
    }

    @Override
    public boolean R8() {
        b<T> bVar = this.f31170c;
        return bVar.isDone() && bVar.getError() != null;
    }

    public boolean T8(c<T> cVar) {
        c<T>[] cVarArr;
        c[] cVarArr2;
        do {
            cVarArr = this.f31172e.get();
            if (cVarArr == f31169h) {
                return false;
            }
            int length = cVarArr.length;
            cVarArr2 = new c[length + 1];
            System.arraycopy(cVarArr, 0, cVarArr2, 0, length);
            cVarArr2[length] = cVar;
        } while (!androidx.lifecycle.c.a(this.f31172e, cVarArr, cVarArr2));
        return true;
    }

    public void U8() {
        this.f31170c.a();
    }

    @Override
    public void a() {
        if (this.f31171d) {
            return;
        }
        this.f31171d = true;
        b<T> bVar = this.f31170c;
        bVar.complete();
        for (c<T> cVar : this.f31172e.getAndSet(f31169h)) {
            bVar.e(cVar);
        }
    }

    public T b9() {
        return this.f31170c.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Object[] c9() {
        Object[] objArr = f31167f;
        Object[] d92 = d9(objArr);
        return d92 == objArr ? new Object[0] : d92;
    }

    public T[] d9(T[] tArr) {
        return this.f31170c.b(tArr);
    }

    public boolean e9() {
        return this.f31170c.size() != 0;
    }

    public void f9(c<T> cVar) {
        c<T>[] cVarArr;
        c[] cVarArr2;
        do {
            cVarArr = this.f31172e.get();
            if (cVarArr == f31169h || cVarArr == f31168g) {
                return;
            }
            int length = cVarArr.length;
            int i10 = 0;
            while (true) {
                if (i10 >= length) {
                    i10 = -1;
                    break;
                } else if (cVarArr[i10] == cVar) {
                    break;
                } else {
                    i10++;
                }
            }
            if (i10 < 0) {
                return;
            }
            if (length == 1) {
                cVarArr2 = f31168g;
            } else {
                c[] cVarArr3 = new c[length - 1];
                System.arraycopy(cVarArr, 0, cVarArr3, 0, i10);
                System.arraycopy(cVarArr, i10 + 1, cVarArr3, i10, (length - i10) - 1);
                cVarArr2 = cVarArr3;
            }
        } while (!androidx.lifecycle.c.a(this.f31172e, cVarArr, cVarArr2));
    }

    public int g9() {
        return this.f31170c.size();
    }

    @Override
    public void h(T t10) {
        He.b.g(t10, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f31171d) {
            return;
        }
        b<T> bVar = this.f31170c;
        bVar.c(t10);
        for (c<T> cVar : this.f31172e.get()) {
            bVar.e(cVar);
        }
    }

    public int h9() {
        return this.f31172e.get().length;
    }

    @Override
    public void j(hn.d dVar) {
        if (this.f31171d) {
            dVar.cancel();
        } else {
            dVar.i(Long.MAX_VALUE);
        }
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        c<T> cVar2 = new c<>(cVar, this);
        cVar.j(cVar2);
        if (T8(cVar2) && cVar2.f31180f) {
            f9(cVar2);
        } else {
            this.f31170c.e(cVar2);
        }
    }

    @Override
    public void onError(Throwable th2) {
        He.b.g(th2, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f31171d) {
            Ye.a.Y(th2);
            return;
        }
        this.f31171d = true;
        b<T> bVar = this.f31170c;
        bVar.d(th2);
        for (c<T> cVar : this.f31172e.getAndSet(f31169h)) {
            bVar.e(cVar);
        }
    }
}
