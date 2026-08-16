package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import io.reactivex.exceptions.MissingBackpressureException;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class A1<T, R> extends AbstractC2692a<T, R> {

    public final Fe.o<? super T, ? extends hn.b<? extends R>> f11726d;

    public final int f11727e;

    public final boolean f11728f;

    public static final class a<T, R> extends AtomicReference<hn.d> implements InterfaceC2367q<R> {

        public static final long f11729h = 3837284832786408377L;

        public final b<T, R> f11730b;

        public final long f11731c;

        public final int f11732d;

        public volatile Ie.o<R> f11733e;

        public volatile boolean f11734f;

        public int f11735g;

        public a(b<T, R> bVar, long j10, int i10) {
            this.f11730b = bVar;
            this.f11731c = j10;
            this.f11732d = i10;
        }

        @Override
        public void a() {
            b<T, R> bVar = this.f11730b;
            if (this.f11731c == bVar.f11748l) {
                this.f11734f = true;
                bVar.c();
            }
        }

        public void b() {
            Ue.j.a(this);
        }

        @Override
        public void h(R r10) {
            b<T, R> bVar = this.f11730b;
            if (this.f11731c == bVar.f11748l) {
                if (this.f11735g != 0 || this.f11733e.offer(r10)) {
                    bVar.c();
                } else {
                    onError(new MissingBackpressureException("Queue full?!"));
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
                        this.f11735g = m10;
                        this.f11733e = lVar;
                        this.f11734f = true;
                        this.f11730b.c();
                        return;
                    }
                    if (m10 == 2) {
                        this.f11735g = m10;
                        this.f11733e = lVar;
                        dVar.i(this.f11732d);
                        return;
                    }
                }
                this.f11733e = new Re.b(this.f11732d);
                dVar.i(this.f11732d);
            }
        }

        @Override
        public void onError(Throwable th2) {
            b<T, R> bVar = this.f11730b;
            if (this.f11731c != bVar.f11748l || !bVar.f11743g.a(th2)) {
                Ye.a.Y(th2);
                return;
            }
            if (!bVar.f11741e) {
                bVar.f11745i.cancel();
            }
            this.f11734f = true;
            bVar.c();
        }
    }

    public static final class b<T, R> extends AtomicInteger implements InterfaceC2367q<T>, hn.d {

        public static final long f11736m = -3491074160481096299L;

        public static final a<Object, Object> f11737n;

        public final hn.c<? super R> f11738b;

        public final Fe.o<? super T, ? extends hn.b<? extends R>> f11739c;

        public final int f11740d;

        public final boolean f11741e;

        public volatile boolean f11742f;

        public volatile boolean f11744h;

        public hn.d f11745i;

        public volatile long f11748l;

        public final AtomicReference<a<T, R>> f11746j = new AtomicReference<>();

        public final AtomicLong f11747k = new AtomicLong();

        public final io.reactivex.internal.util.c f11743g = new io.reactivex.internal.util.c();

        static {
            a<Object, Object> aVar = new a<>(null, -1L, 1);
            f11737n = aVar;
            aVar.b();
        }

        public b(hn.c<? super R> cVar, Fe.o<? super T, ? extends hn.b<? extends R>> oVar, int i10, boolean z10) {
            this.f11738b = cVar;
            this.f11739c = oVar;
            this.f11740d = i10;
            this.f11741e = z10;
        }

        @Override
        public void a() {
            if (this.f11742f) {
                return;
            }
            this.f11742f = true;
            c();
        }

        public void b() {
            a<Object, Object> aVar;
            a<T, R> aVar2 = this.f11746j.get();
            a<Object, Object> aVar3 = f11737n;
            if (aVar2 == aVar3 || (aVar = (a) this.f11746j.getAndSet(aVar3)) == aVar3 || aVar == null) {
                return;
            }
            aVar.b();
        }

        /* JADX WARN: Code restructure failed: missing block: B:67:0x00e5, code lost:
        
            r14 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:69:0x011d, code lost:
        
            if (r12 == 0) goto L87;
         */
        /* JADX WARN: Code restructure failed: missing block: B:71:0x0121, code lost:
        
            if (r17.f11744h != false) goto L87;
         */
        /* JADX WARN: Code restructure failed: missing block: B:73:0x012a, code lost:
        
            if (r8 == Long.MAX_VALUE) goto L86;
         */
        /* JADX WARN: Code restructure failed: missing block: B:74:0x012c, code lost:
        
            r17.f11747k.addAndGet(-r12);
         */
        /* JADX WARN: Code restructure failed: missing block: B:75:0x0132, code lost:
        
            r6.get().i(r12);
         */
        /* JADX WARN: Code restructure failed: missing block: B:76:0x013b, code lost:
        
            if (r14 == false) goto L105;
         */
        /* JADX WARN: Code restructure failed: missing block: B:83:0x000c, code lost:
        
            continue;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void c() {
            A0.a aVar;
            if (getAndIncrement() != 0) {
                return;
            }
            hn.c<? super R> cVar = this.f11738b;
            int i10 = 1;
            while (!this.f11744h) {
                if (this.f11742f) {
                    if (this.f11741e) {
                        if (this.f11746j.get() == null) {
                            if (this.f11743g.get() != null) {
                                cVar.onError(this.f11743g.c());
                                return;
                            } else {
                                cVar.a();
                                return;
                            }
                        }
                    } else if (this.f11743g.get() != null) {
                        b();
                        cVar.onError(this.f11743g.c());
                        return;
                    } else if (this.f11746j.get() == null) {
                        cVar.a();
                        return;
                    }
                }
                a<T, R> aVar2 = this.f11746j.get();
                Ie.o<R> oVar = aVar2 != null ? aVar2.f11733e : null;
                if (oVar != null) {
                    if (aVar2.f11734f) {
                        if (this.f11741e) {
                            if (oVar.isEmpty()) {
                                androidx.lifecycle.c.a(this.f11746j, aVar2, null);
                            }
                        } else if (this.f11743g.get() != null) {
                            b();
                            cVar.onError(this.f11743g.c());
                            return;
                        } else if (oVar.isEmpty()) {
                            androidx.lifecycle.c.a(this.f11746j, aVar2, null);
                        }
                    }
                    long j10 = this.f11747k.get();
                    long j11 = 0;
                    while (true) {
                        boolean z10 = false;
                        if (j11 != j10) {
                            if (!this.f11744h) {
                                boolean z11 = aVar2.f11734f;
                                try {
                                    aVar = oVar.poll();
                                } catch (Throwable th2) {
                                    io.reactivex.exceptions.a.b(th2);
                                    aVar2.b();
                                    this.f11743g.a(th2);
                                    aVar = null;
                                    z11 = true;
                                }
                                boolean z12 = aVar == null;
                                if (aVar2 != this.f11746j.get()) {
                                    break;
                                }
                                if (z11) {
                                    if (!this.f11741e) {
                                        if (this.f11743g.get() == null) {
                                            if (z12) {
                                                androidx.lifecycle.c.a(this.f11746j, aVar2, null);
                                                break;
                                            }
                                        } else {
                                            cVar.onError(this.f11743g.c());
                                            return;
                                        }
                                    } else if (z12) {
                                        androidx.lifecycle.c.a(this.f11746j, aVar2, null);
                                        break;
                                    }
                                }
                                if (z12) {
                                    break;
                                }
                                cVar.h(aVar);
                                j11++;
                            } else {
                                return;
                            }
                        } else {
                            break;
                        }
                    }
                }
                i10 = addAndGet(-i10);
                if (i10 == 0) {
                    return;
                }
            }
            this.f11746j.lazySet(null);
        }

        @Override
        public void cancel() {
            if (this.f11744h) {
                return;
            }
            this.f11744h = true;
            this.f11745i.cancel();
            b();
        }

        @Override
        public void h(T t10) {
            a<T, R> aVar;
            if (this.f11742f) {
                return;
            }
            long j10 = this.f11748l + 1;
            this.f11748l = j10;
            a<T, R> aVar2 = this.f11746j.get();
            if (aVar2 != null) {
                aVar2.b();
            }
            try {
                hn.b bVar = (hn.b) He.b.g(this.f11739c.apply(t10), "The publisher returned is null");
                a aVar3 = new a(this, j10, this.f11740d);
                do {
                    aVar = this.f11746j.get();
                    if (aVar == f11737n) {
                        return;
                    }
                } while (!androidx.lifecycle.c.a(this.f11746j, aVar, aVar3));
                bVar.l(aVar3);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f11745i.cancel();
                onError(th2);
            }
        }

        @Override
        public void i(long j10) {
            if (Ue.j.m(j10)) {
                io.reactivex.internal.util.d.a(this.f11747k, j10);
                if (this.f11748l == 0) {
                    this.f11745i.i(Long.MAX_VALUE);
                } else {
                    c();
                }
            }
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f11745i, dVar)) {
                this.f11745i = dVar;
                this.f11738b.j(this);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f11742f || !this.f11743g.a(th2)) {
                Ye.a.Y(th2);
                return;
            }
            if (!this.f11741e) {
                b();
            }
            this.f11742f = true;
            c();
        }
    }

    public A1(AbstractC2362l<T> abstractC2362l, Fe.o<? super T, ? extends hn.b<? extends R>> oVar, int i10, boolean z10) {
        super(abstractC2362l);
        this.f11726d = oVar;
        this.f11727e = i10;
        this.f11728f = z10;
    }

    @Override
    public void m6(hn.c<? super R> cVar) {
        if (C2724k1.b(this.f12507c, cVar, this.f11726d)) {
            return;
        }
        this.f12507c.l6(new b(cVar, this.f11726d, this.f11727e, this.f11728f));
    }
}
