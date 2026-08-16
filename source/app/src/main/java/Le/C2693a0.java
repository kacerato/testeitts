package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class C2693a0<T, U> extends AbstractC2692a<T, U> {

    public final Fe.o<? super T, ? extends hn.b<? extends U>> f12508d;

    public final boolean f12509e;

    public final int f12510f;

    public final int f12511g;

    public static final class a<T, U> extends AtomicReference<hn.d> implements InterfaceC2367q<U>, De.c {

        public static final long f12512j = -4606175640614850599L;

        public final long f12513b;

        public final b<T, U> f12514c;

        public final int f12515d;

        public final int f12516e;

        public volatile boolean f12517f;

        public volatile Ie.o<U> f12518g;

        public long f12519h;

        public int f12520i;

        public a(b<T, U> bVar, long j10) {
            this.f12513b = j10;
            this.f12514c = bVar;
            int i10 = bVar.f12528f;
            this.f12516e = i10;
            this.f12515d = i10 >> 2;
        }

        @Override
        public void a() {
            this.f12517f = true;
            this.f12514c.f();
        }

        public void b(long j10) {
            if (this.f12520i != 1) {
                long j11 = this.f12519h + j10;
                if (j11 < this.f12515d) {
                    this.f12519h = j11;
                } else {
                    this.f12519h = 0L;
                    get().i(j11);
                }
            }
        }

        @Override
        public boolean d() {
            return get() == Ue.j.CANCELLED;
        }

        @Override
        public void dispose() {
            Ue.j.a(this);
        }

        @Override
        public void h(U u10) {
            if (this.f12520i != 2) {
                this.f12514c.o(u10, this);
            } else {
                this.f12514c.f();
            }
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.j(this, dVar)) {
                if (dVar instanceof Ie.l) {
                    Ie.l lVar = (Ie.l) dVar;
                    int m10 = lVar.m(7);
                    if (m10 == 1) {
                        this.f12520i = m10;
                        this.f12518g = lVar;
                        this.f12517f = true;
                        this.f12514c.f();
                        return;
                    }
                    if (m10 == 2) {
                        this.f12520i = m10;
                        this.f12518g = lVar;
                    }
                }
                dVar.i(this.f12516e);
            }
        }

        @Override
        public void onError(Throwable th2) {
            lazySet(Ue.j.CANCELLED);
            this.f12514c.m(this, th2);
        }
    }

    public static final class b<T, U> extends AtomicInteger implements InterfaceC2367q<T>, hn.d {

        public static final long f12521s = -2117620485640801370L;

        public static final a<?, ?>[] f12522t = new a[0];

        public static final a<?, ?>[] f12523u = new a[0];

        public final hn.c<? super U> f12524b;

        public final Fe.o<? super T, ? extends hn.b<? extends U>> f12525c;

        public final boolean f12526d;

        public final int f12527e;

        public final int f12528f;

        public volatile Ie.n<U> f12529g;

        public volatile boolean f12530h;

        public final io.reactivex.internal.util.c f12531i = new io.reactivex.internal.util.c();

        public volatile boolean f12532j;

        public final AtomicReference<a<?, ?>[]> f12533k;

        public final AtomicLong f12534l;

        public hn.d f12535m;

        public long f12536n;

        public long f12537o;

        public int f12538p;

        public int f12539q;

        public final int f12540r;

        public b(hn.c<? super U> cVar, Fe.o<? super T, ? extends hn.b<? extends U>> oVar, boolean z10, int i10, int i11) {
            AtomicReference<a<?, ?>[]> atomicReference = new AtomicReference<>();
            this.f12533k = atomicReference;
            this.f12534l = new AtomicLong();
            this.f12524b = cVar;
            this.f12525c = oVar;
            this.f12526d = z10;
            this.f12527e = i10;
            this.f12528f = i11;
            this.f12540r = Math.max(1, i10 >> 1);
            atomicReference.lazySet(f12522t);
        }

        @Override
        public void a() {
            if (this.f12530h) {
                return;
            }
            this.f12530h = true;
            f();
        }

        public boolean b(a<T, U> aVar) {
            a<?, ?>[] aVarArr;
            a[] aVarArr2;
            do {
                aVarArr = this.f12533k.get();
                if (aVarArr == f12523u) {
                    aVar.dispose();
                    return false;
                }
                int length = aVarArr.length;
                aVarArr2 = new a[length + 1];
                System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
                aVarArr2[length] = aVar;
            } while (!androidx.lifecycle.c.a(this.f12533k, aVarArr, aVarArr2));
            return true;
        }

        public boolean c() {
            if (this.f12532j) {
                d();
                return true;
            }
            if (this.f12526d || this.f12531i.get() == null) {
                return false;
            }
            d();
            Throwable c10 = this.f12531i.c();
            if (c10 != ExceptionHelper.f92434a) {
                this.f12524b.onError(c10);
            }
            return true;
        }

        @Override
        public void cancel() {
            Ie.n<U> nVar;
            if (this.f12532j) {
                return;
            }
            this.f12532j = true;
            this.f12535m.cancel();
            e();
            if (getAndIncrement() != 0 || (nVar = this.f12529g) == null) {
                return;
            }
            nVar.clear();
        }

        public void d() {
            Ie.n<U> nVar = this.f12529g;
            if (nVar != null) {
                nVar.clear();
            }
        }

        public void e() {
            a<?, ?>[] andSet;
            a<?, ?>[] aVarArr = this.f12533k.get();
            a<?, ?>[] aVarArr2 = f12523u;
            if (aVarArr == aVarArr2 || (andSet = this.f12533k.getAndSet(aVarArr2)) == aVarArr2) {
                return;
            }
            for (a<?, ?> aVar : andSet) {
                aVar.dispose();
            }
            Throwable c10 = this.f12531i.c();
            if (c10 == null || c10 == ExceptionHelper.f92434a) {
                return;
            }
            Ye.a.Y(c10);
        }

        public void f() {
            if (getAndIncrement() == 0) {
                g();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:104:0x0193, code lost:
        
            r24.f12538p = r3;
            r24.f12537o = r8[r3].f12513b;
            r3 = r16;
            r5 = 0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:125:0x0141, code lost:
        
            r5 = Long.MAX_VALUE;
         */
        /* JADX WARN: Code restructure failed: missing block: B:126:0x014c, code lost:
        
            r10 = r14;
         */
        /* JADX WARN: Code restructure failed: missing block: B:77:0x0135, code lost:
        
            if (r10 == r14) goto L97;
         */
        /* JADX WARN: Code restructure failed: missing block: B:78:0x0137, code lost:
        
            if (r9 != false) goto L95;
         */
        /* JADX WARN: Code restructure failed: missing block: B:79:0x0139, code lost:
        
            r5 = r24.f12534l.addAndGet(-r10);
         */
        /* JADX WARN: Code restructure failed: missing block: B:80:0x0146, code lost:
        
            r7.b(r10);
            r10 = 0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:82:0x014f, code lost:
        
            if (r5 == r10) goto L159;
         */
        /* JADX WARN: Code restructure failed: missing block: B:83:0x0151, code lost:
        
            if (r22 != null) goto L102;
         */
        /* JADX WARN: Code restructure failed: missing block: B:84:0x0154, code lost:
        
            r10 = r13;
            r11 = r22;
            r14 = 0;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void g() {
            long j10;
            long j11;
            boolean z10;
            int i10;
            int i11;
            Object obj;
            hn.c<? super U> cVar = this.f12524b;
            int i12 = 1;
            while (!c()) {
                Ie.n<U> nVar = this.f12529g;
                long j12 = this.f12534l.get();
                boolean z11 = j12 == Long.MAX_VALUE;
                long j13 = 0;
                long j14 = 0;
                if (nVar != null) {
                    do {
                        long j15 = 0;
                        obj = null;
                        while (true) {
                            if (j12 == 0) {
                                break;
                            }
                            U poll = nVar.poll();
                            if (c()) {
                                return;
                            }
                            if (poll == null) {
                                obj = poll;
                                break;
                            }
                            cVar.h(poll);
                            j14++;
                            j15++;
                            j12--;
                            obj = poll;
                        }
                        if (j15 != 0) {
                            j12 = z11 ? Long.MAX_VALUE : this.f12534l.addAndGet(-j15);
                        }
                        if (j12 == 0) {
                            break;
                        }
                    } while (obj != null);
                }
                boolean z12 = this.f12530h;
                Ie.n<U> nVar2 = this.f12529g;
                a<?, ?>[] aVarArr = this.f12533k.get();
                int length = aVarArr.length;
                if (z12 && ((nVar2 == null || nVar2.isEmpty()) && length == 0)) {
                    Throwable c10 = this.f12531i.c();
                    if (c10 != ExceptionHelper.f92434a) {
                        if (c10 == null) {
                            cVar.a();
                            return;
                        } else {
                            cVar.onError(c10);
                            return;
                        }
                    }
                    return;
                }
                int i13 = i12;
                if (length != 0) {
                    long j16 = this.f12537o;
                    int i14 = this.f12538p;
                    if (length <= i14 || aVarArr[i14].f12513b != j16) {
                        if (length <= i14) {
                            i14 = 0;
                        }
                        for (int i15 = 0; i15 < length && aVarArr[i14].f12513b != j16; i15++) {
                            i14++;
                            if (i14 == length) {
                                i14 = 0;
                            }
                        }
                        this.f12538p = i14;
                        this.f12537o = aVarArr[i14].f12513b;
                    }
                    int i16 = i14;
                    boolean z13 = false;
                    int i17 = 0;
                    while (true) {
                        if (i17 >= length) {
                            z10 = z13;
                            break;
                        }
                        if (c()) {
                            return;
                        }
                        a<T, U> aVar = aVarArr[i16];
                        Object obj2 = null;
                        while (!c()) {
                            Ie.o<U> oVar = aVar.f12518g;
                            if (oVar != null) {
                                i10 = length;
                                Object obj3 = obj2;
                                long j17 = j13;
                                while (true) {
                                    if (j12 == j13) {
                                        break;
                                    }
                                    try {
                                        U poll2 = oVar.poll();
                                        if (poll2 == null) {
                                            obj3 = poll2;
                                            j13 = 0;
                                            break;
                                        }
                                        cVar.h(poll2);
                                        if (c()) {
                                            return;
                                        }
                                        j12--;
                                        j17++;
                                        obj3 = poll2;
                                        j13 = 0;
                                    } catch (Throwable th2) {
                                        io.reactivex.exceptions.a.b(th2);
                                        aVar.dispose();
                                        this.f12531i.a(th2);
                                        if (!this.f12526d) {
                                            this.f12535m.cancel();
                                        }
                                        if (c()) {
                                            return;
                                        }
                                        n(aVar);
                                        i17++;
                                        z13 = true;
                                        i11 = 1;
                                    }
                                }
                            } else {
                                i10 = length;
                            }
                            boolean z14 = aVar.f12517f;
                            Ie.o<U> oVar2 = aVar.f12518g;
                            if (z14 && (oVar2 == null || oVar2.isEmpty())) {
                                n(aVar);
                                if (c()) {
                                    return;
                                }
                                j14++;
                                z13 = true;
                            }
                            if (j12 == 0) {
                                z10 = z13;
                                break;
                            }
                            i16++;
                            if (i16 == i10) {
                                i16 = 0;
                            }
                            i11 = 1;
                            i17 += i11;
                            length = i10;
                            j13 = 0;
                        }
                        return;
                    }
                }
                j10 = 0;
                j11 = j14;
                z10 = false;
                if (j11 != j10 && !this.f12532j) {
                    this.f12535m.i(j11);
                }
                if (z10) {
                    i12 = i13;
                } else {
                    i12 = addAndGet(-i13);
                    if (i12 == 0) {
                        return;
                    }
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void h(T t10) {
            if (this.f12530h) {
                return;
            }
            try {
                hn.b bVar = (hn.b) He.b.g(this.f12525c.apply(t10), "The mapper returned a null Publisher");
                if (!(bVar instanceof Callable)) {
                    long j10 = this.f12536n;
                    this.f12536n = 1 + j10;
                    a aVar = new a(this, j10);
                    if (b(aVar)) {
                        bVar.l(aVar);
                        return;
                    }
                    return;
                }
                try {
                    Object call = ((Callable) bVar).call();
                    if (call != null) {
                        p(call);
                        return;
                    }
                    if (this.f12527e == Integer.MAX_VALUE || this.f12532j) {
                        return;
                    }
                    int i10 = this.f12539q + 1;
                    this.f12539q = i10;
                    int i11 = this.f12540r;
                    if (i10 == i11) {
                        this.f12539q = 0;
                        this.f12535m.i(i11);
                    }
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    this.f12531i.a(th2);
                    f();
                }
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                this.f12535m.cancel();
                onError(th3);
            }
        }

        @Override
        public void i(long j10) {
            if (Ue.j.m(j10)) {
                io.reactivex.internal.util.d.a(this.f12534l, j10);
                f();
            }
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f12535m, dVar)) {
                this.f12535m = dVar;
                this.f12524b.j(this);
                if (this.f12532j) {
                    return;
                }
                int i10 = this.f12527e;
                if (i10 == Integer.MAX_VALUE) {
                    dVar.i(Long.MAX_VALUE);
                } else {
                    dVar.i(i10);
                }
            }
        }

        public Ie.o<U> k(a<T, U> aVar) {
            Ie.o<U> oVar = aVar.f12518g;
            if (oVar != null) {
                return oVar;
            }
            Re.b bVar = new Re.b(this.f12528f);
            aVar.f12518g = bVar;
            return bVar;
        }

        public Ie.o<U> l() {
            Ie.n<U> nVar = this.f12529g;
            if (nVar == null) {
                nVar = this.f12527e == Integer.MAX_VALUE ? new Re.c<>(this.f12528f) : new Re.b<>(this.f12527e);
                this.f12529g = nVar;
            }
            return nVar;
        }

        public void m(a<T, U> aVar, Throwable th2) {
            if (!this.f12531i.a(th2)) {
                Ye.a.Y(th2);
                return;
            }
            aVar.f12517f = true;
            if (!this.f12526d) {
                this.f12535m.cancel();
                for (a<?, ?> aVar2 : this.f12533k.getAndSet(f12523u)) {
                    aVar2.dispose();
                }
            }
            f();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void n(a<T, U> aVar) {
            a<?, ?>[] aVarArr;
            a<?, ?>[] aVarArr2;
            do {
                aVarArr = this.f12533k.get();
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
                    aVarArr2 = f12522t;
                } else {
                    a<?, ?>[] aVarArr3 = new a[length - 1];
                    System.arraycopy(aVarArr, 0, aVarArr3, 0, i10);
                    System.arraycopy(aVarArr, i10 + 1, aVarArr3, i10, (length - i10) - 1);
                    aVarArr2 = aVarArr3;
                }
            } while (!androidx.lifecycle.c.a(this.f12533k, aVarArr, aVarArr2));
        }

        public void o(U u10, a<T, U> aVar) {
            if (get() == 0 && compareAndSet(0, 1)) {
                long j10 = this.f12534l.get();
                Ie.o<U> oVar = aVar.f12518g;
                if (j10 == 0 || !(oVar == null || oVar.isEmpty())) {
                    if (oVar == null) {
                        oVar = k(aVar);
                    }
                    if (!oVar.offer(u10)) {
                        onError(new MissingBackpressureException("Inner queue full?!"));
                        return;
                    }
                } else {
                    this.f12524b.h(u10);
                    if (j10 != Long.MAX_VALUE) {
                        this.f12534l.decrementAndGet();
                    }
                    aVar.b(1L);
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            } else {
                Ie.o oVar2 = aVar.f12518g;
                if (oVar2 == null) {
                    oVar2 = new Re.b(this.f12528f);
                    aVar.f12518g = oVar2;
                }
                if (!oVar2.offer(u10)) {
                    onError(new MissingBackpressureException("Inner queue full?!"));
                    return;
                } else if (getAndIncrement() != 0) {
                    return;
                }
            }
            g();
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f12530h) {
                Ye.a.Y(th2);
            } else if (!this.f12531i.a(th2)) {
                Ye.a.Y(th2);
            } else {
                this.f12530h = true;
                f();
            }
        }

        public void p(U u10) {
            if (get() == 0 && compareAndSet(0, 1)) {
                long j10 = this.f12534l.get();
                Ie.o<U> oVar = this.f12529g;
                if (j10 == 0 || !(oVar == null || oVar.isEmpty())) {
                    if (oVar == null) {
                        oVar = l();
                    }
                    if (!oVar.offer(u10)) {
                        onError(new IllegalStateException("Scalar queue full?!"));
                        return;
                    }
                } else {
                    this.f12524b.h(u10);
                    if (j10 != Long.MAX_VALUE) {
                        this.f12534l.decrementAndGet();
                    }
                    if (this.f12527e != Integer.MAX_VALUE && !this.f12532j) {
                        int i10 = this.f12539q + 1;
                        this.f12539q = i10;
                        int i11 = this.f12540r;
                        if (i10 == i11) {
                            this.f12539q = 0;
                            this.f12535m.i(i11);
                        }
                    }
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            } else if (!l().offer(u10)) {
                onError(new IllegalStateException("Scalar queue full?!"));
                return;
            } else if (getAndIncrement() != 0) {
                return;
            }
            g();
        }
    }

    public C2693a0(AbstractC2362l<T> abstractC2362l, Fe.o<? super T, ? extends hn.b<? extends U>> oVar, boolean z10, int i10, int i11) {
        super(abstractC2362l);
        this.f12508d = oVar;
        this.f12509e = z10;
        this.f12510f = i10;
        this.f12511g = i11;
    }

    public static <T, U> InterfaceC2367q<T> O8(hn.c<? super U> cVar, Fe.o<? super T, ? extends hn.b<? extends U>> oVar, boolean z10, int i10, int i11) {
        return new b(cVar, oVar, z10, i10, i11);
    }

    @Override
    public void m6(hn.c<? super U> cVar) {
        if (C2724k1.b(this.f12507c, cVar, this.f12508d)) {
            return;
        }
        this.f12507c.l6(O8(cVar, this.f12508d, this.f12509e, this.f12510f, this.f12511g));
    }
}
