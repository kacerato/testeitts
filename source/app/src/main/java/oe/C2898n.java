package Oe;

import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class C2898n<T, U extends Collection<? super T>, Open, Close> extends AbstractC2859a<T, U> {

    public final Callable<U> f19653c;

    public final Be.G<? extends Open> f19654d;

    public final Fe.o<? super Open, ? extends Be.G<? extends Close>> f19655e;

    public static final class a<T, C extends Collection<? super T>, Open, Close> extends AtomicInteger implements Be.I<T>, De.c {

        public static final long f19656n = -8466418554264089604L;

        public final Be.I<? super C> f19657b;

        public final Callable<C> f19658c;

        public final Be.G<? extends Open> f19659d;

        public final Fe.o<? super Open, ? extends Be.G<? extends Close>> f19660e;

        public volatile boolean f19664i;

        public volatile boolean f19666k;

        public long f19667l;

        public final Re.c<C> f19665j = new Re.c<>(Be.B.V());

        public final De.b f19661f = new De.b();

        public final AtomicReference<De.c> f19662g = new AtomicReference<>();

        public Map<Long, C> f19668m = new LinkedHashMap();

        public final io.reactivex.internal.util.c f19663h = new io.reactivex.internal.util.c();

        public static final class C0488a<Open> extends AtomicReference<De.c> implements Be.I<Open>, De.c {

            public static final long f19669c = -8498650778633225126L;

            public final a<?, ?, Open, ?> f19670b;

            public C0488a(a<?, ?, Open, ?> aVar) {
                this.f19670b = aVar;
            }

            @Override
            public void a() {
                lazySet(Ge.d.DISPOSED);
                this.f19670b.i(this);
            }

            @Override
            public boolean d() {
                return get() == Ge.d.DISPOSED;
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
            public void h(Open open) {
                this.f19670b.g(open);
            }

            @Override
            public void onError(Throwable th2) {
                lazySet(Ge.d.DISPOSED);
                this.f19670b.b(this, th2);
            }
        }

        public a(Be.I<? super C> i10, Be.G<? extends Open> g10, Fe.o<? super Open, ? extends Be.G<? extends Close>> oVar, Callable<C> callable) {
            this.f19657b = i10;
            this.f19658c = callable;
            this.f19659d = g10;
            this.f19660e = oVar;
        }

        @Override
        public void a() {
            this.f19661f.dispose();
            synchronized (this) {
                try {
                    Map<Long, C> map = this.f19668m;
                    if (map == null) {
                        return;
                    }
                    Iterator<C> it = map.values().iterator();
                    while (it.hasNext()) {
                        this.f19665j.offer(it.next());
                    }
                    this.f19668m = null;
                    this.f19664i = true;
                    f();
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        public void b(De.c cVar, Throwable th2) {
            Ge.d.a(this.f19662g);
            this.f19661f.b(cVar);
            onError(th2);
        }

        public void c(b<T, C> bVar, long j10) {
            boolean z10;
            this.f19661f.b(bVar);
            if (this.f19661f.h() == 0) {
                Ge.d.a(this.f19662g);
                z10 = true;
            } else {
                z10 = false;
            }
            synchronized (this) {
                try {
                    Map<Long, C> map = this.f19668m;
                    if (map == null) {
                        return;
                    }
                    this.f19665j.offer(map.remove(Long.valueOf(j10)));
                    if (z10) {
                        this.f19664i = true;
                    }
                    f();
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override
        public boolean d() {
            return Ge.d.b(this.f19662g.get());
        }

        @Override
        public void dispose() {
            if (Ge.d.a(this.f19662g)) {
                this.f19666k = true;
                this.f19661f.dispose();
                synchronized (this) {
                    this.f19668m = null;
                }
                if (getAndIncrement() != 0) {
                    this.f19665j.clear();
                }
            }
        }

        @Override
        public void e(De.c cVar) {
            if (Ge.d.h(this.f19662g, cVar)) {
                C0488a c0488a = new C0488a(this);
                this.f19661f.a(c0488a);
                this.f19659d.c(c0488a);
            }
        }

        public void f() {
            if (getAndIncrement() != 0) {
                return;
            }
            Be.I<? super C> i10 = this.f19657b;
            Re.c<C> cVar = this.f19665j;
            int i11 = 1;
            while (!this.f19666k) {
                boolean z10 = this.f19664i;
                if (z10 && this.f19663h.get() != null) {
                    cVar.clear();
                    i10.onError(this.f19663h.c());
                    return;
                }
                C poll = cVar.poll();
                boolean z11 = poll == null;
                if (z10 && z11) {
                    i10.a();
                    return;
                } else if (z11) {
                    i11 = addAndGet(-i11);
                    if (i11 == 0) {
                        return;
                    }
                } else {
                    i10.h(poll);
                }
            }
            cVar.clear();
        }

        public void g(Open open) {
            try {
                Collection collection = (Collection) He.b.g(this.f19658c.call(), "The bufferSupplier returned a null Collection");
                Be.G g10 = (Be.G) He.b.g(this.f19660e.apply(open), "The bufferClose returned a null ObservableSource");
                long j10 = this.f19667l;
                this.f19667l = 1 + j10;
                synchronized (this) {
                    try {
                        Map<Long, C> map = this.f19668m;
                        if (map == null) {
                            return;
                        }
                        map.put(Long.valueOf(j10), collection);
                        b bVar = new b(this, j10);
                        this.f19661f.a(bVar);
                        g10.c(bVar);
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                Ge.d.a(this.f19662g);
                onError(th3);
            }
        }

        @Override
        public void h(T t10) {
            synchronized (this) {
                try {
                    Map<Long, C> map = this.f19668m;
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

        public void i(C0488a<Open> c0488a) {
            this.f19661f.b(c0488a);
            if (this.f19661f.h() == 0) {
                Ge.d.a(this.f19662g);
                this.f19664i = true;
                f();
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (!this.f19663h.a(th2)) {
                Ye.a.Y(th2);
                return;
            }
            this.f19661f.dispose();
            synchronized (this) {
                this.f19668m = null;
            }
            this.f19664i = true;
            f();
        }
    }

    public static final class b<T, C extends Collection<? super T>> extends AtomicReference<De.c> implements Be.I<Object>, De.c {

        public static final long f19671d = -8498650778633225126L;

        public final a<T, C, ?, ?> f19672b;

        public final long f19673c;

        public b(a<T, C, ?, ?> aVar, long j10) {
            this.f19672b = aVar;
            this.f19673c = j10;
        }

        @Override
        public void a() {
            De.c cVar = get();
            Ge.d dVar = Ge.d.DISPOSED;
            if (cVar != dVar) {
                lazySet(dVar);
                this.f19672b.c(this, this.f19673c);
            }
        }

        @Override
        public boolean d() {
            return get() == Ge.d.DISPOSED;
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
        public void h(Object obj) {
            De.c cVar = get();
            Ge.d dVar = Ge.d.DISPOSED;
            if (cVar != dVar) {
                lazySet(dVar);
                cVar.dispose();
                this.f19672b.c(this, this.f19673c);
            }
        }

        @Override
        public void onError(Throwable th2) {
            De.c cVar = get();
            Ge.d dVar = Ge.d.DISPOSED;
            if (cVar == dVar) {
                Ye.a.Y(th2);
            } else {
                lazySet(dVar);
                this.f19672b.b(this, th2);
            }
        }
    }

    public C2898n(Be.G<T> g10, Be.G<? extends Open> g11, Fe.o<? super Open, ? extends Be.G<? extends Close>> oVar, Callable<U> callable) {
        super(g10);
        this.f19654d = g11;
        this.f19655e = oVar;
        this.f19653c = callable;
    }

    @Override
    public void J5(Be.I<? super U> i10) {
        a aVar = new a(i10, this.f19654d, this.f19655e, this.f19653c);
        i10.e(aVar);
        this.f19344b.c(aVar);
    }
}
