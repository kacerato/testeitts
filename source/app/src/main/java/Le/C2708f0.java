package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class C2708f0<T, R> extends AbstractC2692a<T, R> {

    public final Fe.o<? super T, ? extends Be.Q<? extends R>> f12751d;

    public final boolean f12752e;

    public final int f12753f;

    public static final class a<T, R> extends AtomicInteger implements InterfaceC2367q<T>, hn.d {

        public static final long f12754m = 8600231336733376951L;

        public final hn.c<? super R> f12755b;

        public final boolean f12756c;

        public final int f12757d;

        public final Fe.o<? super T, ? extends Be.Q<? extends R>> f12762i;

        public hn.d f12764k;

        public volatile boolean f12765l;

        public final AtomicLong f12758e = new AtomicLong();

        public final De.b f12759f = new De.b();

        public final io.reactivex.internal.util.c f12761h = new io.reactivex.internal.util.c();

        public final AtomicInteger f12760g = new AtomicInteger(1);

        public final AtomicReference<Re.c<R>> f12763j = new AtomicReference<>();

        public final class C0396a extends AtomicReference<De.c> implements Be.N<R>, De.c {

            public static final long f12766c = -502562646270949838L;

            public C0396a() {
            }

            @Override
            public void b(R r10) {
                a.this.g(this, r10);
            }

            @Override
            public boolean d() {
                return Ge.d.b(get());
            }

            @Override
            public void dispose() {
                Ge.d.a(this);
            }

            @Override
            public void e(De.c cVar) {
                Ge.d.h(this, cVar);
            }

            @Override
            public void onError(Throwable th2) {
                a.this.f(this, th2);
            }
        }

        public a(hn.c<? super R> cVar, Fe.o<? super T, ? extends Be.Q<? extends R>> oVar, boolean z10, int i10) {
            this.f12755b = cVar;
            this.f12762i = oVar;
            this.f12756c = z10;
            this.f12757d = i10;
        }

        @Override
        public void a() {
            this.f12760g.decrementAndGet();
            c();
        }

        public void b() {
            Re.c<R> cVar = this.f12763j.get();
            if (cVar != null) {
                cVar.clear();
            }
        }

        public void c() {
            if (getAndIncrement() == 0) {
                d();
            }
        }

        @Override
        public void cancel() {
            this.f12765l = true;
            this.f12764k.cancel();
            this.f12759f.dispose();
        }

        /* JADX WARN: Code restructure failed: missing block: B:35:0x0077, code lost:
        
            if (r10 != r6) goto L64;
         */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x007b, code lost:
        
            if (r17.f12765l == false) goto L42;
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x0083, code lost:
        
            if (r17.f12756c != false) goto L48;
         */
        /* JADX WARN: Code restructure failed: missing block: B:41:0x008d, code lost:
        
            if (r17.f12761h.get() == null) goto L48;
         */
        /* JADX WARN: Code restructure failed: missing block: B:43:0x008f, code lost:
        
            r2 = r17.f12761h.c();
            b();
            r1.onError(r2);
         */
        /* JADX WARN: Code restructure failed: missing block: B:44:0x009b, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:46:0x00a0, code lost:
        
            if (r2.get() != 0) goto L51;
         */
        /* JADX WARN: Code restructure failed: missing block: B:47:0x00a2, code lost:
        
            r6 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x00a5, code lost:
        
            r7 = r3.get();
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x00ab, code lost:
        
            if (r7 == null) goto L56;
         */
        /* JADX WARN: Code restructure failed: missing block: B:51:0x00b1, code lost:
        
            if (r7.isEmpty() == false) goto L57;
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x00b4, code lost:
        
            if (r6 == false) goto L64;
         */
        /* JADX WARN: Code restructure failed: missing block: B:53:0x00b6, code lost:
        
            if (r13 == false) goto L64;
         */
        /* JADX WARN: Code restructure failed: missing block: B:55:0x00b8, code lost:
        
            r2 = r17.f12761h.c();
         */
        /* JADX WARN: Code restructure failed: missing block: B:56:0x00be, code lost:
        
            if (r2 == null) goto L62;
         */
        /* JADX WARN: Code restructure failed: missing block: B:57:0x00c0, code lost:
        
            r1.onError(r2);
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:?, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:59:0x00c4, code lost:
        
            r1.a();
         */
        /* JADX WARN: Code restructure failed: missing block: B:60:0x00c7, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:61:0x00b3, code lost:
        
            r13 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:62:0x00a4, code lost:
        
            r6 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:64:0x007d, code lost:
        
            b();
         */
        /* JADX WARN: Code restructure failed: missing block: B:65:0x0080, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:67:0x00ca, code lost:
        
            if (r10 == 0) goto L69;
         */
        /* JADX WARN: Code restructure failed: missing block: B:68:0x00cc, code lost:
        
            io.reactivex.internal.util.d.e(r17.f12758e, r10);
         */
        /* JADX WARN: Code restructure failed: missing block: B:69:0x00d6, code lost:
        
            if (r17.f12757d == Integer.MAX_VALUE) goto L69;
         */
        /* JADX WARN: Code restructure failed: missing block: B:70:0x00d8, code lost:
        
            r17.f12764k.i(r10);
         */
        /* JADX WARN: Code restructure failed: missing block: B:71:0x00dd, code lost:
        
            r5 = addAndGet(-r5);
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void d() {
            hn.c<? super R> cVar = this.f12755b;
            AtomicInteger atomicInteger = this.f12760g;
            AtomicReference<Re.c<R>> atomicReference = this.f12763j;
            int i10 = 1;
            do {
                long j10 = this.f12758e.get();
                long j11 = 0;
                while (true) {
                    boolean z10 = false;
                    if (j11 == j10) {
                        break;
                    }
                    if (this.f12765l) {
                        b();
                        return;
                    }
                    if (!this.f12756c && this.f12761h.get() != null) {
                        Throwable c10 = this.f12761h.c();
                        b();
                        cVar.onError(c10);
                        return;
                    }
                    boolean z11 = atomicInteger.get() == 0;
                    Re.c<R> cVar2 = atomicReference.get();
                    A0.a poll = cVar2 != null ? cVar2.poll() : null;
                    boolean z12 = poll == null;
                    if (z11 && z12) {
                        Throwable c11 = this.f12761h.c();
                        if (c11 != null) {
                            cVar.onError(c11);
                            return;
                        } else {
                            cVar.a();
                            return;
                        }
                    }
                    if (z12) {
                        break;
                    }
                    cVar.h(poll);
                    j11++;
                }
            } while (i10 != 0);
        }

        public Re.c<R> e() {
            Re.c<R> cVar;
            do {
                Re.c<R> cVar2 = this.f12763j.get();
                if (cVar2 != null) {
                    return cVar2;
                }
                cVar = new Re.c<>(AbstractC2362l.a0());
            } while (!androidx.lifecycle.c.a(this.f12763j, null, cVar));
            return cVar;
        }

        public void f(a<T, R>.C0396a c0396a, Throwable th2) {
            this.f12759f.b(c0396a);
            if (!this.f12761h.a(th2)) {
                Ye.a.Y(th2);
                return;
            }
            if (!this.f12756c) {
                this.f12764k.cancel();
                this.f12759f.dispose();
            } else if (this.f12757d != Integer.MAX_VALUE) {
                this.f12764k.i(1L);
            }
            this.f12760g.decrementAndGet();
            c();
        }

        public void g(a<T, R>.C0396a c0396a, R r10) {
            this.f12759f.b(c0396a);
            if (get() == 0) {
                if (compareAndSet(0, 1)) {
                    boolean z10 = this.f12760g.decrementAndGet() == 0;
                    if (this.f12758e.get() != 0) {
                        this.f12755b.h(r10);
                        Re.c<R> cVar = this.f12763j.get();
                        if (z10 && (cVar == null || cVar.isEmpty())) {
                            Throwable c10 = this.f12761h.c();
                            if (c10 != null) {
                                this.f12755b.onError(c10);
                                return;
                            } else {
                                this.f12755b.a();
                                return;
                            }
                        }
                        io.reactivex.internal.util.d.e(this.f12758e, 1L);
                        if (this.f12757d != Integer.MAX_VALUE) {
                            this.f12764k.i(1L);
                        }
                    } else {
                        Re.c<R> e10 = e();
                        synchronized (e10) {
                            e10.offer(r10);
                        }
                    }
                    if (decrementAndGet() == 0) {
                        return;
                    }
                    d();
                }
            }
            Re.c<R> e11 = e();
            synchronized (e11) {
                e11.offer(r10);
            }
            this.f12760g.decrementAndGet();
            if (getAndIncrement() != 0) {
                return;
            }
            d();
        }

        @Override
        public void h(T t10) {
            try {
                Be.Q q10 = (Be.Q) He.b.g(this.f12762i.apply(t10), "The mapper returned a null SingleSource");
                this.f12760g.getAndIncrement();
                C0396a c0396a = new C0396a();
                if (this.f12765l || !this.f12759f.a(c0396a)) {
                    return;
                }
                q10.a(c0396a);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f12764k.cancel();
                onError(th2);
            }
        }

        @Override
        public void i(long j10) {
            if (Ue.j.m(j10)) {
                io.reactivex.internal.util.d.a(this.f12758e, j10);
                c();
            }
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f12764k, dVar)) {
                this.f12764k = dVar;
                this.f12755b.j(this);
                int i10 = this.f12757d;
                if (i10 == Integer.MAX_VALUE) {
                    dVar.i(Long.MAX_VALUE);
                } else {
                    dVar.i(i10);
                }
            }
        }

        @Override
        public void onError(Throwable th2) {
            this.f12760g.decrementAndGet();
            if (!this.f12761h.a(th2)) {
                Ye.a.Y(th2);
                return;
            }
            if (!this.f12756c) {
                this.f12759f.dispose();
            }
            c();
        }
    }

    public C2708f0(AbstractC2362l<T> abstractC2362l, Fe.o<? super T, ? extends Be.Q<? extends R>> oVar, boolean z10, int i10) {
        super(abstractC2362l);
        this.f12751d = oVar;
        this.f12752e = z10;
        this.f12753f = i10;
    }

    @Override
    public void m6(hn.c<? super R> cVar) {
        this.f12507c.l6(new a(cVar, this.f12751d, this.f12752e, this.f12753f));
    }
}
