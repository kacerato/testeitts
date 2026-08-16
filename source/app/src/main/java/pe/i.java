package Pe;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import io.reactivex.exceptions.MissingBackpressureException;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class i<T> extends AbstractC2362l<T> {

    public final Xe.b<? extends T> f21338c;

    public final int f21339d;

    public final boolean f21340e;

    public static final class a<T> extends AtomicReference<hn.d> implements InterfaceC2367q<T> {

        public static final long f21341g = 8410034718427740355L;

        public final c<T> f21342b;

        public final int f21343c;

        public final int f21344d;

        public long f21345e;

        public volatile Ie.n<T> f21346f;

        public a(c<T> cVar, int i10) {
            this.f21342b = cVar;
            this.f21343c = i10;
            this.f21344d = i10 - (i10 >> 2);
        }

        @Override
        public void a() {
            this.f21342b.d();
        }

        public boolean b() {
            return Ue.j.a(this);
        }

        public Ie.n<T> c() {
            Ie.n<T> nVar = this.f21346f;
            if (nVar != null) {
                return nVar;
            }
            Re.b bVar = new Re.b(this.f21343c);
            this.f21346f = bVar;
            return bVar;
        }

        public void d(long j10) {
            long j11 = this.f21345e + j10;
            if (j11 < this.f21344d) {
                this.f21345e = j11;
            } else {
                this.f21345e = 0L;
                get().i(j11);
            }
        }

        public void e() {
            long j10 = this.f21345e + 1;
            if (j10 != this.f21344d) {
                this.f21345e = j10;
            } else {
                this.f21345e = 0L;
                get().i(j10);
            }
        }

        @Override
        public void h(T t10) {
            this.f21342b.f(this, t10);
        }

        @Override
        public void j(hn.d dVar) {
            Ue.j.k(this, dVar, this.f21343c);
        }

        @Override
        public void onError(Throwable th2) {
            this.f21342b.e(th2);
        }
    }

    public static final class b<T> extends c<T> {

        public static final long f21347i = 6312374661811000451L;

        public b(hn.c<? super T> cVar, int i10, int i11) {
            super(cVar, i10, i11);
        }

        @Override
        public void c() {
            if (getAndIncrement() != 0) {
                return;
            }
            g();
        }

        @Override
        public void d() {
            this.f21354g.decrementAndGet();
            c();
        }

        @Override
        public void e(Throwable th2) {
            if (this.f21351d.compareAndSet(null, th2)) {
                a();
                c();
            } else if (th2 != this.f21351d.get()) {
                Ye.a.Y(th2);
            }
        }

        @Override
        public void f(a<T> aVar, T t10) {
            if (get() == 0 && compareAndSet(0, 1)) {
                if (this.f21352e.get() != 0) {
                    this.f21349b.h(t10);
                    if (this.f21352e.get() != Long.MAX_VALUE) {
                        this.f21352e.decrementAndGet();
                    }
                    aVar.d(1L);
                } else if (!aVar.c().offer(t10)) {
                    a();
                    MissingBackpressureException missingBackpressureException = new MissingBackpressureException("Queue full?!");
                    if (this.f21351d.compareAndSet(null, missingBackpressureException)) {
                        this.f21349b.onError(missingBackpressureException);
                        return;
                    } else {
                        Ye.a.Y(missingBackpressureException);
                        return;
                    }
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            } else if (!aVar.c().offer(t10)) {
                a();
                e(new MissingBackpressureException("Queue full?!"));
                return;
            } else if (getAndIncrement() != 0) {
                return;
            }
            g();
        }

        /* JADX WARN: Code restructure failed: missing block: B:77:0x005d, code lost:
        
            if (r12 == false) goto L85;
         */
        /* JADX WARN: Code restructure failed: missing block: B:78:0x005f, code lost:
        
            if (r15 == false) goto L86;
         */
        /* JADX WARN: Code restructure failed: missing block: B:80:0x0061, code lost:
        
            r3.a();
         */
        /* JADX WARN: Code restructure failed: missing block: B:81:0x0064, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:83:0x0065, code lost:
        
            if (r15 == false) goto L87;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void g() {
            boolean z10;
            T poll;
            a<T>[] aVarArr = this.f21350c;
            int length = aVarArr.length;
            hn.c<? super T> cVar = this.f21349b;
            int i10 = 1;
            while (true) {
                long j10 = this.f21352e.get();
                long j11 = 0;
                while (j11 != j10) {
                    if (!this.f21353f) {
                        Throwable th2 = this.f21351d.get();
                        if (th2 == null) {
                            boolean z11 = this.f21354g.get() == 0;
                            int i11 = 0;
                            boolean z12 = true;
                            while (true) {
                                if (i11 >= aVarArr.length) {
                                    break;
                                }
                                a<T> aVar = aVarArr[i11];
                                Ie.n<T> nVar = aVar.f21346f;
                                if (nVar != null && (poll = nVar.poll()) != null) {
                                    cVar.h(poll);
                                    aVar.e();
                                    j11++;
                                    if (j11 == j10) {
                                        break;
                                    } else {
                                        z12 = false;
                                    }
                                }
                                i11++;
                            }
                        } else {
                            b();
                            cVar.onError(th2);
                            return;
                        }
                    } else {
                        b();
                        return;
                    }
                }
                if (j11 == j10) {
                    if (this.f21353f) {
                        b();
                        return;
                    }
                    Throwable th3 = this.f21351d.get();
                    if (th3 != null) {
                        b();
                        cVar.onError(th3);
                        return;
                    }
                    boolean z13 = this.f21354g.get() == 0;
                    int i12 = 0;
                    while (true) {
                        if (i12 < length) {
                            Ie.n<T> nVar2 = aVarArr[i12].f21346f;
                            if (nVar2 != null && !nVar2.isEmpty()) {
                                z10 = false;
                                break;
                            }
                            i12++;
                        } else {
                            z10 = true;
                            break;
                        }
                    }
                    if (z13 && z10) {
                        cVar.a();
                        return;
                    }
                }
                if (j11 != 0 && j10 != Long.MAX_VALUE) {
                    this.f21352e.addAndGet(-j11);
                }
                int i13 = get();
                if (i13 == i10 && (i13 = addAndGet(-i10)) == 0) {
                    return;
                } else {
                    i10 = i13;
                }
            }
        }
    }

    public static abstract class c<T> extends AtomicInteger implements hn.d {

        public static final long f21348h = 3100232009247827843L;

        public final hn.c<? super T> f21349b;

        public final a<T>[] f21350c;

        public volatile boolean f21353f;

        public final io.reactivex.internal.util.c f21351d = new io.reactivex.internal.util.c();

        public final AtomicLong f21352e = new AtomicLong();

        public final AtomicInteger f21354g = new AtomicInteger();

        public c(hn.c<? super T> cVar, int i10, int i11) {
            this.f21349b = cVar;
            a<T>[] aVarArr = new a[i10];
            for (int i12 = 0; i12 < i10; i12++) {
                aVarArr[i12] = new a<>(this, i11);
            }
            this.f21350c = aVarArr;
            this.f21354g.lazySet(i10);
        }

        public void a() {
            for (a<T> aVar : this.f21350c) {
                aVar.b();
            }
        }

        public void b() {
            for (a<T> aVar : this.f21350c) {
                aVar.f21346f = null;
            }
        }

        public abstract void c();

        @Override
        public void cancel() {
            if (this.f21353f) {
                return;
            }
            this.f21353f = true;
            a();
            if (getAndIncrement() == 0) {
                b();
            }
        }

        public abstract void d();

        public abstract void e(Throwable th2);

        public abstract void f(a<T> aVar, T t10);

        @Override
        public void i(long j10) {
            if (Ue.j.m(j10)) {
                io.reactivex.internal.util.d.a(this.f21352e, j10);
                c();
            }
        }
    }

    public static final class d<T> extends c<T> {

        public static final long f21355i = -5737965195918321883L;

        public d(hn.c<? super T> cVar, int i10, int i11) {
            super(cVar, i10, i11);
        }

        @Override
        public void c() {
            if (getAndIncrement() != 0) {
                return;
            }
            g();
        }

        @Override
        public void d() {
            this.f21354g.decrementAndGet();
            c();
        }

        @Override
        public void e(Throwable th2) {
            this.f21351d.a(th2);
            this.f21354g.decrementAndGet();
            c();
        }

        @Override
        public void f(a<T> aVar, T t10) {
            if (get() == 0 && compareAndSet(0, 1)) {
                if (this.f21352e.get() != 0) {
                    this.f21349b.h(t10);
                    if (this.f21352e.get() != Long.MAX_VALUE) {
                        this.f21352e.decrementAndGet();
                    }
                    aVar.d(1L);
                } else if (!aVar.c().offer(t10)) {
                    aVar.b();
                    this.f21351d.a(new MissingBackpressureException("Queue full?!"));
                    this.f21354g.decrementAndGet();
                    g();
                    return;
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            } else {
                if (!aVar.c().offer(t10) && aVar.b()) {
                    this.f21351d.a(new MissingBackpressureException("Queue full?!"));
                    this.f21354g.decrementAndGet();
                }
                if (getAndIncrement() != 0) {
                    return;
                }
            }
            g();
        }

        /* JADX WARN: Code restructure failed: missing block: B:73:0x004b, code lost:
        
            if (r12 == false) goto L80;
         */
        /* JADX WARN: Code restructure failed: missing block: B:74:0x004d, code lost:
        
            if (r15 == false) goto L81;
         */
        /* JADX WARN: Code restructure failed: missing block: B:77:0x0057, code lost:
        
            if (r18.f21351d.get() == null) goto L30;
         */
        /* JADX WARN: Code restructure failed: missing block: B:78:0x0059, code lost:
        
            r3.onError(r18.f21351d.c());
         */
        /* JADX WARN: Code restructure failed: missing block: B:79:?, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:80:0x0063, code lost:
        
            r3.a();
         */
        /* JADX WARN: Code restructure failed: missing block: B:81:0x0066, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:83:0x0067, code lost:
        
            if (r15 == false) goto L82;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void g() {
            boolean z10;
            T poll;
            a<T>[] aVarArr = this.f21350c;
            int length = aVarArr.length;
            hn.c<? super T> cVar = this.f21349b;
            int i10 = 1;
            while (true) {
                long j10 = this.f21352e.get();
                long j11 = 0;
                while (j11 != j10) {
                    if (!this.f21353f) {
                        boolean z11 = this.f21354g.get() == 0;
                        int i11 = 0;
                        boolean z12 = true;
                        while (true) {
                            if (i11 >= length) {
                                break;
                            }
                            a<T> aVar = aVarArr[i11];
                            Ie.n<T> nVar = aVar.f21346f;
                            if (nVar != null && (poll = nVar.poll()) != null) {
                                cVar.h(poll);
                                aVar.e();
                                j11++;
                                if (j11 == j10) {
                                    break;
                                } else {
                                    z12 = false;
                                }
                            }
                            i11++;
                        }
                    } else {
                        b();
                        return;
                    }
                }
                if (j11 == j10) {
                    if (this.f21353f) {
                        b();
                        return;
                    }
                    boolean z13 = this.f21354g.get() == 0;
                    int i12 = 0;
                    while (true) {
                        if (i12 < length) {
                            Ie.n<T> nVar2 = aVarArr[i12].f21346f;
                            if (nVar2 != null && !nVar2.isEmpty()) {
                                z10 = false;
                                break;
                            }
                            i12++;
                        } else {
                            z10 = true;
                            break;
                        }
                    }
                    if (z13 && z10) {
                        if (this.f21351d.get() != null) {
                            cVar.onError(this.f21351d.c());
                            return;
                        } else {
                            cVar.a();
                            return;
                        }
                    }
                }
                if (j11 != 0 && j10 != Long.MAX_VALUE) {
                    this.f21352e.addAndGet(-j11);
                }
                int i13 = get();
                if (i13 == i10 && (i13 = addAndGet(-i10)) == 0) {
                    return;
                } else {
                    i10 = i13;
                }
            }
        }
    }

    public i(Xe.b<? extends T> bVar, int i10, boolean z10) {
        this.f21338c = bVar;
        this.f21339d = i10;
        this.f21340e = z10;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        c dVar = this.f21340e ? new d(cVar, this.f21338c.F(), this.f21339d) : new b(cVar, this.f21338c.F(), this.f21339d);
        cVar.j(dVar);
        this.f21338c.Q(dVar.f21350c);
    }
}
