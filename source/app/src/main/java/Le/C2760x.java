package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import io.reactivex.exceptions.MissingBackpressureException;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

public final class C2760x<T, R> extends AbstractC2692a<T, R> {

    public final Fe.o<? super T, ? extends hn.b<? extends R>> f13359d;

    public final int f13360e;

    public final int f13361f;

    public final io.reactivex.internal.util.j f13362g;

    public static final class a<T, R> extends AtomicInteger implements InterfaceC2367q<T>, hn.d, Te.l<R> {

        public static final long f13363n = -4255299542215038287L;

        public final hn.c<? super R> f13364b;

        public final Fe.o<? super T, ? extends hn.b<? extends R>> f13365c;

        public final int f13366d;

        public final int f13367e;

        public final io.reactivex.internal.util.j f13368f;

        public final io.reactivex.internal.util.c f13369g = new io.reactivex.internal.util.c();

        public final AtomicLong f13370h = new AtomicLong();

        public final Re.c<Te.k<R>> f13371i;

        public hn.d f13372j;

        public volatile boolean f13373k;

        public volatile boolean f13374l;

        public volatile Te.k<R> f13375m;

        public a(hn.c<? super R> cVar, Fe.o<? super T, ? extends hn.b<? extends R>> oVar, int i10, int i11, io.reactivex.internal.util.j jVar) {
            this.f13364b = cVar;
            this.f13365c = oVar;
            this.f13366d = i10;
            this.f13367e = i11;
            this.f13368f = jVar;
            this.f13371i = new Re.c<>(Math.min(i11, i10));
        }

        @Override
        public void a() {
            this.f13374l = true;
            f();
        }

        @Override
        public void b(Te.k<R> kVar, Throwable th2) {
            if (!this.f13369g.a(th2)) {
                Ye.a.Y(th2);
                return;
            }
            kVar.e();
            if (this.f13368f != io.reactivex.internal.util.j.END) {
                this.f13372j.cancel();
            }
            f();
        }

        @Override
        public void c(Te.k<R> kVar, R r10) {
            if (kVar.c().offer(r10)) {
                f();
            } else {
                kVar.cancel();
                b(kVar, new MissingBackpressureException());
            }
        }

        @Override
        public void cancel() {
            if (this.f13373k) {
                return;
            }
            this.f13373k = true;
            this.f13372j.cancel();
            g();
        }

        @Override
        public void d(Te.k<R> kVar) {
            kVar.e();
            f();
        }

        public void e() {
            Te.k<R> kVar = this.f13375m;
            this.f13375m = null;
            if (kVar != null) {
                kVar.cancel();
            }
            while (true) {
                Te.k<R> poll = this.f13371i.poll();
                if (poll == null) {
                    return;
                } else {
                    poll.cancel();
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:51:0x00cc, code lost:
        
            if (r12 != r6) goto L71;
         */
        /* JADX WARN: Code restructure failed: missing block: B:53:0x00d0, code lost:
        
            if (r17.f13373k == false) goto L61;
         */
        /* JADX WARN: Code restructure failed: missing block: B:55:0x00d8, code lost:
        
            if (r3 != io.reactivex.internal.util.j.IMMEDIATE) goto L67;
         */
        /* JADX WARN: Code restructure failed: missing block: B:57:0x00e2, code lost:
        
            if (r17.f13369g.get() == null) goto L67;
         */
        /* JADX WARN: Code restructure failed: missing block: B:59:0x00e4, code lost:
        
            r17.f13375m = null;
            r8.cancel();
            e();
            r2.onError(r17.f13369g.c());
         */
        /* JADX WARN: Code restructure failed: missing block: B:60:0x00f5, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:61:0x00f6, code lost:
        
            r9 = r8.b();
            r10 = r11.isEmpty();
         */
        /* JADX WARN: Code restructure failed: missing block: B:62:0x00fe, code lost:
        
            if (r9 == false) goto L71;
         */
        /* JADX WARN: Code restructure failed: missing block: B:63:0x0100, code lost:
        
            if (r10 == false) goto L71;
         */
        /* JADX WARN: Code restructure failed: missing block: B:64:0x0102, code lost:
        
            r17.f13375m = null;
            r17.f13372j.i(1);
            r8 = null;
            r0 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:66:0x00d2, code lost:
        
            e();
         */
        /* JADX WARN: Code restructure failed: missing block: B:67:0x00d5, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:68:0x010b, code lost:
        
            r4 = 0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:89:0x00cb, code lost:
        
            r0 = false;
         */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void f() {
            Te.k<R> kVar;
            int i10;
            boolean z10;
            long j10;
            long j11;
            Ie.o<R> c10;
            if (getAndIncrement() != 0) {
                return;
            }
            Te.k<R> kVar2 = this.f13375m;
            hn.c<? super R> cVar = this.f13364b;
            io.reactivex.internal.util.j jVar = this.f13368f;
            int i11 = 1;
            while (true) {
                long j12 = this.f13370h.get();
                if (kVar2 != null) {
                    kVar = kVar2;
                } else {
                    if (jVar != io.reactivex.internal.util.j.END && this.f13369g.get() != null) {
                        e();
                        cVar.onError(this.f13369g.c());
                        return;
                    }
                    boolean z11 = this.f13374l;
                    kVar = this.f13371i.poll();
                    if (z11 && kVar == null) {
                        Throwable c11 = this.f13369g.c();
                        if (c11 != null) {
                            cVar.onError(c11);
                            return;
                        } else {
                            cVar.a();
                            return;
                        }
                    }
                    if (kVar != null) {
                        this.f13375m = kVar;
                    }
                }
                if (kVar == null || (c10 = kVar.c()) == null) {
                    i10 = i11;
                    z10 = false;
                    j10 = 0;
                    j11 = 0;
                } else {
                    j11 = 0;
                    while (true) {
                        i10 = i11;
                        if (j11 == j12) {
                            break;
                        }
                        if (this.f13373k) {
                            e();
                            return;
                        }
                        if (jVar == io.reactivex.internal.util.j.IMMEDIATE && this.f13369g.get() != null) {
                            this.f13375m = null;
                            kVar.cancel();
                            e();
                            cVar.onError(this.f13369g.c());
                            return;
                        }
                        boolean b10 = kVar.b();
                        try {
                            R poll = c10.poll();
                            boolean z12 = poll == null;
                            if (b10 && z12) {
                                this.f13375m = null;
                                this.f13372j.i(1L);
                                kVar = null;
                                z10 = true;
                                break;
                            }
                            if (z12) {
                                break;
                            }
                            cVar.h(poll);
                            j11++;
                            kVar.d();
                            i11 = i10;
                        } catch (Throwable th2) {
                            io.reactivex.exceptions.a.b(th2);
                            this.f13375m = null;
                            kVar.cancel();
                            e();
                            cVar.onError(th2);
                            return;
                        }
                    }
                }
                if (j11 != j10 && j12 != Long.MAX_VALUE) {
                    this.f13370h.addAndGet(-j11);
                }
                if (z10) {
                    kVar2 = kVar;
                    i11 = i10;
                } else {
                    i11 = addAndGet(-i10);
                    if (i11 == 0) {
                        return;
                    } else {
                        kVar2 = kVar;
                    }
                }
            }
        }

        public void g() {
            if (getAndIncrement() != 0) {
                return;
            }
            do {
                e();
            } while (decrementAndGet() != 0);
        }

        @Override
        public void h(T t10) {
            try {
                hn.b bVar = (hn.b) He.b.g(this.f13365c.apply(t10), "The mapper returned a null Publisher");
                Te.k<R> kVar = new Te.k<>(this, this.f13367e);
                if (this.f13373k) {
                    return;
                }
                this.f13371i.offer(kVar);
                bVar.l(kVar);
                if (this.f13373k) {
                    kVar.cancel();
                    g();
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f13372j.cancel();
                onError(th2);
            }
        }

        @Override
        public void i(long j10) {
            if (Ue.j.m(j10)) {
                io.reactivex.internal.util.d.a(this.f13370h, j10);
                f();
            }
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.o(this.f13372j, dVar)) {
                this.f13372j = dVar;
                this.f13364b.j(this);
                int i10 = this.f13366d;
                dVar.i(i10 == Integer.MAX_VALUE ? Long.MAX_VALUE : i10);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (!this.f13369g.a(th2)) {
                Ye.a.Y(th2);
            } else {
                this.f13374l = true;
                f();
            }
        }
    }

    public C2760x(AbstractC2362l<T> abstractC2362l, Fe.o<? super T, ? extends hn.b<? extends R>> oVar, int i10, int i11, io.reactivex.internal.util.j jVar) {
        super(abstractC2362l);
        this.f13359d = oVar;
        this.f13360e = i10;
        this.f13361f = i11;
        this.f13362g = jVar;
    }

    @Override
    public void m6(hn.c<? super R> cVar) {
        this.f12507c.l6(new a(cVar, this.f13359d, this.f13360e, this.f13361f, this.f13362g));
    }
}
