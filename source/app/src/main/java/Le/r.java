package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class r<T> extends AbstractC2692a<T, T> implements InterfaceC2367q<T> {

    public static final a[] f13138m = new a[0];

    public static final a[] f13139n = new a[0];

    public final AtomicBoolean f13140d;

    public final int f13141e;

    public final AtomicReference<a<T>[]> f13142f;

    public volatile long f13143g;

    public final b<T> f13144h;

    public b<T> f13145i;

    public int f13146j;

    public Throwable f13147k;

    public volatile boolean f13148l;

    public static final class a<T> extends AtomicInteger implements hn.d {

        public static final long f13149h = 6770240836423125754L;

        public final hn.c<? super T> f13150b;

        public final r<T> f13151c;

        public final AtomicLong f13152d = new AtomicLong();

        public b<T> f13153e;

        public int f13154f;

        public long f13155g;

        public a(hn.c<? super T> cVar, r<T> rVar) {
            this.f13150b = cVar;
            this.f13151c = rVar;
            this.f13153e = rVar.f13144h;
        }

        @Override
        public void cancel() {
            if (this.f13152d.getAndSet(Long.MIN_VALUE) != Long.MIN_VALUE) {
                this.f13151c.S8(this);
            }
        }

        @Override
        public void i(long j10) {
            if (Ue.j.m(j10)) {
                io.reactivex.internal.util.d.b(this.f13152d, j10);
                this.f13151c.T8(this);
            }
        }
    }

    public static final class b<T> {

        public final T[] f13156a;

        public volatile b<T> f13157b;

        public b(int i10) {
            this.f13156a = (T[]) new Object[i10];
        }
    }

    public r(AbstractC2362l<T> abstractC2362l, int i10) {
        super(abstractC2362l);
        this.f13141e = i10;
        this.f13140d = new AtomicBoolean();
        b<T> bVar = new b<>(i10);
        this.f13144h = bVar;
        this.f13145i = bVar;
        this.f13142f = new AtomicReference<>(f13138m);
    }

    public void O8(a<T> aVar) {
        a<T>[] aVarArr;
        a[] aVarArr2;
        do {
            aVarArr = this.f13142f.get();
            if (aVarArr == f13139n) {
                return;
            }
            int length = aVarArr.length;
            aVarArr2 = new a[length + 1];
            System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
            aVarArr2[length] = aVar;
        } while (!androidx.lifecycle.c.a(this.f13142f, aVarArr, aVarArr2));
    }

    public long P8() {
        return this.f13143g;
    }

    public boolean Q8() {
        return this.f13142f.get().length != 0;
    }

    public boolean R8() {
        return this.f13140d.get();
    }

    public void S8(a<T> aVar) {
        a<T>[] aVarArr;
        a[] aVarArr2;
        do {
            aVarArr = this.f13142f.get();
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
                aVarArr2 = f13138m;
            } else {
                a[] aVarArr3 = new a[length - 1];
                System.arraycopy(aVarArr, 0, aVarArr3, 0, i10);
                System.arraycopy(aVarArr, i10 + 1, aVarArr3, i10, (length - i10) - 1);
                aVarArr2 = aVarArr3;
            }
        } while (!androidx.lifecycle.c.a(this.f13142f, aVarArr, aVarArr2));
    }

    public void T8(a<T> aVar) {
        if (aVar.getAndIncrement() != 0) {
            return;
        }
        long j10 = aVar.f13155g;
        int i10 = aVar.f13154f;
        b<T> bVar = aVar.f13153e;
        AtomicLong atomicLong = aVar.f13152d;
        hn.c<? super T> cVar = aVar.f13150b;
        int i11 = this.f13141e;
        int i12 = 1;
        while (true) {
            boolean z10 = this.f13148l;
            boolean z11 = this.f13143g == j10;
            if (z10 && z11) {
                aVar.f13153e = null;
                Throwable th2 = this.f13147k;
                if (th2 != null) {
                    cVar.onError(th2);
                    return;
                } else {
                    cVar.a();
                    return;
                }
            }
            if (!z11) {
                long j11 = atomicLong.get();
                if (j11 == Long.MIN_VALUE) {
                    aVar.f13153e = null;
                    return;
                } else if (j11 != j10) {
                    if (i10 == i11) {
                        bVar = bVar.f13157b;
                        i10 = 0;
                    }
                    cVar.h(bVar.f13156a[i10]);
                    i10++;
                    j10++;
                }
            }
            aVar.f13155g = j10;
            aVar.f13154f = i10;
            aVar.f13153e = bVar;
            i12 = aVar.addAndGet(-i12);
            if (i12 == 0) {
                return;
            }
        }
    }

    @Override
    public void a() {
        this.f13148l = true;
        for (a<T> aVar : this.f13142f.getAndSet(f13139n)) {
            T8(aVar);
        }
    }

    @Override
    public void h(T t10) {
        int i10 = this.f13146j;
        if (i10 == this.f13141e) {
            b<T> bVar = new b<>(i10);
            bVar.f13156a[0] = t10;
            this.f13146j = 1;
            this.f13145i.f13157b = bVar;
            this.f13145i = bVar;
        } else {
            this.f13145i.f13156a[i10] = t10;
            this.f13146j = i10 + 1;
        }
        this.f13143g++;
        for (a<T> aVar : this.f13142f.get()) {
            T8(aVar);
        }
    }

    @Override
    public void j(hn.d dVar) {
        dVar.i(Long.MAX_VALUE);
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        a<T> aVar = new a<>(cVar, this);
        cVar.j(aVar);
        O8(aVar);
        if (this.f13140d.get() || !this.f13140d.compareAndSet(false, true)) {
            T8(aVar);
        } else {
            this.f12507c.l6(this);
        }
    }

    @Override
    public void onError(Throwable th2) {
        if (this.f13148l) {
            Ye.a.Y(th2);
            return;
        }
        this.f13147k = th2;
        this.f13148l = true;
        for (a<T> aVar : this.f13142f.getAndSet(f13139n)) {
            T8(aVar);
        }
    }
}
