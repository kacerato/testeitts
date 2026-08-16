package Oe;

import Oe.z1;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class y1<T, U, V> extends AbstractC2859a<T, T> {

    public final Be.G<U> f20041c;

    public final Fe.o<? super T, ? extends Be.G<V>> f20042d;

    public final Be.G<? extends T> f20043e;

    public static final class a extends AtomicReference<De.c> implements Be.I<Object>, De.c {

        public static final long f20044d = 8708641127342403073L;

        public final d f20045b;

        public final long f20046c;

        public a(long j10, d dVar) {
            this.f20046c = j10;
            this.f20045b = dVar;
        }

        @Override
        public void a() {
            Object obj = get();
            Ge.d dVar = Ge.d.DISPOSED;
            if (obj != dVar) {
                lazySet(dVar);
                this.f20045b.b(this.f20046c);
            }
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
        public void h(Object obj) {
            De.c cVar = (De.c) get();
            Ge.d dVar = Ge.d.DISPOSED;
            if (cVar != dVar) {
                cVar.dispose();
                lazySet(dVar);
                this.f20045b.b(this.f20046c);
            }
        }

        @Override
        public void onError(Throwable th2) {
            Object obj = get();
            Ge.d dVar = Ge.d.DISPOSED;
            if (obj == dVar) {
                Ye.a.Y(th2);
            } else {
                lazySet(dVar);
                this.f20045b.c(this.f20046c, th2);
            }
        }
    }

    public static final class b<T> extends AtomicReference<De.c> implements Be.I<T>, De.c, d {

        public static final long f20047h = -7508389464265974549L;

        public final Be.I<? super T> f20048b;

        public final Fe.o<? super T, ? extends Be.G<?>> f20049c;

        public final Ge.h f20050d = new Ge.h();

        public final AtomicLong f20051e = new AtomicLong();

        public final AtomicReference<De.c> f20052f = new AtomicReference<>();

        public Be.G<? extends T> f20053g;

        public b(Be.I<? super T> i10, Fe.o<? super T, ? extends Be.G<?>> oVar, Be.G<? extends T> g10) {
            this.f20048b = i10;
            this.f20049c = oVar;
            this.f20053g = g10;
        }

        @Override
        public void a() {
            if (this.f20051e.getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f20050d.dispose();
                this.f20048b.a();
                this.f20050d.dispose();
            }
        }

        @Override
        public void b(long j10) {
            if (this.f20051e.compareAndSet(j10, Long.MAX_VALUE)) {
                Ge.d.a(this.f20052f);
                Be.G<? extends T> g10 = this.f20053g;
                this.f20053g = null;
                g10.c(new z1.a(this.f20048b, this));
            }
        }

        @Override
        public void c(long j10, Throwable th2) {
            if (!this.f20051e.compareAndSet(j10, Long.MAX_VALUE)) {
                Ye.a.Y(th2);
            } else {
                Ge.d.a(this);
                this.f20048b.onError(th2);
            }
        }

        @Override
        public boolean d() {
            return Ge.d.b(get());
        }

        @Override
        public void dispose() {
            Ge.d.a(this.f20052f);
            Ge.d.a(this);
            this.f20050d.dispose();
        }

        @Override
        public void e(De.c cVar) {
            Ge.d.h(this.f20052f, cVar);
        }

        public void f(Be.G<?> g10) {
            if (g10 != null) {
                a aVar = new a(0L, this);
                if (this.f20050d.a(aVar)) {
                    g10.c(aVar);
                }
            }
        }

        @Override
        public void h(T t10) {
            long j10 = this.f20051e.get();
            if (j10 != Long.MAX_VALUE) {
                long j11 = 1 + j10;
                if (this.f20051e.compareAndSet(j10, j11)) {
                    De.c cVar = this.f20050d.get();
                    if (cVar != null) {
                        cVar.dispose();
                    }
                    this.f20048b.h(t10);
                    try {
                        Be.G g10 = (Be.G) He.b.g(this.f20049c.apply(t10), "The itemTimeoutIndicator returned a null ObservableSource.");
                        a aVar = new a(j11, this);
                        if (this.f20050d.a(aVar)) {
                            g10.c(aVar);
                        }
                    } catch (Throwable th2) {
                        io.reactivex.exceptions.a.b(th2);
                        this.f20052f.get().dispose();
                        this.f20051e.getAndSet(Long.MAX_VALUE);
                        this.f20048b.onError(th2);
                    }
                }
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f20051e.getAndSet(Long.MAX_VALUE) == Long.MAX_VALUE) {
                Ye.a.Y(th2);
                return;
            }
            this.f20050d.dispose();
            this.f20048b.onError(th2);
            this.f20050d.dispose();
        }
    }

    public static final class c<T> extends AtomicLong implements Be.I<T>, De.c, d {

        public static final long f20054f = 3764492702657003550L;

        public final Be.I<? super T> f20055b;

        public final Fe.o<? super T, ? extends Be.G<?>> f20056c;

        public final Ge.h f20057d = new Ge.h();

        public final AtomicReference<De.c> f20058e = new AtomicReference<>();

        public c(Be.I<? super T> i10, Fe.o<? super T, ? extends Be.G<?>> oVar) {
            this.f20055b = i10;
            this.f20056c = oVar;
        }

        @Override
        public void a() {
            if (getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f20057d.dispose();
                this.f20055b.a();
            }
        }

        @Override
        public void b(long j10) {
            if (compareAndSet(j10, Long.MAX_VALUE)) {
                Ge.d.a(this.f20058e);
                this.f20055b.onError(new TimeoutException());
            }
        }

        @Override
        public void c(long j10, Throwable th2) {
            if (!compareAndSet(j10, Long.MAX_VALUE)) {
                Ye.a.Y(th2);
            } else {
                Ge.d.a(this.f20058e);
                this.f20055b.onError(th2);
            }
        }

        @Override
        public boolean d() {
            return Ge.d.b(this.f20058e.get());
        }

        @Override
        public void dispose() {
            Ge.d.a(this.f20058e);
            this.f20057d.dispose();
        }

        @Override
        public void e(De.c cVar) {
            Ge.d.h(this.f20058e, cVar);
        }

        public void f(Be.G<?> g10) {
            if (g10 != null) {
                a aVar = new a(0L, this);
                if (this.f20057d.a(aVar)) {
                    g10.c(aVar);
                }
            }
        }

        @Override
        public void h(T t10) {
            long j10 = get();
            if (j10 != Long.MAX_VALUE) {
                long j11 = 1 + j10;
                if (compareAndSet(j10, j11)) {
                    De.c cVar = this.f20057d.get();
                    if (cVar != null) {
                        cVar.dispose();
                    }
                    this.f20055b.h(t10);
                    try {
                        Be.G g10 = (Be.G) He.b.g(this.f20056c.apply(t10), "The itemTimeoutIndicator returned a null ObservableSource.");
                        a aVar = new a(j11, this);
                        if (this.f20057d.a(aVar)) {
                            g10.c(aVar);
                        }
                    } catch (Throwable th2) {
                        io.reactivex.exceptions.a.b(th2);
                        this.f20058e.get().dispose();
                        getAndSet(Long.MAX_VALUE);
                        this.f20055b.onError(th2);
                    }
                }
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (getAndSet(Long.MAX_VALUE) == Long.MAX_VALUE) {
                Ye.a.Y(th2);
            } else {
                this.f20057d.dispose();
                this.f20055b.onError(th2);
            }
        }
    }

    public interface d extends z1.d {
        void c(long j10, Throwable th2);
    }

    public y1(Be.B<T> b10, Be.G<U> g10, Fe.o<? super T, ? extends Be.G<V>> oVar, Be.G<? extends T> g11) {
        super(b10);
        this.f20041c = g10;
        this.f20042d = oVar;
        this.f20043e = g11;
    }

    @Override
    public void J5(Be.I<? super T> i10) {
        if (this.f20043e == null) {
            c cVar = new c(i10, this.f20042d);
            i10.e(cVar);
            cVar.f(this.f20041c);
            this.f19344b.c(cVar);
            return;
        }
        b bVar = new b(i10, this.f20042d, this.f20043e);
        i10.e(bVar);
        bVar.f(this.f20041c);
        this.f19344b.c(bVar);
    }
}
