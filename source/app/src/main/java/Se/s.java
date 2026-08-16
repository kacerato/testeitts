package Se;

import Be.J;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

public final class s extends J {

    public static final s f23189c = new s();

    public static final class a implements Runnable {

        public final Runnable f23190b;

        public final c f23191c;

        public final long f23192d;

        public a(Runnable runnable, c cVar, long j10) {
            this.f23190b = runnable;
            this.f23191c = cVar;
            this.f23192d = j10;
        }

        @Override
        public void run() {
            if (this.f23191c.f23200e) {
                return;
            }
            long a10 = this.f23191c.a(TimeUnit.MILLISECONDS);
            long j10 = this.f23192d;
            if (j10 > a10) {
                try {
                    Thread.sleep(j10 - a10);
                } catch (InterruptedException e10) {
                    Thread.currentThread().interrupt();
                    Ye.a.Y(e10);
                    return;
                }
            }
            if (this.f23191c.f23200e) {
                return;
            }
            this.f23190b.run();
        }
    }

    public static final class b implements Comparable<b> {

        public final Runnable f23193b;

        public final long f23194c;

        public final int f23195d;

        public volatile boolean f23196e;

        public b(Runnable runnable, Long l10, int i10) {
            this.f23193b = runnable;
            this.f23194c = l10.longValue();
            this.f23195d = i10;
        }

        @Override
        public int compareTo(b bVar) {
            int b10 = He.b.b(this.f23194c, bVar.f23194c);
            return b10 == 0 ? He.b.a(this.f23195d, bVar.f23195d) : b10;
        }
    }

    public static final class c extends J.c implements De.c {

        public final PriorityBlockingQueue<b> f23197b = new PriorityBlockingQueue<>();

        public final AtomicInteger f23198c = new AtomicInteger();

        public final AtomicInteger f23199d = new AtomicInteger();

        public volatile boolean f23200e;

        public final class a implements Runnable {

            public final b f23201b;

            public a(b bVar) {
                this.f23201b = bVar;
            }

            @Override
            public void run() {
                this.f23201b.f23196e = true;
                c.this.f23197b.remove(this.f23201b);
            }
        }

        @Override
        @Ce.f
        public De.c b(@Ce.f Runnable runnable) {
            return f(runnable, a(TimeUnit.MILLISECONDS));
        }

        @Override
        @Ce.f
        public De.c c(@Ce.f Runnable runnable, long j10, @Ce.f TimeUnit timeUnit) {
            long a10 = a(TimeUnit.MILLISECONDS) + timeUnit.toMillis(j10);
            return f(new a(runnable, this, a10), a10);
        }

        @Override
        public boolean d() {
            return this.f23200e;
        }

        @Override
        public void dispose() {
            this.f23200e = true;
        }

        public De.c f(Runnable runnable, long j10) {
            if (this.f23200e) {
                return Ge.e.INSTANCE;
            }
            b bVar = new b(runnable, Long.valueOf(j10), this.f23199d.incrementAndGet());
            this.f23197b.add(bVar);
            if (this.f23198c.getAndIncrement() != 0) {
                return De.d.f(new a(bVar));
            }
            int i10 = 1;
            while (!this.f23200e) {
                b poll = this.f23197b.poll();
                if (poll == null) {
                    i10 = this.f23198c.addAndGet(-i10);
                    if (i10 == 0) {
                        return Ge.e.INSTANCE;
                    }
                } else if (!poll.f23196e) {
                    poll.f23193b.run();
                }
            }
            this.f23197b.clear();
            return Ge.e.INSTANCE;
        }
    }

    public static s l() {
        return f23189c;
    }

    @Override
    @Ce.f
    public J.c c() {
        return new c();
    }

    @Override
    @Ce.f
    public De.c f(@Ce.f Runnable runnable) {
        Ye.a.b0(runnable).run();
        return Ge.e.INSTANCE;
    }

    @Override
    @Ce.f
    public De.c g(@Ce.f Runnable runnable, long j10, TimeUnit timeUnit) {
        try {
            timeUnit.sleep(j10);
            Ye.a.b0(runnable).run();
        } catch (InterruptedException e10) {
            Thread.currentThread().interrupt();
            Ye.a.Y(e10);
        }
        return Ge.e.INSTANCE;
    }
}
