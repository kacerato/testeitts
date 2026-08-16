package Oe;

import io.reactivex.internal.util.ExceptionHelper;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class X<T, U> extends AbstractC2859a<T, U> {

    public final Fe.o<? super T, ? extends Be.G<? extends U>> f19263c;

    public final boolean f19264d;

    public final int f19265e;

    public final int f19266f;

    public static final class a<T, U> extends AtomicReference<De.c> implements Be.I<U> {

        public static final long f19267g = -4606175640614850599L;

        public final long f19268b;

        public final b<T, U> f19269c;

        public volatile boolean f19270d;

        public volatile Ie.o<U> f19271e;

        public int f19272f;

        public a(b<T, U> bVar, long j10) {
            this.f19268b = j10;
            this.f19269c = bVar;
        }

        @Override
        public void a() {
            this.f19270d = true;
            this.f19269c.g();
        }

        public void b() {
            Ge.d.a(this);
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.h(this, cVar) && (cVar instanceof Ie.j)) {
                Ie.j jVar = (Ie.j) cVar;
                int m10 = jVar.m(7);
                if (m10 == 1) {
                    this.f19272f = m10;
                    this.f19271e = jVar;
                    this.f19270d = true;
                    this.f19269c.g();
                    return;
                }
                if (m10 == 2) {
                    this.f19272f = m10;
                    this.f19271e = jVar;
                }
            }
        }

        @Override
        public void h(U u10) {
            if (this.f19272f == 0) {
                this.f19269c.l(u10, this);
            } else {
                this.f19269c.g();
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (!this.f19269c.f19283i.a(th2)) {
                Ye.a.Y(th2);
                return;
            }
            b<T, U> bVar = this.f19269c;
            if (!bVar.f19278d) {
                bVar.f();
            }
            this.f19270d = true;
            this.f19269c.g();
        }
    }

    public static final class b<T, U> extends AtomicInteger implements De.c, Be.I<T> {

        public static final long f19273r = -2117620485640801370L;

        public static final a<?, ?>[] f19274s = new a[0];

        public static final a<?, ?>[] f19275t = new a[0];

        public final Be.I<? super U> f19276b;

        public final Fe.o<? super T, ? extends Be.G<? extends U>> f19277c;

        public final boolean f19278d;

        public final int f19279e;

        public final int f19280f;

        public volatile Ie.n<U> f19281g;

        public volatile boolean f19282h;

        public final io.reactivex.internal.util.c f19283i = new io.reactivex.internal.util.c();

        public volatile boolean f19284j;

        public final AtomicReference<a<?, ?>[]> f19285k;

        public De.c f19286l;

        public long f19287m;

        public long f19288n;

        public int f19289o;

        public Queue<Be.G<? extends U>> f19290p;

        public int f19291q;

        public b(Be.I<? super U> i10, Fe.o<? super T, ? extends Be.G<? extends U>> oVar, boolean z10, int i11, int i12) {
            this.f19276b = i10;
            this.f19277c = oVar;
            this.f19278d = z10;
            this.f19279e = i11;
            this.f19280f = i12;
            if (i11 != Integer.MAX_VALUE) {
                this.f19290p = new ArrayDeque(i11);
            }
            this.f19285k = new AtomicReference<>(f19274s);
        }

        @Override
        public void a() {
            if (this.f19282h) {
                return;
            }
            this.f19282h = true;
            g();
        }

        public boolean b(a<T, U> aVar) {
            a<?, ?>[] aVarArr;
            a[] aVarArr2;
            do {
                aVarArr = this.f19285k.get();
                if (aVarArr == f19275t) {
                    aVar.b();
                    return false;
                }
                int length = aVarArr.length;
                aVarArr2 = new a[length + 1];
                System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
                aVarArr2[length] = aVar;
            } while (!androidx.lifecycle.c.a(this.f19285k, aVarArr, aVarArr2));
            return true;
        }

        public boolean c() {
            if (this.f19284j) {
                return true;
            }
            Throwable th2 = this.f19283i.get();
            if (this.f19278d || th2 == null) {
                return false;
            }
            f();
            Throwable c10 = this.f19283i.c();
            if (c10 != ExceptionHelper.f92434a) {
                this.f19276b.onError(c10);
            }
            return true;
        }

        @Override
        public boolean d() {
            return this.f19284j;
        }

        @Override
        public void dispose() {
            Throwable c10;
            if (this.f19284j) {
                return;
            }
            this.f19284j = true;
            if (!f() || (c10 = this.f19283i.c()) == null || c10 == ExceptionHelper.f92434a) {
                return;
            }
            Ye.a.Y(c10);
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.j(this.f19286l, cVar)) {
                this.f19286l = cVar;
                this.f19276b.e(this);
            }
        }

        public boolean f() {
            a<?, ?>[] andSet;
            this.f19286l.dispose();
            a<?, ?>[] aVarArr = this.f19285k.get();
            a<?, ?>[] aVarArr2 = f19275t;
            if (aVarArr == aVarArr2 || (andSet = this.f19285k.getAndSet(aVarArr2)) == aVarArr2) {
                return false;
            }
            for (a<?, ?> aVar : andSet) {
                aVar.b();
            }
            return true;
        }

        public void g() {
            if (getAndIncrement() == 0) {
                i();
            }
        }

        @Override
        public void h(T t10) {
            if (this.f19282h) {
                return;
            }
            try {
                Be.G<? extends U> g10 = (Be.G) He.b.g(this.f19277c.apply(t10), "The mapper returned a null ObservableSource");
                if (this.f19279e != Integer.MAX_VALUE) {
                    synchronized (this) {
                        try {
                            int i10 = this.f19291q;
                            if (i10 == this.f19279e) {
                                this.f19290p.offer(g10);
                                return;
                            }
                            this.f19291q = i10 + 1;
                        } finally {
                        }
                    }
                }
                k(g10);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f19286l.dispose();
                onError(th2);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:132:0x0004, code lost:
        
            continue;
         */
        /* JADX WARN: Code restructure failed: missing block: B:47:0x00a3, code lost:
        
            if (r11 != null) goto L109;
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x00d3, code lost:
        
            r11 = r10.f19270d;
            r12 = r10.f19271e;
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x00d7, code lost:
        
            if (r11 == false) goto L83;
         */
        /* JADX WARN: Code restructure failed: missing block: B:50:0x00d9, code lost:
        
            if (r12 == null) goto L79;
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x00df, code lost:
        
            if (r12.isEmpty() == false) goto L83;
         */
        /* JADX WARN: Code restructure failed: missing block: B:53:0x00e1, code lost:
        
            j(r10);
         */
        /* JADX WARN: Code restructure failed: missing block: B:54:0x00e8, code lost:
        
            if (c() == false) goto L82;
         */
        /* JADX WARN: Code restructure failed: missing block: B:55:0x00eb, code lost:
        
            r4 = r4 + 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:57:0x00ea, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:0x00ed, code lost:
        
            r7 = r7 + 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:59:0x00ef, code lost:
        
            if (r7 != r6) goto L134;
         */
        /* JADX WARN: Code restructure failed: missing block: B:60:0x00f1, code lost:
        
            r7 = 0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:62:0x00f2, code lost:
        
            r3 = r3 + 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:65:0x00a5, code lost:
        
            r12 = r11.poll();
         */
        /* JADX WARN: Code restructure failed: missing block: B:66:0x00a9, code lost:
        
            if (r12 != null) goto L64;
         */
        /* JADX WARN: Code restructure failed: missing block: B:67:0x00ac, code lost:
        
            r0.h(r12);
         */
        /* JADX WARN: Code restructure failed: missing block: B:68:0x00b3, code lost:
        
            if (c() == false) goto L136;
         */
        /* JADX WARN: Code restructure failed: missing block: B:70:0x00b5, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:74:0x00b6, code lost:
        
            r11 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:75:0x00b7, code lost:
        
            io.reactivex.exceptions.a.b(r11);
            r10.b();
            r13.f19283i.a(r11);
         */
        /* JADX WARN: Code restructure failed: missing block: B:76:0x00c6, code lost:
        
            if (c() != false) goto L120;
         */
        /* JADX WARN: Code restructure failed: missing block: B:77:0x00c9, code lost:
        
            j(r10);
            r4 = r4 + 1;
            r7 = r7 + 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:78:0x00d0, code lost:
        
            if (r7 != r6) goto L133;
         */
        /* JADX WARN: Code restructure failed: missing block: B:81:0x00c8, code lost:
        
            return;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void i() {
            int i10;
            Be.I<? super U> i11 = this.f19276b;
            int i12 = 1;
            while (!c()) {
                Ie.n<U> nVar = this.f19281g;
                if (nVar != null) {
                    while (!c()) {
                        U poll = nVar.poll();
                        if (poll != null) {
                            i11.h(poll);
                        }
                    }
                    return;
                }
                boolean z10 = this.f19282h;
                Ie.n<U> nVar2 = this.f19281g;
                a<?, ?>[] aVarArr = this.f19285k.get();
                int length = aVarArr.length;
                int i13 = 0;
                if (this.f19279e != Integer.MAX_VALUE) {
                    synchronized (this) {
                        i10 = this.f19290p.size();
                    }
                } else {
                    i10 = 0;
                }
                if (z10 && ((nVar2 == null || nVar2.isEmpty()) && length == 0 && i10 == 0)) {
                    Throwable c10 = this.f19283i.c();
                    if (c10 != ExceptionHelper.f92434a) {
                        if (c10 == null) {
                            i11.a();
                            return;
                        } else {
                            i11.onError(c10);
                            return;
                        }
                    }
                    return;
                }
                if (length != 0) {
                    long j10 = this.f19288n;
                    int i14 = this.f19289o;
                    if (length <= i14 || aVarArr[i14].f19268b != j10) {
                        if (length <= i14) {
                            i14 = 0;
                        }
                        for (int i15 = 0; i15 < length && aVarArr[i14].f19268b != j10; i15++) {
                            i14++;
                            if (i14 == length) {
                                i14 = 0;
                            }
                        }
                        this.f19289o = i14;
                        this.f19288n = aVarArr[i14].f19268b;
                    }
                    int i16 = 0;
                    int i17 = 0;
                    while (i16 < length) {
                        if (c()) {
                            return;
                        }
                        a<T, U> aVar = aVarArr[i14];
                        Ie.o<U> oVar = aVar.f19271e;
                    }
                    this.f19289o = i14;
                    this.f19288n = aVarArr[i14].f19268b;
                    i13 = i17;
                }
                if (i13 == 0) {
                    i12 = addAndGet(-i12);
                    if (i12 == 0) {
                        return;
                    }
                } else if (this.f19279e != Integer.MAX_VALUE) {
                    while (true) {
                        int i18 = i13 - 1;
                        if (i13 != 0) {
                            synchronized (this) {
                                try {
                                    Be.G<? extends U> poll2 = this.f19290p.poll();
                                    if (poll2 == null) {
                                        this.f19291q--;
                                    } else {
                                        k(poll2);
                                    }
                                } finally {
                                }
                            }
                            i13 = i18;
                        }
                    }
                } else {
                    continue;
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void j(a<T, U> aVar) {
            a<?, ?>[] aVarArr;
            a<?, ?>[] aVarArr2;
            do {
                aVarArr = this.f19285k.get();
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
                    aVarArr2 = f19274s;
                } else {
                    a<?, ?>[] aVarArr3 = new a[length - 1];
                    System.arraycopy(aVarArr, 0, aVarArr3, 0, i10);
                    System.arraycopy(aVarArr, i10 + 1, aVarArr3, i10, (length - i10) - 1);
                    aVarArr2 = aVarArr3;
                }
            } while (!androidx.lifecycle.c.a(this.f19285k, aVarArr, aVarArr2));
        }

        public void k(Be.G<? extends U> g10) {
            boolean z10;
            while (g10 instanceof Callable) {
                if (!m((Callable) g10) || this.f19279e == Integer.MAX_VALUE) {
                    return;
                }
                synchronized (this) {
                    try {
                        g10 = this.f19290p.poll();
                        if (g10 == null) {
                            z10 = true;
                            this.f19291q--;
                        } else {
                            z10 = false;
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                if (z10) {
                    g();
                    return;
                }
            }
            long j10 = this.f19287m;
            this.f19287m = 1 + j10;
            a<T, U> aVar = new a<>(this, j10);
            if (b(aVar)) {
                g10.c(aVar);
            }
        }

        public void l(U u10, a<T, U> aVar) {
            if (get() == 0 && compareAndSet(0, 1)) {
                this.f19276b.h(u10);
                if (decrementAndGet() == 0) {
                    return;
                }
            } else {
                Ie.o oVar = aVar.f19271e;
                if (oVar == null) {
                    oVar = new Re.c(this.f19280f);
                    aVar.f19271e = oVar;
                }
                oVar.offer(u10);
                if (getAndIncrement() != 0) {
                    return;
                }
            }
            i();
        }

        public boolean m(Callable<? extends U> callable) {
            try {
                U call = callable.call();
                if (call == null) {
                    return true;
                }
                if (get() == 0 && compareAndSet(0, 1)) {
                    this.f19276b.h(call);
                    if (decrementAndGet() == 0) {
                        return true;
                    }
                } else {
                    Ie.n<U> nVar = this.f19281g;
                    if (nVar == null) {
                        nVar = this.f19279e == Integer.MAX_VALUE ? new Re.c<>(this.f19280f) : new Re.b<>(this.f19279e);
                        this.f19281g = nVar;
                    }
                    if (!nVar.offer(call)) {
                        onError(new IllegalStateException("Scalar queue full?!"));
                        return true;
                    }
                    if (getAndIncrement() != 0) {
                        return false;
                    }
                }
                i();
                return true;
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f19283i.a(th2);
                g();
                return true;
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f19282h) {
                Ye.a.Y(th2);
            } else if (!this.f19283i.a(th2)) {
                Ye.a.Y(th2);
            } else {
                this.f19282h = true;
                g();
            }
        }
    }

    public X(Be.G<T> g10, Fe.o<? super T, ? extends Be.G<? extends U>> oVar, boolean z10, int i10, int i11) {
        super(g10);
        this.f19263c = oVar;
        this.f19264d = z10;
        this.f19265e = i10;
        this.f19266f = i11;
    }

    @Override
    public void J5(Be.I<? super U> i10) {
        if (Y0.b(this.f19344b, i10, this.f19263c)) {
            return;
        }
        this.f19344b.c(new b(i10, this.f19263c, this.f19264d, this.f19265e, this.f19266f));
    }
}
