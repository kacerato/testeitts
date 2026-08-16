package Ze;

import Be.AbstractC2362l;
import Ie.l;
import Ie.o;
import Ue.j;
import io.reactivex.exceptions.MissingBackpressureException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

@Ce.b(Ce.a.FULL)
@Ce.h("none")
public final class d<T> extends c<T> {

    public static final a[] f31142o = new a[0];

    public static final a[] f31143p = new a[0];

    public final AtomicInteger f31144c;

    public final AtomicReference<hn.d> f31145d;

    public final AtomicReference<a<T>[]> f31146e;

    public final AtomicBoolean f31147f;

    public final int f31148g;

    public final int f31149h;

    public final boolean f31150i;

    public volatile o<T> f31151j;

    public volatile boolean f31152k;

    public volatile Throwable f31153l;

    public int f31154m;

    public int f31155n;

    public static final class a<T> extends AtomicLong implements hn.d {

        public static final long f31156e = -363282618957264509L;

        public final hn.c<? super T> f31157b;

        public final d<T> f31158c;

        public long f31159d;

        public a(hn.c<? super T> cVar, d<T> dVar) {
            this.f31157b = cVar;
            this.f31158c = dVar;
        }

        public void a() {
            if (get() != Long.MIN_VALUE) {
                this.f31157b.a();
            }
        }

        public void b(Throwable th2) {
            if (get() != Long.MIN_VALUE) {
                this.f31157b.onError(th2);
            }
        }

        public void c(T t10) {
            if (get() != Long.MIN_VALUE) {
                this.f31159d++;
                this.f31157b.h(t10);
            }
        }

        @Override
        public void cancel() {
            if (getAndSet(Long.MIN_VALUE) != Long.MIN_VALUE) {
                this.f31158c.a9(this);
            }
        }

        @Override
        public void i(long j10) {
            long j11;
            long j12;
            if (!j.m(j10)) {
                return;
            }
            do {
                j11 = get();
                if (j11 == Long.MIN_VALUE) {
                    return;
                }
                if (j11 == Long.MAX_VALUE) {
                    return;
                } else {
                    j12 = j11 + j10;
                }
            } while (!compareAndSet(j11, j12 >= 0 ? j12 : Long.MAX_VALUE));
            this.f31158c.Y8();
        }
    }

    public d(int i10, boolean z10) {
        He.b.h(i10, "bufferSize");
        this.f31148g = i10;
        this.f31149h = i10 - (i10 >> 2);
        this.f31144c = new AtomicInteger();
        this.f31146e = new AtomicReference<>(f31142o);
        this.f31145d = new AtomicReference<>();
        this.f31150i = z10;
        this.f31147f = new AtomicBoolean();
    }

    @Ce.f
    @Ce.d
    public static <T> d<T> U8() {
        return new d<>(AbstractC2362l.a0(), false);
    }

    @Ce.f
    @Ce.d
    public static <T> d<T> V8(int i10) {
        return new d<>(i10, false);
    }

    @Ce.f
    @Ce.d
    public static <T> d<T> W8(int i10, boolean z10) {
        return new d<>(i10, z10);
    }

    @Ce.f
    @Ce.d
    public static <T> d<T> X8(boolean z10) {
        return new d<>(AbstractC2362l.a0(), z10);
    }

    @Override
    public Throwable O8() {
        if (this.f31147f.get()) {
            return this.f31153l;
        }
        return null;
    }

    @Override
    public boolean P8() {
        return this.f31147f.get() && this.f31153l == null;
    }

    @Override
    public boolean Q8() {
        return this.f31146e.get().length != 0;
    }

    @Override
    public boolean R8() {
        return this.f31147f.get() && this.f31153l != null;
    }

    public boolean T8(a<T> aVar) {
        a<T>[] aVarArr;
        a[] aVarArr2;
        do {
            aVarArr = this.f31146e.get();
            if (aVarArr == f31143p) {
                return false;
            }
            int length = aVarArr.length;
            aVarArr2 = new a[length + 1];
            System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
            aVarArr2[length] = aVar;
        } while (!androidx.lifecycle.c.a(this.f31146e, aVarArr, aVarArr2));
        return true;
    }

    public void Y8() {
        T t10;
        if (this.f31144c.getAndIncrement() != 0) {
            return;
        }
        AtomicReference<a<T>[]> atomicReference = this.f31146e;
        int i10 = this.f31154m;
        int i11 = this.f31149h;
        int i12 = this.f31155n;
        int i13 = 1;
        while (true) {
            o<T> oVar = this.f31151j;
            if (oVar != null) {
                a<T>[] aVarArr = atomicReference.get();
                if (aVarArr.length != 0) {
                    int length = aVarArr.length;
                    long j10 = -1;
                    long j11 = -1;
                    int i14 = 0;
                    while (i14 < length) {
                        a<T> aVar = aVarArr[i14];
                        long j12 = aVar.get();
                        if (j12 >= 0) {
                            j11 = j11 == j10 ? j12 - aVar.f31159d : Math.min(j11, j12 - aVar.f31159d);
                        }
                        i14++;
                        j10 = -1;
                    }
                    int i15 = i10;
                    while (j11 > 0) {
                        a<T>[] aVarArr2 = atomicReference.get();
                        if (aVarArr2 == f31143p) {
                            oVar.clear();
                            return;
                        }
                        if (aVarArr != aVarArr2) {
                            break;
                        }
                        boolean z10 = this.f31152k;
                        try {
                            t10 = oVar.poll();
                        } catch (Throwable th2) {
                            io.reactivex.exceptions.a.b(th2);
                            j.a(this.f31145d);
                            this.f31153l = th2;
                            this.f31152k = true;
                            t10 = null;
                            z10 = true;
                        }
                        boolean z11 = t10 == null;
                        if (z10 && z11) {
                            Throwable th3 = this.f31153l;
                            if (th3 != null) {
                                for (a<T> aVar2 : atomicReference.getAndSet(f31143p)) {
                                    aVar2.b(th3);
                                }
                                return;
                            }
                            for (a<T> aVar3 : atomicReference.getAndSet(f31143p)) {
                                aVar3.a();
                            }
                            return;
                        }
                        if (z11) {
                            break;
                        }
                        for (a<T> aVar4 : aVarArr) {
                            aVar4.c(t10);
                        }
                        j11--;
                        if (i12 != 1 && (i15 = i15 + 1) == i11) {
                            this.f31145d.get().i(i11);
                            i15 = 0;
                        }
                    }
                    if (j11 == 0) {
                        a<T>[] aVarArr3 = atomicReference.get();
                        a<T>[] aVarArr4 = f31143p;
                        if (aVarArr3 == aVarArr4) {
                            oVar.clear();
                            return;
                        }
                        if (aVarArr != aVarArr3) {
                            i10 = i15;
                        } else if (this.f31152k && oVar.isEmpty()) {
                            Throwable th4 = this.f31153l;
                            if (th4 != null) {
                                for (a<T> aVar5 : atomicReference.getAndSet(aVarArr4)) {
                                    aVar5.b(th4);
                                }
                                return;
                            }
                            for (a<T> aVar6 : atomicReference.getAndSet(aVarArr4)) {
                                aVar6.a();
                            }
                            return;
                        }
                    }
                    i10 = i15;
                }
            }
            i13 = this.f31144c.addAndGet(-i13);
            if (i13 == 0) {
                return;
            }
        }
    }

    public boolean Z8(T t10) {
        if (this.f31147f.get()) {
            return false;
        }
        He.b.g(t10, "offer called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f31155n != 0 || !this.f31151j.offer(t10)) {
            return false;
        }
        Y8();
        return true;
    }

    @Override
    public void a() {
        if (this.f31147f.compareAndSet(false, true)) {
            this.f31152k = true;
            Y8();
        }
    }

    public void a9(a<T> aVar) {
        while (true) {
            a<T>[] aVarArr = this.f31146e.get();
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
            if (length != 1) {
                a[] aVarArr2 = new a[length - 1];
                System.arraycopy(aVarArr, 0, aVarArr2, 0, i10);
                System.arraycopy(aVarArr, i10 + 1, aVarArr2, i10, (length - i10) - 1);
                if (androidx.lifecycle.c.a(this.f31146e, aVarArr, aVarArr2)) {
                    return;
                }
            } else if (this.f31150i) {
                if (androidx.lifecycle.c.a(this.f31146e, aVarArr, f31143p)) {
                    j.a(this.f31145d);
                    this.f31147f.set(true);
                    return;
                }
            } else if (androidx.lifecycle.c.a(this.f31146e, aVarArr, f31142o)) {
                return;
            }
        }
    }

    public void b9() {
        if (j.j(this.f31145d, Ue.g.INSTANCE)) {
            this.f31151j = new Re.b(this.f31148g);
        }
    }

    public void c9() {
        if (j.j(this.f31145d, Ue.g.INSTANCE)) {
            this.f31151j = new Re.c(this.f31148g);
        }
    }

    @Override
    public void h(T t10) {
        if (this.f31147f.get()) {
            return;
        }
        if (this.f31155n == 0) {
            He.b.g(t10, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
            if (!this.f31151j.offer(t10)) {
                j.a(this.f31145d);
                onError(new MissingBackpressureException());
                return;
            }
        }
        Y8();
    }

    @Override
    public void j(hn.d dVar) {
        if (j.j(this.f31145d, dVar)) {
            if (dVar instanceof l) {
                l lVar = (l) dVar;
                int m10 = lVar.m(3);
                if (m10 == 1) {
                    this.f31155n = m10;
                    this.f31151j = lVar;
                    this.f31152k = true;
                    Y8();
                    return;
                }
                if (m10 == 2) {
                    this.f31155n = m10;
                    this.f31151j = lVar;
                    dVar.i(this.f31148g);
                    return;
                }
            }
            this.f31151j = new Re.b(this.f31148g);
            dVar.i(this.f31148g);
        }
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        Throwable th2;
        a<T> aVar = new a<>(cVar, this);
        cVar.j(aVar);
        if (T8(aVar)) {
            if (aVar.get() == Long.MIN_VALUE) {
                a9(aVar);
                return;
            } else {
                Y8();
                return;
            }
        }
        if ((this.f31147f.get() || !this.f31150i) && (th2 = this.f31153l) != null) {
            cVar.onError(th2);
        } else {
            cVar.a();
        }
    }

    @Override
    public void onError(Throwable th2) {
        He.b.g(th2, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (!this.f31147f.compareAndSet(false, true)) {
            Ye.a.Y(th2);
            return;
        }
        this.f31153l = th2;
        this.f31152k = true;
        Y8();
    }
}
