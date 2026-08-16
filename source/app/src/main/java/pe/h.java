package Pe;

import Be.InterfaceC2367q;
import io.reactivex.exceptions.MissingBackpressureException;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLongArray;

public final class h<T> extends Xe.b<T> {

    public final hn.b<? extends T> f21317a;

    public final int f21318b;

    public final int f21319c;

    public static final class a<T> extends AtomicInteger implements InterfaceC2367q<T> {

        public static final long f21320p = -4470634016609963609L;

        public final hn.c<? super T>[] f21321b;

        public final AtomicLongArray f21322c;

        public final long[] f21323d;

        public final int f21324e;

        public final int f21325f;

        public hn.d f21326g;

        public Ie.o<T> f21327h;

        public Throwable f21328i;

        public volatile boolean f21329j;

        public int f21330k;

        public volatile boolean f21331l;

        public final AtomicInteger f21332m = new AtomicInteger();

        public int f21333n;

        public int f21334o;

        public final class C0521a implements hn.d {

            public final int f21335b;

            public final int f21336c;

            public C0521a(int i10, int i11) {
                this.f21335b = i10;
                this.f21336c = i11;
            }

            @Override
            public void cancel() {
                if (a.this.f21322c.compareAndSet(this.f21335b + this.f21336c, 0L, 1L)) {
                    a aVar = a.this;
                    int i10 = this.f21336c;
                    aVar.b(i10 + i10);
                }
            }

            @Override
            public void i(long j10) {
                long j11;
                if (Ue.j.m(j10)) {
                    AtomicLongArray atomicLongArray = a.this.f21322c;
                    do {
                        j11 = atomicLongArray.get(this.f21335b);
                        if (j11 == Long.MAX_VALUE) {
                            return;
                        }
                    } while (!atomicLongArray.compareAndSet(this.f21335b, j11, io.reactivex.internal.util.d.c(j11, j10)));
                    if (a.this.f21332m.get() == this.f21336c) {
                        a.this.c();
                    }
                }
            }
        }

        public a(hn.c<? super T>[] cVarArr, int i10) {
            this.f21321b = cVarArr;
            this.f21324e = i10;
            this.f21325f = i10 - (i10 >> 2);
            int length = cVarArr.length;
            int i11 = length + length;
            AtomicLongArray atomicLongArray = new AtomicLongArray(i11 + 1);
            this.f21322c = atomicLongArray;
            atomicLongArray.lazySet(i11, length);
            this.f21323d = new long[length];
        }

        @Override
        public void a() {
            this.f21329j = true;
            c();
        }

        public void b(int i10) {
            if (this.f21322c.decrementAndGet(i10) == 0) {
                this.f21331l = true;
                this.f21326g.cancel();
                if (getAndIncrement() == 0) {
                    this.f21327h.clear();
                }
            }
        }

        public void c() {
            if (getAndIncrement() != 0) {
                return;
            }
            if (this.f21334o == 1) {
                e();
            } else {
                d();
            }
        }

        public void d() {
            Throwable th2;
            Ie.o<T> oVar = this.f21327h;
            hn.c<? super T>[] cVarArr = this.f21321b;
            AtomicLongArray atomicLongArray = this.f21322c;
            long[] jArr = this.f21323d;
            int length = jArr.length;
            int i10 = this.f21330k;
            int i11 = this.f21333n;
            int i12 = 1;
            while (true) {
                int i13 = 0;
                int i14 = 0;
                while (!this.f21331l) {
                    boolean z10 = this.f21329j;
                    if (z10 && (th2 = this.f21328i) != null) {
                        oVar.clear();
                        int length2 = cVarArr.length;
                        while (i13 < length2) {
                            cVarArr[i13].onError(th2);
                            i13++;
                        }
                        return;
                    }
                    boolean isEmpty = oVar.isEmpty();
                    if (z10 && isEmpty) {
                        int length3 = cVarArr.length;
                        while (i13 < length3) {
                            cVarArr[i13].a();
                            i13++;
                        }
                        return;
                    }
                    if (!isEmpty) {
                        long j10 = atomicLongArray.get(i10);
                        long j11 = jArr[i10];
                        if (j10 == j11 || atomicLongArray.get(length + i10) != 0) {
                            i14++;
                        } else {
                            try {
                                T poll = oVar.poll();
                                if (poll != null) {
                                    cVarArr[i10].h(poll);
                                    jArr[i10] = j11 + 1;
                                    i11++;
                                    if (i11 == this.f21325f) {
                                        this.f21326g.i(i11);
                                        i11 = 0;
                                    }
                                    i14 = 0;
                                }
                            } catch (Throwable th3) {
                                io.reactivex.exceptions.a.b(th3);
                                this.f21326g.cancel();
                                int length4 = cVarArr.length;
                                while (i13 < length4) {
                                    cVarArr[i13].onError(th3);
                                    i13++;
                                }
                                return;
                            }
                        }
                        i10++;
                        if (i10 == length) {
                            i10 = 0;
                        }
                        if (i14 == length) {
                        }
                    }
                    int i15 = get();
                    if (i15 == i12) {
                        this.f21330k = i10;
                        this.f21333n = i11;
                        i12 = addAndGet(-i12);
                        if (i12 == 0) {
                            return;
                        }
                    } else {
                        i12 = i15;
                    }
                }
                oVar.clear();
                return;
            }
        }

        public void e() {
            Ie.o<T> oVar = this.f21327h;
            hn.c<? super T>[] cVarArr = this.f21321b;
            AtomicLongArray atomicLongArray = this.f21322c;
            long[] jArr = this.f21323d;
            int length = jArr.length;
            int i10 = this.f21330k;
            int i11 = 1;
            while (true) {
                int i12 = 0;
                int i13 = 0;
                while (!this.f21331l) {
                    if (oVar.isEmpty()) {
                        int length2 = cVarArr.length;
                        while (i12 < length2) {
                            cVarArr[i12].a();
                            i12++;
                        }
                        return;
                    }
                    long j10 = atomicLongArray.get(i10);
                    long j11 = jArr[i10];
                    if (j10 == j11 || atomicLongArray.get(length + i10) != 0) {
                        i13++;
                    } else {
                        try {
                            T poll = oVar.poll();
                            if (poll == null) {
                                int length3 = cVarArr.length;
                                while (i12 < length3) {
                                    cVarArr[i12].a();
                                    i12++;
                                }
                                return;
                            }
                            cVarArr[i10].h(poll);
                            jArr[i10] = j11 + 1;
                            i13 = 0;
                        } catch (Throwable th2) {
                            io.reactivex.exceptions.a.b(th2);
                            this.f21326g.cancel();
                            int length4 = cVarArr.length;
                            while (i12 < length4) {
                                cVarArr[i12].onError(th2);
                                i12++;
                            }
                            return;
                        }
                    }
                    i10++;
                    if (i10 == length) {
                        i10 = 0;
                    }
                    if (i13 == length) {
                        int i14 = get();
                        if (i14 == i11) {
                            this.f21330k = i10;
                            i11 = addAndGet(-i11);
                            if (i11 == 0) {
                                return;
                            }
                        } else {
                            i11 = i14;
                        }
                    }
                }
                oVar.clear();
                return;
            }
        }

        public void f() {
            hn.c<? super T>[] cVarArr = this.f21321b;
            int length = cVarArr.length;
            int i10 = 0;
            while (i10 < length && !this.f21331l) {
                int i11 = i10 + 1;
                this.f21332m.lazySet(i11);
                cVarArr[i10].j(new C0521a(i10, length));
                i10 = i11;
            }
        }

        @Override
        public void h(T t10) {
            if (this.f21334o != 0 || this.f21327h.offer(t10)) {
                c();
            } else {
                this.f21326g.cancel();
                onError(new MissingBackpressureException("Queue is full?"));
            }
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f21326g, dVar)) {
                this.f21326g = dVar;
                if (dVar instanceof Ie.l) {
                    Ie.l lVar = (Ie.l) dVar;
                    int m10 = lVar.m(7);
                    if (m10 == 1) {
                        this.f21334o = m10;
                        this.f21327h = lVar;
                        this.f21329j = true;
                        f();
                        c();
                        return;
                    }
                    if (m10 == 2) {
                        this.f21334o = m10;
                        this.f21327h = lVar;
                        f();
                        dVar.i(this.f21324e);
                        return;
                    }
                }
                this.f21327h = new Re.b(this.f21324e);
                f();
                dVar.i(this.f21324e);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f21328i = th2;
            this.f21329j = true;
            c();
        }
    }

    public h(hn.b<? extends T> bVar, int i10, int i11) {
        this.f21317a = bVar;
        this.f21318b = i10;
        this.f21319c = i11;
    }

    @Override
    public int F() {
        return this.f21318b;
    }

    @Override
    public void Q(hn.c<? super T>[] cVarArr) {
        if (U(cVarArr)) {
            this.f21317a.l(new a(cVarArr, this.f21319c));
        }
    }
}
