package Le;

import Be.AbstractC2362l;
import Le.C2738p0;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class C2758w0<TLeft, TRight, TLeftEnd, TRightEnd, R> extends AbstractC2692a<TLeft, R> {

    public final hn.b<? extends TRight> f13326d;

    public final Fe.o<? super TLeft, ? extends hn.b<TLeftEnd>> f13327e;

    public final Fe.o<? super TRight, ? extends hn.b<TRightEnd>> f13328f;

    public final Fe.c<? super TLeft, ? super TRight, ? extends R> f13329g;

    public static final class a<TLeft, TRight, TLeftEnd, TRightEnd, R> extends AtomicInteger implements hn.d, C2738p0.b {

        public static final long f13330p = -6071216598687999801L;

        public static final Integer f13331q = 1;

        public static final Integer f13332r = 2;

        public static final Integer f13333s = 3;

        public static final Integer f13334t = 4;

        public final hn.c<? super R> f13335b;

        public final Fe.o<? super TLeft, ? extends hn.b<TLeftEnd>> f13342i;

        public final Fe.o<? super TRight, ? extends hn.b<TRightEnd>> f13343j;

        public final Fe.c<? super TLeft, ? super TRight, ? extends R> f13344k;

        public int f13346m;

        public int f13347n;

        public volatile boolean f13348o;

        public final AtomicLong f13336c = new AtomicLong();

        public final De.b f13338e = new De.b();

        public final Re.c<Object> f13337d = new Re.c<>(AbstractC2362l.a0());

        public final Map<Integer, TLeft> f13339f = new LinkedHashMap();

        public final Map<Integer, TRight> f13340g = new LinkedHashMap();

        public final AtomicReference<Throwable> f13341h = new AtomicReference<>();

        public final AtomicInteger f13345l = new AtomicInteger(2);

        public a(hn.c<? super R> cVar, Fe.o<? super TLeft, ? extends hn.b<TLeftEnd>> oVar, Fe.o<? super TRight, ? extends hn.b<TRightEnd>> oVar2, Fe.c<? super TLeft, ? super TRight, ? extends R> cVar2) {
            this.f13335b = cVar;
            this.f13342i = oVar;
            this.f13343j = oVar2;
            this.f13344k = cVar2;
        }

        @Override
        public void a(Throwable th2) {
            if (ExceptionHelper.a(this.f13341h, th2)) {
                g();
            } else {
                Ye.a.Y(th2);
            }
        }

        @Override
        public void b(boolean z10, Object obj) {
            synchronized (this) {
                try {
                    this.f13337d.o(z10 ? f13331q : f13332r, obj);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            g();
        }

        @Override
        public void c(Throwable th2) {
            if (!ExceptionHelper.a(this.f13341h, th2)) {
                Ye.a.Y(th2);
            } else {
                this.f13345l.decrementAndGet();
                g();
            }
        }

        @Override
        public void cancel() {
            if (this.f13348o) {
                return;
            }
            this.f13348o = true;
            f();
            if (getAndIncrement() == 0) {
                this.f13337d.clear();
            }
        }

        @Override
        public void d(boolean z10, C2738p0.c cVar) {
            synchronized (this) {
                try {
                    this.f13337d.o(z10 ? f13333s : f13334t, cVar);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            g();
        }

        @Override
        public void e(C2738p0.d dVar) {
            this.f13338e.b(dVar);
            this.f13345l.decrementAndGet();
            g();
        }

        public void f() {
            this.f13338e.dispose();
        }

        public void g() {
            if (getAndIncrement() != 0) {
                return;
            }
            Re.c<Object> cVar = this.f13337d;
            hn.c<? super R> cVar2 = this.f13335b;
            boolean z10 = true;
            int i10 = 1;
            while (!this.f13348o) {
                if (this.f13341h.get() != null) {
                    cVar.clear();
                    f();
                    h(cVar2);
                    return;
                }
                boolean z11 = this.f13345l.get() == 0 ? z10 : false;
                Integer num = (Integer) cVar.poll();
                boolean z12 = num == null ? z10 : false;
                if (z11 && z12) {
                    this.f13339f.clear();
                    this.f13340g.clear();
                    this.f13338e.dispose();
                    cVar2.a();
                    return;
                }
                if (z12) {
                    i10 = addAndGet(-i10);
                    if (i10 == 0) {
                        return;
                    }
                } else {
                    Object poll = cVar.poll();
                    if (num == f13331q) {
                        int i11 = this.f13346m;
                        this.f13346m = i11 + 1;
                        this.f13339f.put(Integer.valueOf(i11), poll);
                        try {
                            hn.b bVar = (hn.b) He.b.g(this.f13342i.apply(poll), "The leftEnd returned a null Publisher");
                            C2738p0.c cVar3 = new C2738p0.c(this, z10, i11);
                            this.f13338e.a(cVar3);
                            bVar.l(cVar3);
                            if (this.f13341h.get() != null) {
                                cVar.clear();
                                f();
                                h(cVar2);
                                return;
                            }
                            long j10 = this.f13336c.get();
                            Iterator<TRight> it = this.f13340g.values().iterator();
                            long j11 = 0;
                            while (it.hasNext()) {
                                try {
                                    A0.a aVar = (Object) He.b.g(this.f13344k.apply(poll, it.next()), "The resultSelector returned a null value");
                                    if (j11 == j10) {
                                        ExceptionHelper.a(this.f13341h, new MissingBackpressureException("Could not emit value due to lack of requests"));
                                        cVar.clear();
                                        f();
                                        h(cVar2);
                                        return;
                                    }
                                    cVar2.h(aVar);
                                    j11++;
                                } catch (Throwable th2) {
                                    j(th2, cVar2, cVar);
                                    return;
                                }
                            }
                            if (j11 != 0) {
                                io.reactivex.internal.util.d.e(this.f13336c, j11);
                            }
                        } catch (Throwable th3) {
                            j(th3, cVar2, cVar);
                            return;
                        }
                    } else if (num == f13332r) {
                        int i12 = this.f13347n;
                        this.f13347n = i12 + 1;
                        this.f13340g.put(Integer.valueOf(i12), poll);
                        try {
                            hn.b bVar2 = (hn.b) He.b.g(this.f13343j.apply(poll), "The rightEnd returned a null Publisher");
                            C2738p0.c cVar4 = new C2738p0.c(this, false, i12);
                            this.f13338e.a(cVar4);
                            bVar2.l(cVar4);
                            if (this.f13341h.get() != null) {
                                cVar.clear();
                                f();
                                h(cVar2);
                                return;
                            }
                            long j12 = this.f13336c.get();
                            Iterator<TLeft> it2 = this.f13339f.values().iterator();
                            long j13 = 0;
                            while (it2.hasNext()) {
                                try {
                                    A0.a aVar2 = (Object) He.b.g(this.f13344k.apply(it2.next(), poll), "The resultSelector returned a null value");
                                    if (j13 == j12) {
                                        ExceptionHelper.a(this.f13341h, new MissingBackpressureException("Could not emit value due to lack of requests"));
                                        cVar.clear();
                                        f();
                                        h(cVar2);
                                        return;
                                    }
                                    cVar2.h(aVar2);
                                    j13++;
                                } catch (Throwable th4) {
                                    j(th4, cVar2, cVar);
                                    return;
                                }
                            }
                            if (j13 != 0) {
                                io.reactivex.internal.util.d.e(this.f13336c, j13);
                            }
                        } catch (Throwable th5) {
                            j(th5, cVar2, cVar);
                            return;
                        }
                    } else if (num == f13333s) {
                        C2738p0.c cVar5 = (C2738p0.c) poll;
                        this.f13339f.remove(Integer.valueOf(cVar5.f13091d));
                        this.f13338e.c(cVar5);
                    } else if (num == f13334t) {
                        C2738p0.c cVar6 = (C2738p0.c) poll;
                        this.f13340g.remove(Integer.valueOf(cVar6.f13091d));
                        this.f13338e.c(cVar6);
                    }
                    z10 = true;
                }
            }
            cVar.clear();
        }

        public void h(hn.c<?> cVar) {
            Throwable c10 = ExceptionHelper.c(this.f13341h);
            this.f13339f.clear();
            this.f13340g.clear();
            cVar.onError(c10);
        }

        @Override
        public void i(long j10) {
            if (Ue.j.m(j10)) {
                io.reactivex.internal.util.d.a(this.f13336c, j10);
            }
        }

        public void j(Throwable th2, hn.c<?> cVar, Ie.o<?> oVar) {
            io.reactivex.exceptions.a.b(th2);
            ExceptionHelper.a(this.f13341h, th2);
            oVar.clear();
            f();
            h(cVar);
        }
    }

    public C2758w0(AbstractC2362l<TLeft> abstractC2362l, hn.b<? extends TRight> bVar, Fe.o<? super TLeft, ? extends hn.b<TLeftEnd>> oVar, Fe.o<? super TRight, ? extends hn.b<TRightEnd>> oVar2, Fe.c<? super TLeft, ? super TRight, ? extends R> cVar) {
        super(abstractC2362l);
        this.f13326d = bVar;
        this.f13327e = oVar;
        this.f13328f = oVar2;
        this.f13329g = cVar;
    }

    @Override
    public void m6(hn.c<? super R> cVar) {
        a aVar = new a(cVar, this.f13327e, this.f13328f, this.f13329g);
        cVar.j(aVar);
        C2738p0.d dVar = new C2738p0.d(aVar, true);
        aVar.f13338e.a(dVar);
        C2738p0.d dVar2 = new C2738p0.d(aVar, false);
        aVar.f13338e.a(dVar2);
        this.f12507c.l6(dVar);
        this.f13326d.l(dVar2);
    }
}
