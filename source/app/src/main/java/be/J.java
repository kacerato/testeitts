package Be;

import af.InterfaceC3603a;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.concurrent.TimeUnit;

public abstract class J {

    public static final long f1703b = TimeUnit.MINUTES.toNanos(Long.getLong("rx2.scheduler.drift-tolerance", 15).longValue());

    public static final class a implements De.c, Runnable, InterfaceC3603a {

        @Ce.f
        public final Runnable f1704b;

        @Ce.f
        public final c f1705c;

        @Ce.g
        public Thread f1706d;

        public a(@Ce.f Runnable runnable, @Ce.f c cVar) {
            this.f1704b = runnable;
            this.f1705c = cVar;
        }

        @Override
        public Runnable a() {
            return this.f1704b;
        }

        @Override
        public boolean d() {
            return this.f1705c.d();
        }

        @Override
        public void dispose() {
            if (this.f1706d == Thread.currentThread()) {
                c cVar = this.f1705c;
                if (cVar instanceof Se.i) {
                    ((Se.i) cVar).j();
                    return;
                }
            }
            this.f1705c.dispose();
        }

        @Override
        public void run() {
            this.f1706d = Thread.currentThread();
            try {
                this.f1704b.run();
            } finally {
                dispose();
                this.f1706d = null;
            }
        }
    }

    public static final class b implements De.c, Runnable, InterfaceC3603a {

        @Ce.f
        public final Runnable f1707b;

        @Ce.f
        public final c f1708c;

        public volatile boolean f1709d;

        public b(@Ce.f Runnable runnable, @Ce.f c cVar) {
            this.f1707b = runnable;
            this.f1708c = cVar;
        }

        @Override
        public Runnable a() {
            return this.f1707b;
        }

        @Override
        public boolean d() {
            return this.f1709d;
        }

        @Override
        public void dispose() {
            this.f1709d = true;
            this.f1708c.dispose();
        }

        @Override
        public void run() {
            if (this.f1709d) {
                return;
            }
            try {
                this.f1707b.run();
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f1708c.dispose();
                throw ExceptionHelper.f(th2);
            }
        }
    }

    public static abstract class c implements De.c {

        public final class a implements Runnable, InterfaceC3603a {

            @Ce.f
            public final Runnable f1710b;

            @Ce.f
            public final Ge.h f1711c;

            public final long f1712d;

            public long f1713e;

            public long f1714f;

            public long f1715g;

            public a(long j10, @Ce.f Runnable runnable, long j11, @Ce.f Ge.h hVar, long j12) {
                this.f1710b = runnable;
                this.f1711c = hVar;
                this.f1712d = j12;
                this.f1714f = j11;
                this.f1715g = j10;
            }

            @Override
            public Runnable a() {
                return this.f1710b;
            }

            @Override
            public void run() {
                long j10;
                this.f1710b.run();
                if (this.f1711c.d()) {
                    return;
                }
                c cVar = c.this;
                TimeUnit timeUnit = TimeUnit.NANOSECONDS;
                long a10 = cVar.a(timeUnit);
                long j11 = J.f1703b;
                long j12 = a10 + j11;
                long j13 = this.f1714f;
                if (j12 >= j13) {
                    long j14 = this.f1712d;
                    if (a10 < j13 + j14 + j11) {
                        long j15 = this.f1715g;
                        long j16 = this.f1713e + 1;
                        this.f1713e = j16;
                        j10 = j15 + (j16 * j14);
                        this.f1714f = a10;
                        this.f1711c.a(c.this.c(this, j10 - a10, timeUnit));
                    }
                }
                long j17 = this.f1712d;
                long j18 = a10 + j17;
                long j19 = this.f1713e + 1;
                this.f1713e = j19;
                this.f1715g = j18 - (j17 * j19);
                j10 = j18;
                this.f1714f = a10;
                this.f1711c.a(c.this.c(this, j10 - a10, timeUnit));
            }
        }

        public long a(@Ce.f TimeUnit timeUnit) {
            return timeUnit.convert(System.currentTimeMillis(), TimeUnit.MILLISECONDS);
        }

        @Ce.f
        public De.c b(@Ce.f Runnable runnable) {
            return c(runnable, 0L, TimeUnit.NANOSECONDS);
        }

        @Ce.f
        public abstract De.c c(@Ce.f Runnable runnable, long j10, @Ce.f TimeUnit timeUnit);

        @Ce.f
        public De.c e(@Ce.f Runnable runnable, long j10, long j11, @Ce.f TimeUnit timeUnit) {
            Ge.h hVar = new Ge.h();
            Ge.h hVar2 = new Ge.h(hVar);
            Runnable b02 = Ye.a.b0(runnable);
            long nanos = timeUnit.toNanos(j11);
            long a10 = a(TimeUnit.NANOSECONDS);
            De.c c10 = c(new a(a10 + timeUnit.toNanos(j10), b02, a10, hVar2, nanos), j10, timeUnit);
            if (c10 == Ge.e.INSTANCE) {
                return c10;
            }
            hVar.a(c10);
            return hVar2;
        }
    }

    public static long b() {
        return f1703b;
    }

    @Ce.f
    public abstract c c();

    public long e(@Ce.f TimeUnit timeUnit) {
        return timeUnit.convert(System.currentTimeMillis(), TimeUnit.MILLISECONDS);
    }

    @Ce.f
    public De.c f(@Ce.f Runnable runnable) {
        return g(runnable, 0L, TimeUnit.NANOSECONDS);
    }

    @Ce.f
    public De.c g(@Ce.f Runnable runnable, long j10, @Ce.f TimeUnit timeUnit) {
        c c10 = c();
        a aVar = new a(Ye.a.b0(runnable), c10);
        c10.c(aVar, j10, timeUnit);
        return aVar;
    }

    @Ce.f
    public De.c h(@Ce.f Runnable runnable, long j10, long j11, @Ce.f TimeUnit timeUnit) {
        c c10 = c();
        b bVar = new b(Ye.a.b0(runnable), c10);
        De.c e10 = c10.e(bVar, j10, j11, timeUnit);
        return e10 == Ge.e.INSTANCE ? e10 : bVar;
    }

    public void i() {
    }

    public void j() {
    }

    @Ce.f
    public <S extends J & De.c> S k(@Ce.f Fe.o<AbstractC2362l<AbstractC2362l<AbstractC2353c>>, AbstractC2353c> oVar) {
        return new Se.q(oVar, this);
    }
}
