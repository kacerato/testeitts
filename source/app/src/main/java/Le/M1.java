package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import Le.N1;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class M1<T, U, V> extends AbstractC2692a<T, T> {

    public final hn.b<U> f12070d;

    public final Fe.o<? super T, ? extends hn.b<V>> f12071e;

    public final hn.b<? extends T> f12072f;

    public static final class a extends AtomicReference<hn.d> implements InterfaceC2367q<Object>, De.c {

        public static final long f12073d = 8708641127342403073L;

        public final c f12074b;

        public final long f12075c;

        public a(long j10, c cVar) {
            this.f12075c = j10;
            this.f12074b = cVar;
        }

        @Override
        public void a() {
            Object obj = get();
            Ue.j jVar = Ue.j.CANCELLED;
            if (obj != jVar) {
                lazySet(jVar);
                this.f12074b.b(this.f12075c);
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
            hn.d dVar = (hn.d) get();
            Ue.j jVar = Ue.j.CANCELLED;
            if (dVar != jVar) {
                dVar.cancel();
                lazySet(jVar);
                this.f12074b.b(this.f12075c);
            }
        }

        @Override
        public void j(hn.d dVar) {
            Ue.j.k(this, dVar, Long.MAX_VALUE);
        }

        @Override
        public void onError(Throwable th2) {
            Object obj = get();
            Ue.j jVar = Ue.j.CANCELLED;
            if (obj == jVar) {
                Ye.a.Y(th2);
            } else {
                lazySet(jVar);
                this.f12074b.c(this.f12075c, th2);
            }
        }
    }

    public static final class b<T> extends Ue.i implements InterfaceC2367q<T>, c {

        public static final long f12076r = 3764492702657003550L;

        public final hn.c<? super T> f12077k;

        public final Fe.o<? super T, ? extends hn.b<?>> f12078l;

        public final Ge.h f12079m;

        public final AtomicReference<hn.d> f12080n;

        public final AtomicLong f12081o;

        public hn.b<? extends T> f12082p;

        public long f12083q;

        public b(hn.c<? super T> cVar, Fe.o<? super T, ? extends hn.b<?>> oVar, hn.b<? extends T> bVar) {
            super(true);
            this.f12077k = cVar;
            this.f12078l = oVar;
            this.f12079m = new Ge.h();
            this.f12080n = new AtomicReference<>();
            this.f12082p = bVar;
            this.f12081o = new AtomicLong();
        }

        @Override
        public void a() {
            if (this.f12081o.getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f12079m.dispose();
                this.f12077k.a();
                this.f12079m.dispose();
            }
        }

        @Override
        public void b(long j10) {
            if (this.f12081o.compareAndSet(j10, Long.MAX_VALUE)) {
                Ue.j.a(this.f12080n);
                hn.b<? extends T> bVar = this.f12082p;
                this.f12082p = null;
                long j11 = this.f12083q;
                if (j11 != 0) {
                    k(j11);
                }
                bVar.l(new N1.a(this.f12077k, this));
            }
        }

        @Override
        public void c(long j10, Throwable th2) {
            if (!this.f12081o.compareAndSet(j10, Long.MAX_VALUE)) {
                Ye.a.Y(th2);
            } else {
                Ue.j.a(this.f12080n);
                this.f12077k.onError(th2);
            }
        }

        @Override
        public void cancel() {
            super.cancel();
            this.f12079m.dispose();
        }

        @Override
        public void h(T t10) {
            long j10 = this.f12081o.get();
            if (j10 != Long.MAX_VALUE) {
                long j11 = j10 + 1;
                if (this.f12081o.compareAndSet(j10, j11)) {
                    De.c cVar = this.f12079m.get();
                    if (cVar != null) {
                        cVar.dispose();
                    }
                    this.f12083q++;
                    this.f12077k.h(t10);
                    try {
                        hn.b bVar = (hn.b) He.b.g(this.f12078l.apply(t10), "The itemTimeoutIndicator returned a null Publisher.");
                        a aVar = new a(j11, this);
                        if (this.f12079m.a(aVar)) {
                            bVar.l(aVar);
                        }
                    } catch (Throwable th2) {
                        io.reactivex.exceptions.a.b(th2);
                        this.f12080n.get().cancel();
                        this.f12081o.getAndSet(Long.MAX_VALUE);
                        this.f12077k.onError(th2);
                    }
                }
            }
        }

        @Override
        public void j(hn.d dVar) {
            if (Ue.j.j(this.f12080n, dVar)) {
                l(dVar);
            }
        }

        public void m(hn.b<?> bVar) {
            if (bVar != null) {
                a aVar = new a(0L, this);
                if (this.f12079m.a(aVar)) {
                    bVar.l(aVar);
                }
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f12081o.getAndSet(Long.MAX_VALUE) == Long.MAX_VALUE) {
                Ye.a.Y(th2);
                return;
            }
            this.f12079m.dispose();
            this.f12077k.onError(th2);
            this.f12079m.dispose();
        }
    }

    public interface c extends N1.d {
        void c(long j10, Throwable th2);
    }

    public static final class d<T> extends AtomicLong implements InterfaceC2367q<T>, hn.d, c {

        public static final long f12084g = 3764492702657003550L;

        public final hn.c<? super T> f12085b;

        public final Fe.o<? super T, ? extends hn.b<?>> f12086c;

        public final Ge.h f12087d = new Ge.h();

        public final AtomicReference<hn.d> f12088e = new AtomicReference<>();

        public final AtomicLong f12089f = new AtomicLong();

        public d(hn.c<? super T> cVar, Fe.o<? super T, ? extends hn.b<?>> oVar) {
            this.f12085b = cVar;
            this.f12086c = oVar;
        }

        @Override
        public void a() {
            if (getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f12087d.dispose();
                this.f12085b.a();
            }
        }

        @Override
        public void b(long j10) {
            if (compareAndSet(j10, Long.MAX_VALUE)) {
                Ue.j.a(this.f12088e);
                this.f12085b.onError(new TimeoutException());
            }
        }

        @Override
        public void c(long j10, Throwable th2) {
            if (!compareAndSet(j10, Long.MAX_VALUE)) {
                Ye.a.Y(th2);
            } else {
                Ue.j.a(this.f12088e);
                this.f12085b.onError(th2);
            }
        }

        @Override
        public void cancel() {
            Ue.j.a(this.f12088e);
            this.f12087d.dispose();
        }

        public void d(hn.b<?> bVar) {
            if (bVar != null) {
                a aVar = new a(0L, this);
                if (this.f12087d.a(aVar)) {
                    bVar.l(aVar);
                }
            }
        }

        @Override
        public void h(T t10) {
            long j10 = get();
            if (j10 != Long.MAX_VALUE) {
                long j11 = 1 + j10;
                if (compareAndSet(j10, j11)) {
                    De.c cVar = this.f12087d.get();
                    if (cVar != null) {
                        cVar.dispose();
                    }
                    this.f12085b.h(t10);
                    try {
                        hn.b bVar = (hn.b) He.b.g(this.f12086c.apply(t10), "The itemTimeoutIndicator returned a null Publisher.");
                        a aVar = new a(j11, this);
                        if (this.f12087d.a(aVar)) {
                            bVar.l(aVar);
                        }
                    } catch (Throwable th2) {
                        io.reactivex.exceptions.a.b(th2);
                        this.f12088e.get().cancel();
                        getAndSet(Long.MAX_VALUE);
                        this.f12085b.onError(th2);
                    }
                }
            }
        }

        @Override
        public void i(long j10) {
            Ue.j.b(this.f12088e, this.f12089f, j10);
        }

        @Override
        public void j(hn.d dVar) {
            Ue.j.c(this.f12088e, this.f12089f, dVar);
        }

        @Override
        public void onError(Throwable th2) {
            if (getAndSet(Long.MAX_VALUE) == Long.MAX_VALUE) {
                Ye.a.Y(th2);
            } else {
                this.f12087d.dispose();
                this.f12085b.onError(th2);
            }
        }
    }

    public M1(AbstractC2362l<T> abstractC2362l, hn.b<U> bVar, Fe.o<? super T, ? extends hn.b<V>> oVar, hn.b<? extends T> bVar2) {
        super(abstractC2362l);
        this.f12070d = bVar;
        this.f12071e = oVar;
        this.f12072f = bVar2;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        if (this.f12072f == null) {
            d dVar = new d(cVar, this.f12071e);
            cVar.j(dVar);
            dVar.d(this.f12070d);
            this.f12507c.l6(dVar);
            return;
        }
        b bVar = new b(cVar, this.f12071e, this.f12072f);
        cVar.j(bVar);
        bVar.m(this.f12070d);
        this.f12507c.l6(bVar);
    }
}
