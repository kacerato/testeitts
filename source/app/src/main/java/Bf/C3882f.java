package bf;

import Be.I;
import Be.J;
import io.reactivex.internal.util.p;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class C3882f<T> extends AbstractC3885i<T> {

    public static final c[] f33129e = new c[0];

    public static final c[] f33130f = new c[0];

    public static final Object[] f33131g = new Object[0];

    public final b<T> f33132b;

    public final AtomicReference<c<T>[]> f33133c = new AtomicReference<>(f33129e);

    public boolean f33134d;

    public static final class a<T> extends AtomicReference<a<T>> {

        public static final long f33135c = 6404226426336033100L;

        public final T f33136b;

        public a(T t10) {
            this.f33136b = t10;
        }
    }

    public interface b<T> {
        void a();

        void add(T t10);

        T[] b(T[] tArr);

        void c(Object obj);

        boolean compareAndSet(Object obj, Object obj2);

        void d(c<T> cVar);

        Object get();

        @Ce.g
        T getValue();

        int size();
    }

    public static final class c<T> extends AtomicInteger implements De.c {

        public static final long f33137f = 466549804534799122L;

        public final I<? super T> f33138b;

        public final C3882f<T> f33139c;

        public Object f33140d;

        public volatile boolean f33141e;

        public c(I<? super T> i10, C3882f<T> c3882f) {
            this.f33138b = i10;
            this.f33139c = c3882f;
        }

        @Override
        public boolean d() {
            return this.f33141e;
        }

        @Override
        public void dispose() {
            if (this.f33141e) {
                return;
            }
            this.f33141e = true;
            this.f33139c.B8(this);
        }
    }

    public static final class d<T> extends AtomicReference<Object> implements b<T> {

        public static final long f33142j = -8056260896137901749L;

        public final int f33143b;

        public final long f33144c;

        public final TimeUnit f33145d;

        public final J f33146e;

        public int f33147f;

        public volatile C0889f<Object> f33148g;

        public C0889f<Object> f33149h;

        public volatile boolean f33150i;

        public d(int i10, long j10, TimeUnit timeUnit, J j11) {
            this.f33143b = He.b.h(i10, "maxSize");
            this.f33144c = He.b.i(j10, "maxAge");
            this.f33145d = (TimeUnit) He.b.g(timeUnit, "unit is null");
            this.f33146e = (J) He.b.g(j11, "scheduler is null");
            C0889f<Object> c0889f = new C0889f<>(null, 0L);
            this.f33149h = c0889f;
            this.f33148g = c0889f;
        }

        @Override
        public void a() {
            C0889f<Object> c0889f = this.f33148g;
            if (c0889f.f33158b != null) {
                C0889f<Object> c0889f2 = new C0889f<>(null, 0L);
                c0889f2.lazySet(c0889f.get());
                this.f33148g = c0889f2;
            }
        }

        @Override
        public void add(T t10) {
            C0889f<Object> c0889f = new C0889f<>(t10, this.f33146e.e(this.f33145d));
            C0889f<Object> c0889f2 = this.f33149h;
            this.f33149h = c0889f;
            this.f33147f++;
            c0889f2.set(c0889f);
            g();
        }

        @Override
        public T[] b(T[] tArr) {
            C0889f<T> e10 = e();
            int f10 = f(e10);
            if (f10 != 0) {
                if (tArr.length < f10) {
                    tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), f10));
                }
                for (int i10 = 0; i10 != f10; i10++) {
                    e10 = e10.get();
                    tArr[i10] = e10.f33158b;
                }
                if (tArr.length > f10) {
                    tArr[f10] = null;
                }
            } else if (tArr.length != 0) {
                tArr[0] = null;
            }
            return tArr;
        }

        @Override
        public void c(Object obj) {
            C0889f<Object> c0889f = new C0889f<>(obj, Long.MAX_VALUE);
            C0889f<Object> c0889f2 = this.f33149h;
            this.f33149h = c0889f;
            this.f33147f++;
            c0889f2.lazySet(c0889f);
            h();
            this.f33150i = true;
        }

        @Override
        public void d(c<T> cVar) {
            if (cVar.getAndIncrement() != 0) {
                return;
            }
            I<? super T> i10 = cVar.f33138b;
            C0889f<Object> c0889f = (C0889f) cVar.f33140d;
            if (c0889f == null) {
                c0889f = e();
            }
            int i11 = 1;
            while (!cVar.f33141e) {
                while (!cVar.f33141e) {
                    C0889f<T> c0889f2 = c0889f.get();
                    if (c0889f2 != null) {
                        T t10 = c0889f2.f33158b;
                        if (this.f33150i && c0889f2.get() == null) {
                            if (p.o(t10)) {
                                i10.a();
                            } else {
                                i10.onError(p.j(t10));
                            }
                            cVar.f33140d = null;
                            cVar.f33141e = true;
                            return;
                        }
                        i10.h(t10);
                        c0889f = c0889f2;
                    } else if (c0889f.get() == null) {
                        cVar.f33140d = c0889f;
                        i11 = cVar.addAndGet(-i11);
                        if (i11 == 0) {
                            return;
                        }
                    }
                }
                cVar.f33140d = null;
                return;
            }
            cVar.f33140d = null;
        }

        public C0889f<Object> e() {
            C0889f<Object> c0889f;
            C0889f<Object> c0889f2 = this.f33148g;
            long e10 = this.f33146e.e(this.f33145d) - this.f33144c;
            C0889f<T> c0889f3 = c0889f2.get();
            while (true) {
                C0889f<T> c0889f4 = c0889f3;
                c0889f = c0889f2;
                c0889f2 = c0889f4;
                if (c0889f2 == null || c0889f2.f33159c > e10) {
                    break;
                }
                c0889f3 = c0889f2.get();
            }
            return c0889f;
        }

        public int f(C0889f<Object> c0889f) {
            int i10 = 0;
            while (i10 != Integer.MAX_VALUE) {
                C0889f<T> c0889f2 = c0889f.get();
                if (c0889f2 == null) {
                    Object obj = c0889f.f33158b;
                    return (p.o(obj) || p.r(obj)) ? i10 - 1 : i10;
                }
                i10++;
                c0889f = c0889f2;
            }
            return i10;
        }

        public void g() {
            int i10 = this.f33147f;
            if (i10 > this.f33143b) {
                this.f33147f = i10 - 1;
                this.f33148g = this.f33148g.get();
            }
            long e10 = this.f33146e.e(this.f33145d) - this.f33144c;
            C0889f<Object> c0889f = this.f33148g;
            while (true) {
                C0889f<T> c0889f2 = c0889f.get();
                if (c0889f2 == null) {
                    this.f33148g = c0889f;
                    return;
                } else {
                    if (c0889f2.f33159c > e10) {
                        this.f33148g = c0889f;
                        return;
                    }
                    c0889f = c0889f2;
                }
            }
        }

        @Override
        @Ce.g
        public T getValue() {
            T t10;
            C0889f<Object> c0889f = this.f33148g;
            C0889f<Object> c0889f2 = null;
            while (true) {
                C0889f<T> c0889f3 = c0889f.get();
                if (c0889f3 == null) {
                    break;
                }
                c0889f2 = c0889f;
                c0889f = c0889f3;
            }
            if (c0889f.f33159c >= this.f33146e.e(this.f33145d) - this.f33144c && (t10 = (T) c0889f.f33158b) != null) {
                return (p.o(t10) || p.r(t10)) ? (T) c0889f2.f33158b : t10;
            }
            return null;
        }

        public void h() {
            long e10 = this.f33146e.e(this.f33145d) - this.f33144c;
            C0889f<Object> c0889f = this.f33148g;
            while (true) {
                C0889f<T> c0889f2 = c0889f.get();
                if (c0889f2.get() == null) {
                    if (c0889f.f33158b == null) {
                        this.f33148g = c0889f;
                        return;
                    }
                    C0889f<Object> c0889f3 = new C0889f<>(null, 0L);
                    c0889f3.lazySet(c0889f.get());
                    this.f33148g = c0889f3;
                    return;
                }
                if (c0889f2.f33159c > e10) {
                    if (c0889f.f33158b == null) {
                        this.f33148g = c0889f;
                        return;
                    }
                    C0889f<Object> c0889f4 = new C0889f<>(null, 0L);
                    c0889f4.lazySet(c0889f.get());
                    this.f33148g = c0889f4;
                    return;
                }
                c0889f = c0889f2;
            }
        }

        @Override
        public int size() {
            return f(e());
        }
    }

    public static final class e<T> extends AtomicReference<Object> implements b<T> {

        public static final long f33151g = 1107649250281456395L;

        public final int f33152b;

        public int f33153c;

        public volatile a<Object> f33154d;

        public a<Object> f33155e;

        public volatile boolean f33156f;

        public e(int i10) {
            this.f33152b = He.b.h(i10, "maxSize");
            a<Object> aVar = new a<>(null);
            this.f33155e = aVar;
            this.f33154d = aVar;
        }

        @Override
        public void a() {
            a<Object> aVar = this.f33154d;
            if (aVar.f33136b != null) {
                a<Object> aVar2 = new a<>(null);
                aVar2.lazySet(aVar.get());
                this.f33154d = aVar2;
            }
        }

        @Override
        public void add(T t10) {
            a<Object> aVar = new a<>(t10);
            a<Object> aVar2 = this.f33155e;
            this.f33155e = aVar;
            this.f33153c++;
            aVar2.set(aVar);
            e();
        }

        @Override
        public T[] b(T[] tArr) {
            a<T> aVar = this.f33154d;
            int size = size();
            if (size != 0) {
                if (tArr.length < size) {
                    tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), size));
                }
                for (int i10 = 0; i10 != size; i10++) {
                    aVar = aVar.get();
                    tArr[i10] = aVar.f33136b;
                }
                if (tArr.length > size) {
                    tArr[size] = null;
                }
            } else if (tArr.length != 0) {
                tArr[0] = null;
            }
            return tArr;
        }

        @Override
        public void c(Object obj) {
            a<Object> aVar = new a<>(obj);
            a<Object> aVar2 = this.f33155e;
            this.f33155e = aVar;
            this.f33153c++;
            aVar2.lazySet(aVar);
            a();
            this.f33156f = true;
        }

        @Override
        public void d(c<T> cVar) {
            if (cVar.getAndIncrement() != 0) {
                return;
            }
            I<? super T> i10 = cVar.f33138b;
            a<Object> aVar = (a) cVar.f33140d;
            if (aVar == null) {
                aVar = this.f33154d;
            }
            int i11 = 1;
            while (!cVar.f33141e) {
                a<T> aVar2 = aVar.get();
                if (aVar2 != null) {
                    T t10 = aVar2.f33136b;
                    if (this.f33156f && aVar2.get() == null) {
                        if (p.o(t10)) {
                            i10.a();
                        } else {
                            i10.onError(p.j(t10));
                        }
                        cVar.f33140d = null;
                        cVar.f33141e = true;
                        return;
                    }
                    i10.h(t10);
                    aVar = aVar2;
                } else if (aVar.get() != null) {
                    continue;
                } else {
                    cVar.f33140d = aVar;
                    i11 = cVar.addAndGet(-i11);
                    if (i11 == 0) {
                        return;
                    }
                }
            }
            cVar.f33140d = null;
        }

        public void e() {
            int i10 = this.f33153c;
            if (i10 > this.f33152b) {
                this.f33153c = i10 - 1;
                this.f33154d = this.f33154d.get();
            }
        }

        @Override
        @Ce.g
        public T getValue() {
            a<Object> aVar = this.f33154d;
            a<Object> aVar2 = null;
            while (true) {
                a<T> aVar3 = aVar.get();
                if (aVar3 == null) {
                    break;
                }
                aVar2 = aVar;
                aVar = aVar3;
            }
            T t10 = (T) aVar.f33136b;
            if (t10 == null) {
                return null;
            }
            return (p.o(t10) || p.r(t10)) ? (T) aVar2.f33136b : t10;
        }

        @Override
        public int size() {
            a<Object> aVar = this.f33154d;
            int i10 = 0;
            while (i10 != Integer.MAX_VALUE) {
                a<T> aVar2 = aVar.get();
                if (aVar2 == null) {
                    Object obj = aVar.f33136b;
                    return (p.o(obj) || p.r(obj)) ? i10 - 1 : i10;
                }
                i10++;
                aVar = aVar2;
            }
            return i10;
        }
    }

    public static final class C0889f<T> extends AtomicReference<C0889f<T>> {

        public static final long f33157d = 6404226426336033100L;

        public final T f33158b;

        public final long f33159c;

        public C0889f(T t10, long j10) {
            this.f33158b = t10;
            this.f33159c = j10;
        }
    }

    public static final class g<T> extends AtomicReference<Object> implements b<T> {

        public static final long f33160e = -733876083048047795L;

        public final List<Object> f33161b;

        public volatile boolean f33162c;

        public volatile int f33163d;

        public g(int i10) {
            this.f33161b = new ArrayList(He.b.h(i10, "capacityHint"));
        }

        @Override
        public void a() {
        }

        @Override
        public void add(T t10) {
            this.f33161b.add(t10);
            this.f33163d++;
        }

        @Override
        public T[] b(T[] tArr) {
            int i10 = this.f33163d;
            if (i10 == 0) {
                if (tArr.length != 0) {
                    tArr[0] = null;
                }
                return tArr;
            }
            List<Object> list = this.f33161b;
            Object obj = list.get(i10 - 1);
            if ((p.o(obj) || p.r(obj)) && i10 - 1 == 0) {
                if (tArr.length != 0) {
                    tArr[0] = null;
                }
                return tArr;
            }
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
        public void c(Object obj) {
            this.f33161b.add(obj);
            a();
            this.f33163d++;
            this.f33162c = true;
        }

        @Override
        public void d(c<T> cVar) {
            int i10;
            int i11;
            if (cVar.getAndIncrement() != 0) {
                return;
            }
            List<Object> list = this.f33161b;
            I<? super T> i12 = cVar.f33138b;
            Integer num = (Integer) cVar.f33140d;
            if (num != null) {
                i10 = num.intValue();
            } else {
                i10 = 0;
                cVar.f33140d = 0;
            }
            int i13 = 1;
            while (!cVar.f33141e) {
                int i14 = this.f33163d;
                while (i14 != i10) {
                    if (cVar.f33141e) {
                        cVar.f33140d = null;
                        return;
                    }
                    Object obj = list.get(i10);
                    if (this.f33162c && (i11 = i10 + 1) == i14 && i11 == (i14 = this.f33163d)) {
                        if (p.o(obj)) {
                            i12.a();
                        } else {
                            i12.onError(p.j(obj));
                        }
                        cVar.f33140d = null;
                        cVar.f33141e = true;
                        return;
                    }
                    i12.h(obj);
                    i10++;
                }
                if (i10 == this.f33163d) {
                    cVar.f33140d = Integer.valueOf(i10);
                    i13 = cVar.addAndGet(-i13);
                    if (i13 == 0) {
                        return;
                    }
                }
            }
            cVar.f33140d = null;
        }

        @Override
        @Ce.g
        public T getValue() {
            int i10 = this.f33163d;
            if (i10 == 0) {
                return null;
            }
            List<Object> list = this.f33161b;
            T t10 = (T) list.get(i10 - 1);
            if (!p.o(t10) && !p.r(t10)) {
                return t10;
            }
            if (i10 == 1) {
                return null;
            }
            return (T) list.get(i10 - 2);
        }

        @Override
        public int size() {
            int i10 = this.f33163d;
            if (i10 == 0) {
                return 0;
            }
            int i11 = i10 - 1;
            Object obj = this.f33161b.get(i11);
            return (p.o(obj) || p.r(obj)) ? i11 : i10;
        }
    }

    public C3882f(b<T> bVar) {
        this.f33132b = bVar;
    }

    @Ce.f
    @Ce.d
    public static <T> C3882f<T> q8() {
        return new C3882f<>(new g(16));
    }

    @Ce.f
    @Ce.d
    public static <T> C3882f<T> r8(int i10) {
        return new C3882f<>(new g(i10));
    }

    public static <T> C3882f<T> s8() {
        return new C3882f<>(new e(Integer.MAX_VALUE));
    }

    @Ce.f
    @Ce.d
    public static <T> C3882f<T> t8(int i10) {
        return new C3882f<>(new e(i10));
    }

    @Ce.f
    @Ce.d
    public static <T> C3882f<T> u8(long j10, TimeUnit timeUnit, J j11) {
        return new C3882f<>(new d(Integer.MAX_VALUE, j10, timeUnit, j11));
    }

    @Ce.f
    @Ce.d
    public static <T> C3882f<T> v8(long j10, TimeUnit timeUnit, J j11, int i10) {
        return new C3882f<>(new d(i10, j10, timeUnit, j11));
    }

    public int A8() {
        return this.f33133c.get().length;
    }

    public void B8(c<T> cVar) {
        c<T>[] cVarArr;
        c[] cVarArr2;
        do {
            cVarArr = this.f33133c.get();
            if (cVarArr == f33130f || cVarArr == f33129e) {
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
                cVarArr2 = f33129e;
            } else {
                c[] cVarArr3 = new c[length - 1];
                System.arraycopy(cVarArr, 0, cVarArr3, 0, i10);
                System.arraycopy(cVarArr, i10 + 1, cVarArr3, i10, (length - i10) - 1);
                cVarArr2 = cVarArr3;
            }
        } while (!androidx.lifecycle.c.a(this.f33133c, cVarArr, cVarArr2));
    }

    public int C8() {
        return this.f33132b.size();
    }

    public c<T>[] D8(Object obj) {
        return this.f33132b.compareAndSet(null, obj) ? this.f33133c.getAndSet(f33130f) : f33130f;
    }

    @Override
    public void J5(I<? super T> i10) {
        c<T> cVar = new c<>(i10, this);
        i10.e(cVar);
        if (cVar.f33141e) {
            return;
        }
        if (o8(cVar) && cVar.f33141e) {
            B8(cVar);
        } else {
            this.f33132b.d(cVar);
        }
    }

    @Override
    public void a() {
        if (this.f33134d) {
            return;
        }
        this.f33134d = true;
        Object e10 = p.e();
        b<T> bVar = this.f33132b;
        bVar.c(e10);
        for (c<T> cVar : D8(e10)) {
            bVar.d(cVar);
        }
    }

    @Override
    public void e(De.c cVar) {
        if (this.f33134d) {
            cVar.dispose();
        }
    }

    @Override
    public void h(T t10) {
        He.b.g(t10, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f33134d) {
            return;
        }
        b<T> bVar = this.f33132b;
        bVar.add(t10);
        for (c<T> cVar : this.f33133c.get()) {
            bVar.d(cVar);
        }
    }

    @Override
    @Ce.g
    public Throwable j8() {
        Object obj = this.f33132b.get();
        if (p.r(obj)) {
            return p.j(obj);
        }
        return null;
    }

    @Override
    public boolean k8() {
        return p.o(this.f33132b.get());
    }

    @Override
    public boolean l8() {
        return this.f33133c.get().length != 0;
    }

    @Override
    public boolean m8() {
        return p.r(this.f33132b.get());
    }

    public boolean o8(c<T> cVar) {
        c<T>[] cVarArr;
        c[] cVarArr2;
        do {
            cVarArr = this.f33133c.get();
            if (cVarArr == f33130f) {
                return false;
            }
            int length = cVarArr.length;
            cVarArr2 = new c[length + 1];
            System.arraycopy(cVarArr, 0, cVarArr2, 0, length);
            cVarArr2[length] = cVar;
        } while (!androidx.lifecycle.c.a(this.f33133c, cVarArr, cVarArr2));
        return true;
    }

    @Override
    public void onError(Throwable th2) {
        He.b.g(th2, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f33134d) {
            Ye.a.Y(th2);
            return;
        }
        this.f33134d = true;
        Object h10 = p.h(th2);
        b<T> bVar = this.f33132b;
        bVar.c(h10);
        for (c<T> cVar : D8(h10)) {
            bVar.d(cVar);
        }
    }

    public void p8() {
        this.f33132b.a();
    }

    @Ce.g
    public T w8() {
        return this.f33132b.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Object[] x8() {
        Object[] objArr = f33131g;
        Object[] y82 = y8(objArr);
        return y82 == objArr ? new Object[0] : y82;
    }

    public T[] y8(T[] tArr) {
        return this.f33132b.b(tArr);
    }

    public boolean z8() {
        return this.f33132b.size() != 0;
    }
}
