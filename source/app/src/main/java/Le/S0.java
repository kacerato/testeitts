package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class S0<T> extends Ee.a<T> implements Ie.h<T> {

    public static final long f12208g = Long.MIN_VALUE;

    public final AbstractC2362l<T> f12209c;

    public final AtomicReference<c<T>> f12210d;

    public final int f12211e;

    public final hn.b<T> f12212f;

    public static final class a<T> implements hn.b<T> {

        public final AtomicReference<c<T>> f12213b;

        public final int f12214c;

        public a(AtomicReference<c<T>> atomicReference, int i10) {
            this.f12213b = atomicReference;
            this.f12214c = i10;
        }

        @Override
        public void l(hn.c<? super T> cVar) {
            c<T> cVar2;
            b<T> bVar = new b<>(cVar);
            cVar.j(bVar);
            while (true) {
                cVar2 = this.f12213b.get();
                if (cVar2 == null || cVar2.d()) {
                    c<T> cVar3 = new c<>(this.f12213b, this.f12214c);
                    if (androidx.lifecycle.c.a(this.f12213b, cVar2, cVar3)) {
                        cVar2 = cVar3;
                    } else {
                        continue;
                    }
                }
                if (cVar2.b(bVar)) {
                    break;
                }
            }
            if (bVar.get() == Long.MIN_VALUE) {
                cVar2.f(bVar);
            } else {
                bVar.f12217c = cVar2;
            }
            cVar2.e();
        }
    }

    public static final class b<T> extends AtomicLong implements hn.d {

        public static final long f12215e = -4453897557930727610L;

        public final hn.c<? super T> f12216b;

        public volatile c<T> f12217c;

        public long f12218d;

        public b(hn.c<? super T> cVar) {
            this.f12216b = cVar;
        }

        @Override
        public void cancel() {
            c<T> cVar;
            if (get() == Long.MIN_VALUE || getAndSet(Long.MIN_VALUE) == Long.MIN_VALUE || (cVar = this.f12217c) == null) {
                return;
            }
            cVar.f(this);
            cVar.e();
        }

        @Override
        public void i(long j10) {
            if (Ue.j.m(j10)) {
                io.reactivex.internal.util.d.b(this, j10);
                c<T> cVar = this.f12217c;
                if (cVar != null) {
                    cVar.e();
                }
            }
        }
    }

    public static final class c<T> extends AtomicInteger implements InterfaceC2367q<T>, De.c {

        public static final long f12219j = -202316842419149694L;

        public static final b[] f12220k = new b[0];

        public static final b[] f12221l = new b[0];

        public final AtomicReference<c<T>> f12222b;

        public final int f12223c;

        public volatile Object f12227g;

        public int f12228h;

        public volatile Ie.o<T> f12229i;

        public final AtomicReference<hn.d> f12226f = new AtomicReference<>();

        public final AtomicReference<b<T>[]> f12224d = new AtomicReference<>(f12220k);

        public final AtomicBoolean f12225e = new AtomicBoolean();

        public c(AtomicReference<c<T>> atomicReference, int i10) {
            this.f12222b = atomicReference;
            this.f12223c = i10;
        }

        @Override
        public void a() {
            if (this.f12227g == null) {
                this.f12227g = io.reactivex.internal.util.p.e();
                e();
            }
        }

        public boolean b(b<T> bVar) {
            b<T>[] bVarArr;
            b[] bVarArr2;
            do {
                bVarArr = this.f12224d.get();
                if (bVarArr == f12221l) {
                    return false;
                }
                int length = bVarArr.length;
                bVarArr2 = new b[length + 1];
                System.arraycopy(bVarArr, 0, bVarArr2, 0, length);
                bVarArr2[length] = bVar;
            } while (!androidx.lifecycle.c.a(this.f12224d, bVarArr, bVarArr2));
            return true;
        }

        public boolean c(Object obj, boolean z10) {
            int i10 = 0;
            if (obj != null) {
                if (!io.reactivex.internal.util.p.o(obj)) {
                    Throwable j10 = io.reactivex.internal.util.p.j(obj);
                    androidx.lifecycle.c.a(this.f12222b, this, null);
                    b<T>[] andSet = this.f12224d.getAndSet(f12221l);
                    if (andSet.length != 0) {
                        int length = andSet.length;
                        while (i10 < length) {
                            andSet[i10].f12216b.onError(j10);
                            i10++;
                        }
                    } else {
                        Ye.a.Y(j10);
                    }
                    return true;
                }
                if (z10) {
                    androidx.lifecycle.c.a(this.f12222b, this, null);
                    b<T>[] andSet2 = this.f12224d.getAndSet(f12221l);
                    int length2 = andSet2.length;
                    while (i10 < length2) {
                        andSet2[i10].f12216b.a();
                        i10++;
                    }
                    return true;
                }
            }
            return false;
        }

        @Override
        public boolean d() {
            return this.f12224d.get() == f12221l;
        }

        @Override
        public void dispose() {
            b<T>[] bVarArr = this.f12224d.get();
            b<T>[] bVarArr2 = f12221l;
            if (bVarArr == bVarArr2 || this.f12224d.getAndSet(bVarArr2) == bVarArr2) {
                return;
            }
            androidx.lifecycle.c.a(this.f12222b, this, null);
            Ue.j.a(this.f12226f);
        }

        /* JADX WARN: Code restructure failed: missing block: B:58:0x0124, code lost:
        
            if (r11 == 0) goto L77;
         */
        /* JADX WARN: Code restructure failed: missing block: B:60:0x0129, code lost:
        
            if (r25.f12228h == 1) goto L77;
         */
        /* JADX WARN: Code restructure failed: missing block: B:61:0x012b, code lost:
        
            r25.f12226f.get().i(r11);
         */
        /* JADX WARN: Code restructure failed: missing block: B:62:0x0137, code lost:
        
            r4 = r0;
            r3 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:68:0x013b, code lost:
        
            if (r11 == 0) goto L82;
         */
        /* JADX WARN: Code restructure failed: missing block: B:69:0x013d, code lost:
        
            r3 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:70:0x0140, code lost:
        
            if (r25.f12228h == 1) goto L83;
         */
        /* JADX WARN: Code restructure failed: missing block: B:71:0x0142, code lost:
        
            r25.f12226f.get().i(r12);
         */
        /* JADX WARN: Code restructure failed: missing block: B:73:0x0153, code lost:
        
            if (r14 == 0) goto L106;
         */
        /* JADX WARN: Code restructure failed: missing block: B:74:0x0155, code lost:
        
            if (r8 != false) goto L107;
         */
        /* JADX WARN: Code restructure failed: missing block: B:82:0x0014, code lost:
        
            continue;
         */
        /* JADX WARN: Code restructure failed: missing block: B:84:0x014e, code lost:
        
            r3 = true;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void e() {
            T t10;
            T t11;
            Ie.o<T> oVar;
            boolean z10;
            if (getAndIncrement() != 0) {
                return;
            }
            AtomicReference<b<T>[]> atomicReference = this.f12224d;
            boolean z11 = true;
            b<T>[] bVarArr = atomicReference.get();
            int i10 = 1;
            while (true) {
                Object obj = this.f12227g;
                Ie.o<T> oVar2 = this.f12229i;
                boolean z12 = (oVar2 == null || oVar2.isEmpty()) ? z11 : false;
                if (c(obj, z12)) {
                    return;
                }
                if (!z12) {
                    int length = bVarArr.length;
                    int i11 = 0;
                    long j10 = Long.MAX_VALUE;
                    for (b<T> bVar : bVarArr) {
                        long j11 = bVar.get();
                        if (j11 != Long.MIN_VALUE) {
                            j10 = Math.min(j10, j11 - bVar.f12218d);
                        } else {
                            i11++;
                        }
                    }
                    if (length != i11) {
                        int i12 = 0;
                        while (true) {
                            long j12 = i12;
                            if (j12 >= j10) {
                                break;
                            }
                            Object obj2 = this.f12227g;
                            try {
                                t11 = oVar2.poll();
                            } catch (Throwable th2) {
                                io.reactivex.exceptions.a.b(th2);
                                this.f12226f.get().cancel();
                                obj2 = io.reactivex.internal.util.p.h(th2);
                                this.f12227g = obj2;
                                t11 = null;
                            }
                            boolean z13 = t11 == null ? z11 : false;
                            if (c(obj2, z13)) {
                                return;
                            }
                            if (z13) {
                                z12 = z13;
                                break;
                            }
                            Object m10 = io.reactivex.internal.util.p.m(t11);
                            int length2 = bVarArr.length;
                            int i13 = 0;
                            boolean z14 = false;
                            while (i13 < length2) {
                                b<T> bVar2 = bVarArr[i13];
                                long j13 = bVar2.get();
                                if (j13 != Long.MIN_VALUE) {
                                    if (j13 != Long.MAX_VALUE) {
                                        oVar = oVar2;
                                        z10 = z13;
                                        bVar2.f12218d++;
                                    } else {
                                        oVar = oVar2;
                                        z10 = z13;
                                    }
                                    bVar2.f12216b.h(m10);
                                } else {
                                    oVar = oVar2;
                                    z10 = z13;
                                    z14 = true;
                                }
                                i13++;
                                oVar2 = oVar;
                                z13 = z10;
                            }
                            Ie.o<T> oVar3 = oVar2;
                            boolean z15 = z13;
                            i12++;
                            b<T>[] bVarArr2 = atomicReference.get();
                            if (z14 || bVarArr2 != bVarArr) {
                                break;
                            }
                            oVar2 = oVar3;
                            z12 = z15;
                            z11 = true;
                        }
                    } else {
                        Object obj3 = this.f12227g;
                        try {
                            t10 = oVar2.poll();
                        } catch (Throwable th3) {
                            io.reactivex.exceptions.a.b(th3);
                            this.f12226f.get().cancel();
                            obj3 = io.reactivex.internal.util.p.h(th3);
                            this.f12227g = obj3;
                            t10 = null;
                        }
                        if (c(obj3, t10 == null ? z11 : false)) {
                            return;
                        }
                        if (this.f12228h != z11) {
                            this.f12226f.get().i(1L);
                        }
                    }
                }
                i10 = addAndGet(-i10);
                if (i10 == 0) {
                    return;
                } else {
                    bVarArr = atomicReference.get();
                }
            }
        }

        public void f(b<T> bVar) {
            b<T>[] bVarArr;
            b[] bVarArr2;
            do {
                bVarArr = this.f12224d.get();
                int length = bVarArr.length;
                if (length == 0) {
                    return;
                }
                int i10 = 0;
                while (true) {
                    if (i10 >= length) {
                        i10 = -1;
                        break;
                    } else if (bVarArr[i10].equals(bVar)) {
                        break;
                    } else {
                        i10++;
                    }
                }
                if (i10 < 0) {
                    return;
                }
                if (length == 1) {
                    bVarArr2 = f12220k;
                } else {
                    b[] bVarArr3 = new b[length - 1];
                    System.arraycopy(bVarArr, 0, bVarArr3, 0, i10);
                    System.arraycopy(bVarArr, i10 + 1, bVarArr3, i10, (length - i10) - 1);
                    bVarArr2 = bVarArr3;
                }
            } while (!androidx.lifecycle.c.a(this.f12224d, bVarArr, bVarArr2));
        }

        @Override
        public void h(T t10) {
            if (this.f12228h != 0 || this.f12229i.offer(t10)) {
                e();
            } else {
                onError(new MissingBackpressureException("Prefetch queue is full?!"));
            }
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.j(this.f12226f, dVar)) {
                if (dVar instanceof Ie.l) {
                    Ie.l lVar = (Ie.l) dVar;
                    int m10 = lVar.m(7);
                    if (m10 == 1) {
                        this.f12228h = m10;
                        this.f12229i = lVar;
                        this.f12227g = io.reactivex.internal.util.p.e();
                        e();
                        return;
                    }
                    if (m10 == 2) {
                        this.f12228h = m10;
                        this.f12229i = lVar;
                        dVar.i(this.f12223c);
                        return;
                    }
                }
                this.f12229i = new Re.b(this.f12223c);
                dVar.i(this.f12223c);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f12227g != null) {
                Ye.a.Y(th2);
            } else {
                this.f12227g = io.reactivex.internal.util.p.h(th2);
                e();
            }
        }
    }

    public S0(hn.b<T> bVar, AbstractC2362l<T> abstractC2362l, AtomicReference<c<T>> atomicReference, int i10) {
        this.f12212f = bVar;
        this.f12209c = abstractC2362l;
        this.f12210d = atomicReference;
        this.f12211e = i10;
    }

    public static <T> Ee.a<T> Z8(AbstractC2362l<T> abstractC2362l, int i10) {
        AtomicReference atomicReference = new AtomicReference();
        return Ye.a.T(new S0(new a(atomicReference, i10), abstractC2362l, atomicReference, i10));
    }

    @Override
    public void S8(Fe.g<? super De.c> gVar) {
        c<T> cVar;
        while (true) {
            cVar = this.f12210d.get();
            if (cVar != null && !cVar.d()) {
                break;
            }
            c<T> cVar2 = new c<>(this.f12210d, this.f12211e);
            if (androidx.lifecycle.c.a(this.f12210d, cVar, cVar2)) {
                cVar = cVar2;
                break;
            }
        }
        boolean z10 = false;
        if (!cVar.f12225e.get() && cVar.f12225e.compareAndSet(false, true)) {
            z10 = true;
        }
        try {
            gVar.accept(cVar);
            if (z10) {
                this.f12209c.l6(cVar);
            }
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            throw ExceptionHelper.f(th2);
        }
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        this.f12212f.l(cVar);
    }

    @Override
    public hn.b<T> source() {
        return this.f12209c;
    }
}
