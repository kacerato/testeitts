package Oe;

import Be.J;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class z1<T> extends AbstractC2859a<T, T> {

    public final long f20066c;

    public final TimeUnit f20067d;

    public final Be.J f20068e;

    public final Be.G<? extends T> f20069f;

    public static final class a<T> implements Be.I<T> {

        public final Be.I<? super T> f20070b;

        public final AtomicReference<De.c> f20071c;

        public a(Be.I<? super T> i10, AtomicReference<De.c> atomicReference) {
            this.f20070b = i10;
            this.f20071c = atomicReference;
        }

        @Override
        public void a() {
            this.f20070b.a();
        }

        @Override
        public void e(De.c cVar) {
            Ge.d.c(this.f20071c, cVar);
        }

        @Override
        public void h(T t10) {
            this.f20070b.h(t10);
        }

        @Override
        public void onError(Throwable th2) {
            this.f20070b.onError(th2);
        }
    }

    public static final class b<T> extends AtomicReference<De.c> implements Be.I<T>, De.c, d {

        public static final long f20072j = 3764492702657003550L;

        public final Be.I<? super T> f20073b;

        public final long f20074c;

        public final TimeUnit f20075d;

        public final J.c f20076e;

        public final Ge.h f20077f = new Ge.h();

        public final AtomicLong f20078g = new AtomicLong();

        public final AtomicReference<De.c> f20079h = new AtomicReference<>();

        public Be.G<? extends T> f20080i;

        public b(Be.I<? super T> i10, long j10, TimeUnit timeUnit, J.c cVar, Be.G<? extends T> g10) {
            this.f20073b = i10;
            this.f20074c = j10;
            this.f20075d = timeUnit;
            this.f20076e = cVar;
            this.f20080i = g10;
        }

        @Override
        public void a() {
            if (this.f20078g.getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f20077f.dispose();
                this.f20073b.a();
                this.f20076e.dispose();
            }
        }

        @Override
        public void b(long j10) {
            if (this.f20078g.compareAndSet(j10, Long.MAX_VALUE)) {
                Ge.d.a(this.f20079h);
                Be.G<? extends T> g10 = this.f20080i;
                this.f20080i = null;
                g10.c(new a(this.f20073b, this));
                this.f20076e.dispose();
            }
        }

        @Override
        public boolean d() {
            return Ge.d.b(get());
        }

        @Override
        public void dispose() {
            Ge.d.a(this.f20079h);
            Ge.d.a(this);
            this.f20076e.dispose();
        }

        @Override
        public void e(De.c cVar) {
            Ge.d.h(this.f20079h, cVar);
        }

        public void f(long j10) {
            this.f20077f.a(this.f20076e.c(new e(j10, this), this.f20074c, this.f20075d));
        }

        @Override
        public void h(T t10) {
            long j10 = this.f20078g.get();
            if (j10 != Long.MAX_VALUE) {
                long j11 = 1 + j10;
                if (this.f20078g.compareAndSet(j10, j11)) {
                    this.f20077f.get().dispose();
                    this.f20073b.h(t10);
                    f(j11);
                }
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f20078g.getAndSet(Long.MAX_VALUE) == Long.MAX_VALUE) {
                Ye.a.Y(th2);
                return;
            }
            this.f20077f.dispose();
            this.f20073b.onError(th2);
            this.f20076e.dispose();
        }
    }

    public static final class c<T> extends AtomicLong implements Be.I<T>, De.c, d {

        public static final long f20081h = 3764492702657003550L;

        public final Be.I<? super T> f20082b;

        public final long f20083c;

        public final TimeUnit f20084d;

        public final J.c f20085e;

        public final Ge.h f20086f = new Ge.h();

        public final AtomicReference<De.c> f20087g = new AtomicReference<>();

        public c(Be.I<? super T> i10, long j10, TimeUnit timeUnit, J.c cVar) {
            this.f20082b = i10;
            this.f20083c = j10;
            this.f20084d = timeUnit;
            this.f20085e = cVar;
        }

        @Override
        public void a() {
            if (getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f20086f.dispose();
                this.f20082b.a();
                this.f20085e.dispose();
            }
        }

        @Override
        public void b(long j10) {
            if (compareAndSet(j10, Long.MAX_VALUE)) {
                Ge.d.a(this.f20087g);
                this.f20082b.onError(new TimeoutException(ExceptionHelper.e(this.f20083c, this.f20084d)));
                this.f20085e.dispose();
            }
        }

        @Override
        public boolean d() {
            return Ge.d.b(this.f20087g.get());
        }

        @Override
        public void dispose() {
            Ge.d.a(this.f20087g);
            this.f20085e.dispose();
        }

        @Override
        public void e(De.c cVar) {
            Ge.d.h(this.f20087g, cVar);
        }

        public void f(long j10) {
            this.f20086f.a(this.f20085e.c(new e(j10, this), this.f20083c, this.f20084d));
        }

        @Override
        public void h(T t10) {
            long j10 = get();
            if (j10 != Long.MAX_VALUE) {
                long j11 = 1 + j10;
                if (compareAndSet(j10, j11)) {
                    this.f20086f.get().dispose();
                    this.f20082b.h(t10);
                    f(j11);
                }
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (getAndSet(Long.MAX_VALUE) == Long.MAX_VALUE) {
                Ye.a.Y(th2);
                return;
            }
            this.f20086f.dispose();
            this.f20082b.onError(th2);
            this.f20085e.dispose();
        }
    }

    public interface d {
        void b(long j10);
    }

    public static final class e implements Runnable {

        public final d f20088b;

        public final long f20089c;

        public e(long j10, d dVar) {
            this.f20089c = j10;
            this.f20088b = dVar;
        }

        @Override
        public void run() {
            this.f20088b.b(this.f20089c);
        }
    }

    public z1(Be.B<T> b10, long j10, TimeUnit timeUnit, Be.J j11, Be.G<? extends T> g10) {
        super(b10);
        this.f20066c = j10;
        this.f20067d = timeUnit;
        this.f20068e = j11;
        this.f20069f = g10;
    }

    @Override
    public void J5(Be.I<? super T> i10) {
        if (this.f20069f == null) {
            c cVar = new c(i10, this.f20066c, this.f20067d, this.f20068e.c());
            i10.e(cVar);
            cVar.f(0L);
            this.f19344b.c(cVar);
            return;
        }
        b bVar = new b(i10, this.f20066c, this.f20067d, this.f20068e.c(), this.f20069f);
        i10.e(bVar);
        bVar.f(0L);
        this.f19344b.c(bVar);
    }
}
