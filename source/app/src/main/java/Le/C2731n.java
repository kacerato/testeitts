package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class C2731n<T, U extends Collection<? super T>, Open, Close> extends AbstractC2692a<T, U> {

    public final Callable<U> f12944d;

    public final hn.b<? extends Open> f12945e;

    public final Fe.o<? super Open, ? extends hn.b<? extends Close>> f12946f;

    public static final class a<T, C extends Collection<? super T>, Open, Close> extends AtomicInteger implements InterfaceC2367q<T>, hn.d {

        public static final long f12947p = -8466418554264089604L;

        public final hn.c<? super C> f12948b;

        public final Callable<C> f12949c;

        public final hn.b<? extends Open> f12950d;

        public final Fe.o<? super Open, ? extends hn.b<? extends Close>> f12951e;

        public volatile boolean f12956j;

        public volatile boolean f12958l;

        public long f12959m;

        public long f12961o;

        public final Re.c<C> f12957k = new Re.c<>(AbstractC2362l.a0());

        public final De.b f12952f = new De.b();

        public final AtomicLong f12953g = new AtomicLong();

        public final AtomicReference<hn.d> f12954h = new AtomicReference<>();

        public Map<Long, C> f12960n = new LinkedHashMap();

        public final io.reactivex.internal.util.c f12955i = new io.reactivex.internal.util.c();

        public static final class C0397a<Open> extends AtomicReference<hn.d> implements InterfaceC2367q<Open>, De.c {

            public static final long f12962c = -8498650778633225126L;

            public final a<?, ?, Open, ?> f12963b;

            public C0397a(a<?, ?, Open, ?> aVar) {
                this.f12963b = aVar;
            }

            @Override
            public void a() {
                lazySet(Ue.j.CANCELLED);
                this.f12963b.f(this);
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
            public void h(Open open) {
                this.f12963b.e(open);
            }

            @Override
            public void j(hn.d dVar) {
                Ue.j.k(this, dVar, Long.MAX_VALUE);
            }

            @Override
            public void onError(Throwable th2) {
                lazySet(Ue.j.CANCELLED);
                this.f12963b.b(this, th2);
            }
        }

        public a(hn.c<? super C> cVar, hn.b<? extends Open> bVar, Fe.o<? super Open, ? extends hn.b<? extends Close>> oVar, Callable<C> callable) {
            this.f12948b = cVar;
            this.f12949c = callable;
            this.f12950d = bVar;
            this.f12951e = oVar;
        }

        @Override
        public void a() {
            this.f12952f.dispose();
            synchronized (this) {
                try {
                    Map<Long, C> map = this.f12960n;
                    if (map == null) {
                        return;
                    }
                    Iterator<C> it = map.values().iterator();
                    while (it.hasNext()) {
                        this.f12957k.offer(it.next());
                    }
                    this.f12960n = null;
                    this.f12956j = true;
                    d();
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        public void b(De.c cVar, Throwable th2) {
            Ue.j.a(this.f12954h);
            this.f12952f.b(cVar);
            onError(th2);
        }

        public void c(b<T, C> bVar, long j10) {
            boolean z10;
            this.f12952f.b(bVar);
            if (this.f12952f.h() == 0) {
                Ue.j.a(this.f12954h);
                z10 = true;
            } else {
                z10 = false;
            }
            synchronized (this) {
                try {
                    Map<Long, C> map = this.f12960n;
                    if (map == null) {
                        return;
                    }
                    this.f12957k.offer(map.remove(Long.valueOf(j10)));
                    if (z10) {
                        this.f12956j = true;
                    }
                    d();
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override
        public void cancel() {
            if (Ue.j.a(this.f12954h)) {
                this.f12958l = true;
                this.f12952f.dispose();
                synchronized (this) {
                    this.f12960n = null;
                }
                if (getAndIncrement() != 0) {
                    this.f12957k.clear();
                }
            }
        }

        public void d() {
            if (getAndIncrement() != 0) {
                return;
            }
            long j10 = this.f12961o;
            hn.c<? super C> cVar = this.f12948b;
            Re.c<C> cVar2 = this.f12957k;
            int i10 = 1;
            do {
                long j11 = this.f12953g.get();
                while (j10 != j11) {
                    if (this.f12958l) {
                        cVar2.clear();
                        return;
                    }
                    boolean z10 = this.f12956j;
                    if (z10 && this.f12955i.get() != null) {
                        cVar2.clear();
                        cVar.onError(this.f12955i.c());
                        return;
                    }
                    C poll = cVar2.poll();
                    boolean z11 = poll == null;
                    if (z10 && z11) {
                        cVar.a();
                        return;
                    } else {
                        if (z11) {
                            break;
                        }
                        cVar.h(poll);
                        j10++;
                    }
                }
                if (j10 == j11) {
                    if (this.f12958l) {
                        cVar2.clear();
                        return;
                    }
                    if (this.f12956j) {
                        if (this.f12955i.get() != null) {
                            cVar2.clear();
                            cVar.onError(this.f12955i.c());
                            return;
                        } else if (cVar2.isEmpty()) {
                            cVar.a();
                            return;
                        }
                    }
                }
                this.f12961o = j10;
                i10 = addAndGet(-i10);
            } while (i10 != 0);
        }

        public void e(Open open) {
            try {
                Collection collection = (Collection) He.b.g(this.f12949c.call(), "The bufferSupplier returned a null Collection");
                hn.b bVar = (hn.b) He.b.g(this.f12951e.apply(open), "The bufferClose returned a null Publisher");
                long j10 = this.f12959m;
                this.f12959m = 1 + j10;
                synchronized (this) {
                    try {
                        Map<Long, C> map = this.f12960n;
                        if (map == null) {
                            return;
                        }
                        map.put(Long.valueOf(j10), collection);
                        b bVar2 = new b(this, j10);
                        this.f12952f.a(bVar2);
                        bVar.l(bVar2);
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                Ue.j.a(this.f12954h);
                onError(th3);
            }
        }

        public void f(C0397a<Open> c0397a) {
            this.f12952f.b(c0397a);
            if (this.f12952f.h() == 0) {
                Ue.j.a(this.f12954h);
                this.f12956j = true;
                d();
            }
        }

        @Override
        public void h(T t10) {
            synchronized (this) {
                try {
                    Map<Long, C> map = this.f12960n;
                    if (map == null) {
                        return;
                    }
                    Iterator<C> it = map.values().iterator();
                    while (it.hasNext()) {
                        it.next().add(t10);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override
        public void i(long j10) {
            io.reactivex.internal.util.d.a(this.f12953g, j10);
            d();
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.j(this.f12954h, dVar)) {
                C0397a c0397a = new C0397a(this);
                this.f12952f.a(c0397a);
                this.f12950d.l(c0397a);
                dVar.i(Long.MAX_VALUE);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (!this.f12955i.a(th2)) {
                Ye.a.Y(th2);
                return;
            }
            this.f12952f.dispose();
            synchronized (this) {
                this.f12960n = null;
            }
            this.f12956j = true;
            d();
        }
    }

    public static final class b<T, C extends Collection<? super T>> extends AtomicReference<hn.d> implements InterfaceC2367q<Object>, De.c {

        public static final long f12964d = -8498650778633225126L;

        public final a<T, C, ?, ?> f12965b;

        public final long f12966c;

        public b(a<T, C, ?, ?> aVar, long j10) {
            this.f12965b = aVar;
            this.f12966c = j10;
        }

        @Override
        public void a() {
            hn.d dVar = get();
            Ue.j jVar = Ue.j.CANCELLED;
            if (dVar != jVar) {
                lazySet(jVar);
                this.f12965b.c(this, this.f12966c);
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
        public void h(Object obj) {
            hn.d dVar = get();
            Ue.j jVar = Ue.j.CANCELLED;
            if (dVar != jVar) {
                lazySet(jVar);
                dVar.cancel();
                this.f12965b.c(this, this.f12966c);
            }
        }

        @Override
        public void j(hn.d dVar) {
            Ue.j.k(this, dVar, Long.MAX_VALUE);
        }

        @Override
        public void onError(Throwable th2) {
            hn.d dVar = get();
            Ue.j jVar = Ue.j.CANCELLED;
            if (dVar == jVar) {
                Ye.a.Y(th2);
            } else {
                lazySet(jVar);
                this.f12965b.b(this, th2);
            }
        }
    }

    public C2731n(AbstractC2362l<T> abstractC2362l, hn.b<? extends Open> bVar, Fe.o<? super Open, ? extends hn.b<? extends Close>> oVar, Callable<U> callable) {
        super(abstractC2362l);
        this.f12945e = bVar;
        this.f12946f = oVar;
        this.f12944d = callable;
    }

    @Override
    public void m6(hn.c<? super U> cVar) {
        a aVar = new a(cVar, this.f12945e, this.f12946f, this.f12944d);
        cVar.j(aVar);
        this.f12507c.l6(aVar);
    }
}
