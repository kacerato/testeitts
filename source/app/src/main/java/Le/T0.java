package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import io.reactivex.exceptions.MissingBackpressureException;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class T0<T, R> extends AbstractC2692a<T, R> {

    public final Fe.o<? super AbstractC2362l<T>, ? extends hn.b<? extends R>> f12248d;

    public final int f12249e;

    public final boolean f12250f;

    public static final class a<T> extends AbstractC2362l<T> implements InterfaceC2367q<T>, De.c {

        public static final b[] f12251n = new b[0];

        public static final b[] f12252o = new b[0];

        public final int f12255e;

        public final int f12256f;

        public final boolean f12257g;

        public volatile Ie.o<T> f12259i;

        public int f12260j;

        public volatile boolean f12261k;

        public Throwable f12262l;

        public int f12263m;

        public final AtomicInteger f12253c = new AtomicInteger();

        public final AtomicReference<hn.d> f12258h = new AtomicReference<>();

        public final AtomicReference<b<T>[]> f12254d = new AtomicReference<>(f12251n);

        public a(int i10, boolean z10) {
            this.f12255e = i10;
            this.f12256f = i10 - (i10 >> 2);
            this.f12257g = z10;
        }

        public boolean O8(b<T> bVar) {
            b<T>[] bVarArr;
            b[] bVarArr2;
            do {
                bVarArr = this.f12254d.get();
                if (bVarArr == f12252o) {
                    return false;
                }
                int length = bVarArr.length;
                bVarArr2 = new b[length + 1];
                System.arraycopy(bVarArr, 0, bVarArr2, 0, length);
                bVarArr2[length] = bVar;
            } while (!androidx.lifecycle.c.a(this.f12254d, bVarArr, bVarArr2));
            return true;
        }

        public void P8() {
            for (b<T> bVar : this.f12254d.getAndSet(f12252o)) {
                if (bVar.get() != Long.MIN_VALUE) {
                    bVar.f12265b.a();
                }
            }
        }

        public void Q8() {
            AtomicReference<b<T>[]> atomicReference;
            Throwable th2;
            Throwable th3;
            if (this.f12253c.getAndIncrement() != 0) {
                return;
            }
            Ie.o<T> oVar = this.f12259i;
            int i10 = this.f12263m;
            int i11 = this.f12256f;
            boolean z10 = this.f12260j != 1;
            AtomicReference<b<T>[]> atomicReference2 = this.f12254d;
            b<T>[] bVarArr = atomicReference2.get();
            int i12 = 1;
            while (true) {
                int length = bVarArr.length;
                if (oVar == null || length == 0) {
                    atomicReference = atomicReference2;
                } else {
                    int length2 = bVarArr.length;
                    long j10 = Long.MAX_VALUE;
                    long j11 = Long.MAX_VALUE;
                    int i13 = 0;
                    while (i13 < length2) {
                        b<T> bVar = bVarArr[i13];
                        AtomicReference<b<T>[]> atomicReference3 = atomicReference2;
                        long j12 = bVar.get() - bVar.f12267d;
                        if (j12 == Long.MIN_VALUE) {
                            length--;
                        } else if (j11 > j12) {
                            j11 = j12;
                        }
                        i13++;
                        atomicReference2 = atomicReference3;
                    }
                    atomicReference = atomicReference2;
                    long j13 = 0;
                    if (length == 0) {
                        j11 = 0;
                    }
                    while (j11 != j13) {
                        if (d()) {
                            oVar.clear();
                            return;
                        }
                        boolean z11 = this.f12261k;
                        if (z11 && !this.f12257g && (th3 = this.f12262l) != null) {
                            R8(th3);
                            return;
                        }
                        try {
                            T poll = oVar.poll();
                            boolean z12 = poll == null;
                            if (z11 && z12) {
                                Throwable th4 = this.f12262l;
                                if (th4 != null) {
                                    R8(th4);
                                    return;
                                } else {
                                    P8();
                                    return;
                                }
                            }
                            if (z12) {
                                break;
                            }
                            int length3 = bVarArr.length;
                            int i14 = 0;
                            boolean z13 = false;
                            while (i14 < length3) {
                                b<T> bVar2 = bVarArr[i14];
                                long j14 = bVar2.get();
                                if (j14 != Long.MIN_VALUE) {
                                    if (j14 != j10) {
                                        bVar2.f12267d++;
                                    }
                                    bVar2.f12265b.h(poll);
                                } else {
                                    z13 = true;
                                }
                                i14++;
                                j10 = Long.MAX_VALUE;
                            }
                            j11--;
                            if (z10 && (i10 = i10 + 1) == i11) {
                                this.f12258h.get().i(i11);
                                i10 = 0;
                            }
                            b<T>[] bVarArr2 = atomicReference.get();
                            if (z13 || bVarArr2 != bVarArr) {
                                bVarArr = bVarArr2;
                                break;
                            } else {
                                j13 = 0;
                                j10 = Long.MAX_VALUE;
                            }
                        } catch (Throwable th5) {
                            io.reactivex.exceptions.a.b(th5);
                            Ue.j.a(this.f12258h);
                            R8(th5);
                            return;
                        }
                    }
                    if (j11 == j13) {
                        if (d()) {
                            oVar.clear();
                            return;
                        }
                        boolean z14 = this.f12261k;
                        if (z14 && !this.f12257g && (th2 = this.f12262l) != null) {
                            R8(th2);
                            return;
                        }
                        if (z14 && oVar.isEmpty()) {
                            Throwable th6 = this.f12262l;
                            if (th6 != null) {
                                R8(th6);
                                return;
                            } else {
                                P8();
                                return;
                            }
                        }
                    }
                }
                this.f12263m = i10;
                i12 = this.f12253c.addAndGet(-i12);
                if (i12 == 0) {
                    return;
                }
                if (oVar == null) {
                    oVar = this.f12259i;
                }
                bVarArr = atomicReference.get();
                atomicReference2 = atomicReference;
            }
        }

        public void R8(Throwable th2) {
            for (b<T> bVar : this.f12254d.getAndSet(f12252o)) {
                if (bVar.get() != Long.MIN_VALUE) {
                    bVar.f12265b.onError(th2);
                }
            }
        }

        public void S8(b<T> bVar) {
            b<T>[] bVarArr;
            b[] bVarArr2;
            do {
                bVarArr = this.f12254d.get();
                int length = bVarArr.length;
                if (length == 0) {
                    return;
                }
                int i10 = 0;
                while (true) {
                    if (i10 >= length) {
                        i10 = -1;
                        break;
                    } else if (bVarArr[i10] == bVar) {
                        break;
                    } else {
                        i10++;
                    }
                }
                if (i10 < 0) {
                    return;
                }
                if (length == 1) {
                    bVarArr2 = f12251n;
                } else {
                    b[] bVarArr3 = new b[length - 1];
                    System.arraycopy(bVarArr, 0, bVarArr3, 0, i10);
                    System.arraycopy(bVarArr, i10 + 1, bVarArr3, i10, (length - i10) - 1);
                    bVarArr2 = bVarArr3;
                }
            } while (!androidx.lifecycle.c.a(this.f12254d, bVarArr, bVarArr2));
        }

        @Override
        public void a() {
            if (this.f12261k) {
                return;
            }
            this.f12261k = true;
            Q8();
        }

        @Override
        public boolean d() {
            return this.f12258h.get() == Ue.j.CANCELLED;
        }

        @Override
        public void dispose() {
            Ie.o<T> oVar;
            Ue.j.a(this.f12258h);
            if (this.f12253c.getAndIncrement() != 0 || (oVar = this.f12259i) == null) {
                return;
            }
            oVar.clear();
        }

        @Override
        public void h(T t10) {
            if (this.f12261k) {
                return;
            }
            if (this.f12260j != 0 || this.f12259i.offer(t10)) {
                Q8();
            } else {
                this.f12258h.get().cancel();
                onError(new MissingBackpressureException());
            }
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.j(this.f12258h, dVar)) {
                if (dVar instanceof Ie.l) {
                    Ie.l lVar = (Ie.l) dVar;
                    int m10 = lVar.m(3);
                    if (m10 == 1) {
                        this.f12260j = m10;
                        this.f12259i = lVar;
                        this.f12261k = true;
                        Q8();
                        return;
                    }
                    if (m10 == 2) {
                        this.f12260j = m10;
                        this.f12259i = lVar;
                        io.reactivex.internal.util.u.j(dVar, this.f12255e);
                        return;
                    }
                }
                this.f12259i = io.reactivex.internal.util.u.c(this.f12255e);
                io.reactivex.internal.util.u.j(dVar, this.f12255e);
            }
        }

        @Override
        public void m6(hn.c<? super T> cVar) {
            b<T> bVar = new b<>(cVar, this);
            cVar.j(bVar);
            if (O8(bVar)) {
                if (bVar.a()) {
                    S8(bVar);
                    return;
                } else {
                    Q8();
                    return;
                }
            }
            Throwable th2 = this.f12262l;
            if (th2 != null) {
                cVar.onError(th2);
            } else {
                cVar.a();
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f12261k) {
                Ye.a.Y(th2);
                return;
            }
            this.f12262l = th2;
            this.f12261k = true;
            Q8();
        }
    }

    public static final class b<T> extends AtomicLong implements hn.d {

        public static final long f12264e = 8664815189257569791L;

        public final hn.c<? super T> f12265b;

        public final a<T> f12266c;

        public long f12267d;

        public b(hn.c<? super T> cVar, a<T> aVar) {
            this.f12265b = cVar;
            this.f12266c = aVar;
        }

        public boolean a() {
            return get() == Long.MIN_VALUE;
        }

        @Override
        public void cancel() {
            if (getAndSet(Long.MIN_VALUE) != Long.MIN_VALUE) {
                this.f12266c.S8(this);
                this.f12266c.Q8();
            }
        }

        @Override
        public void i(long j10) {
            if (Ue.j.m(j10)) {
                io.reactivex.internal.util.d.b(this, j10);
                this.f12266c.Q8();
            }
        }
    }

    public static final class c<R> implements InterfaceC2367q<R>, hn.d {

        public final hn.c<? super R> f12268b;

        public final a<?> f12269c;

        public hn.d f12270d;

        public c(hn.c<? super R> cVar, a<?> aVar) {
            this.f12268b = cVar;
            this.f12269c = aVar;
        }

        @Override
        public void a() {
            this.f12268b.a();
            this.f12269c.dispose();
        }

        @Override
        public void cancel() {
            this.f12270d.cancel();
            this.f12269c.dispose();
        }

        @Override
        public void h(R r10) {
            this.f12268b.h(r10);
        }

        @Override
        public void i(long j10) {
            this.f12270d.i(j10);
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f12270d, dVar)) {
                this.f12270d = dVar;
                this.f12268b.j(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f12268b.onError(th2);
            this.f12269c.dispose();
        }
    }

    public T0(AbstractC2362l<T> abstractC2362l, Fe.o<? super AbstractC2362l<T>, ? extends hn.b<? extends R>> oVar, int i10, boolean z10) {
        super(abstractC2362l);
        this.f12248d = oVar;
        this.f12249e = i10;
        this.f12250f = z10;
    }

    @Override
    public void m6(hn.c<? super R> cVar) {
        a aVar = new a(this.f12249e, this.f12250f);
        try {
            ((hn.b) He.b.g(this.f12248d.apply(aVar), "selector returned a null Publisher")).l(new c(cVar, aVar));
            this.f12507c.l6(aVar);
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            Ue.g.b(th2, cVar);
        }
    }
}
