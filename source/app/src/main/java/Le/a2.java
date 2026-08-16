package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class a2<T, R> extends AbstractC2362l<R> {

    public final hn.b<? extends T>[] f12558c;

    public final Iterable<? extends hn.b<? extends T>> f12559d;

    public final Fe.o<? super Object[], ? extends R> f12560e;

    public final int f12561f;

    public final boolean f12562g;

    public static final class a<T, R> extends AtomicInteger implements hn.d {

        public static final long f12563j = -2434867452883857743L;

        public final hn.c<? super R> f12564b;

        public final b<T, R>[] f12565c;

        public final Fe.o<? super Object[], ? extends R> f12566d;

        public final AtomicLong f12567e;

        public final io.reactivex.internal.util.c f12568f;

        public final boolean f12569g;

        public volatile boolean f12570h;

        public final Object[] f12571i;

        public a(hn.c<? super R> cVar, Fe.o<? super Object[], ? extends R> oVar, int i10, int i11, boolean z10) {
            this.f12564b = cVar;
            this.f12566d = oVar;
            this.f12569g = z10;
            b<T, R>[] bVarArr = new b[i10];
            for (int i12 = 0; i12 < i10; i12++) {
                bVarArr[i12] = new b<>(this, i11);
            }
            this.f12571i = new Object[i10];
            this.f12565c = bVarArr;
            this.f12567e = new AtomicLong();
            this.f12568f = new io.reactivex.internal.util.c();
        }

        public void a() {
            for (b<T, R> bVar : this.f12565c) {
                bVar.cancel();
            }
        }

        public void b() {
            boolean z10;
            T poll;
            boolean z11;
            if (getAndIncrement() != 0) {
                return;
            }
            hn.c<? super R> cVar = this.f12564b;
            b<T, R>[] bVarArr = this.f12565c;
            int length = bVarArr.length;
            Object[] objArr = this.f12571i;
            int i10 = 1;
            do {
                long j10 = this.f12567e.get();
                long j11 = 0;
                while (j10 != j11) {
                    if (this.f12570h) {
                        return;
                    }
                    if (!this.f12569g && this.f12568f.get() != null) {
                        a();
                        cVar.onError(this.f12568f.c());
                        return;
                    }
                    boolean z12 = false;
                    for (int i11 = 0; i11 < length; i11++) {
                        b<T, R> bVar = bVarArr[i11];
                        if (objArr[i11] == null) {
                            try {
                                z10 = bVar.f12578g;
                                Ie.o<T> oVar = bVar.f12576e;
                                poll = oVar != null ? oVar.poll() : null;
                                z11 = poll == null;
                            } catch (Throwable th2) {
                                io.reactivex.exceptions.a.b(th2);
                                this.f12568f.a(th2);
                                if (!this.f12569g) {
                                    a();
                                    cVar.onError(this.f12568f.c());
                                    return;
                                }
                            }
                            if (z10 && z11) {
                                a();
                                if (this.f12568f.get() != null) {
                                    cVar.onError(this.f12568f.c());
                                    return;
                                } else {
                                    cVar.a();
                                    return;
                                }
                            }
                            if (!z11) {
                                objArr[i11] = poll;
                            }
                            z12 = true;
                        }
                    }
                    if (z12) {
                        break;
                    }
                    try {
                        cVar.h((Object) He.b.g(this.f12566d.apply(objArr.clone()), "The zipper returned a null value"));
                        j11++;
                        Arrays.fill(objArr, (Object) null);
                    } catch (Throwable th3) {
                        io.reactivex.exceptions.a.b(th3);
                        a();
                        this.f12568f.a(th3);
                        cVar.onError(this.f12568f.c());
                        return;
                    }
                }
                if (j10 == j11) {
                    if (this.f12570h) {
                        return;
                    }
                    if (!this.f12569g && this.f12568f.get() != null) {
                        a();
                        cVar.onError(this.f12568f.c());
                        return;
                    }
                    for (int i12 = 0; i12 < length; i12++) {
                        b<T, R> bVar2 = bVarArr[i12];
                        if (objArr[i12] == null) {
                            try {
                                boolean z13 = bVar2.f12578g;
                                Ie.o<T> oVar2 = bVar2.f12576e;
                                T poll2 = oVar2 != null ? oVar2.poll() : null;
                                boolean z14 = poll2 == null;
                                if (z13 && z14) {
                                    a();
                                    if (this.f12568f.get() != null) {
                                        cVar.onError(this.f12568f.c());
                                        return;
                                    } else {
                                        cVar.a();
                                        return;
                                    }
                                }
                                if (!z14) {
                                    objArr[i12] = poll2;
                                }
                            } catch (Throwable th4) {
                                io.reactivex.exceptions.a.b(th4);
                                this.f12568f.a(th4);
                                if (!this.f12569g) {
                                    a();
                                    cVar.onError(this.f12568f.c());
                                    return;
                                }
                            }
                        }
                    }
                }
                if (j11 != 0) {
                    for (b<T, R> bVar3 : bVarArr) {
                        bVar3.i(j11);
                    }
                    if (j10 != Long.MAX_VALUE) {
                        this.f12567e.addAndGet(-j11);
                    }
                }
                i10 = addAndGet(-i10);
            } while (i10 != 0);
        }

        public void c(b<T, R> bVar, Throwable th2) {
            if (!this.f12568f.a(th2)) {
                Ye.a.Y(th2);
            } else {
                bVar.f12578g = true;
                b();
            }
        }

        @Override
        public void cancel() {
            if (this.f12570h) {
                return;
            }
            this.f12570h = true;
            a();
        }

        public void d(hn.b<? extends T>[] bVarArr, int i10) {
            b<T, R>[] bVarArr2 = this.f12565c;
            for (int i11 = 0; i11 < i10 && !this.f12570h; i11++) {
                if (!this.f12569g && this.f12568f.get() != null) {
                    return;
                }
                bVarArr[i11].l(bVarArr2[i11]);
            }
        }

        @Override
        public void i(long j10) {
            if (Ue.j.m(j10)) {
                io.reactivex.internal.util.d.a(this.f12567e, j10);
                b();
            }
        }
    }

    public static final class b<T, R> extends AtomicReference<hn.d> implements InterfaceC2367q<T>, hn.d {

        public static final long f12572i = -4627193790118206028L;

        public final a<T, R> f12573b;

        public final int f12574c;

        public final int f12575d;

        public Ie.o<T> f12576e;

        public long f12577f;

        public volatile boolean f12578g;

        public int f12579h;

        public b(a<T, R> aVar, int i10) {
            this.f12573b = aVar;
            this.f12574c = i10;
            this.f12575d = i10 - (i10 >> 2);
        }

        @Override
        public void a() {
            this.f12578g = true;
            this.f12573b.b();
        }

        @Override
        public void cancel() {
            Ue.j.a(this);
        }

        @Override
        public void h(T t10) {
            if (this.f12579h != 2) {
                this.f12576e.offer(t10);
            }
            this.f12573b.b();
        }

        @Override
        public void i(long j10) {
            if (this.f12579h != 1) {
                long j11 = this.f12577f + j10;
                if (j11 < this.f12575d) {
                    this.f12577f = j11;
                } else {
                    this.f12577f = 0L;
                    get().i(j11);
                }
            }
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.j(this, dVar)) {
                if (dVar instanceof Ie.l) {
                    Ie.l lVar = (Ie.l) dVar;
                    int m10 = lVar.m(7);
                    if (m10 == 1) {
                        this.f12579h = m10;
                        this.f12576e = lVar;
                        this.f12578g = true;
                        this.f12573b.b();
                        return;
                    }
                    if (m10 == 2) {
                        this.f12579h = m10;
                        this.f12576e = lVar;
                        dVar.i(this.f12574c);
                        return;
                    }
                }
                this.f12576e = new Re.b(this.f12574c);
                dVar.i(this.f12574c);
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f12573b.c(this, th2);
        }
    }

    public a2(hn.b<? extends T>[] bVarArr, Iterable<? extends hn.b<? extends T>> iterable, Fe.o<? super Object[], ? extends R> oVar, int i10, boolean z10) {
        this.f12558c = bVarArr;
        this.f12559d = iterable;
        this.f12560e = oVar;
        this.f12561f = i10;
        this.f12562g = z10;
    }

    @Override
    public void m6(hn.c<? super R> cVar) {
        int length;
        hn.b<? extends T>[] bVarArr = this.f12558c;
        if (bVarArr == null) {
            bVarArr = new hn.b[8];
            length = 0;
            for (hn.b<? extends T> bVar : this.f12559d) {
                if (length == bVarArr.length) {
                    hn.b<? extends T>[] bVarArr2 = new hn.b[(length >> 2) + length];
                    System.arraycopy(bVarArr, 0, bVarArr2, 0, length);
                    bVarArr = bVarArr2;
                }
                bVarArr[length] = bVar;
                length++;
            }
        } else {
            length = bVarArr.length;
        }
        int i10 = length;
        if (i10 == 0) {
            Ue.g.a(cVar);
            return;
        }
        a aVar = new a(cVar, this.f12560e, i10, this.f12561f, this.f12562g);
        cVar.j(aVar);
        aVar.d(bVarArr, i10);
    }
}
