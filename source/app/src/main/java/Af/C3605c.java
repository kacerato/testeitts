package af;

import Be.J;
import Ce.f;
import Ge.e;
import java.util.Queue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.TimeUnit;

public final class C3605c extends J {

    public final Queue<b> f32008c = new PriorityBlockingQueue(11);

    public long f32009d;

    public volatile long f32010e;

    public final class a extends J.c {

        public volatile boolean f32011b;

        public final class RunnableC0858a implements Runnable {

            public final b f32013b;

            public RunnableC0858a(b bVar) {
                this.f32013b = bVar;
            }

            @Override
            public void run() {
                C3605c.this.f32008c.remove(this.f32013b);
            }
        }

        public a() {
        }

        @Override
        public long a(@f TimeUnit timeUnit) {
            return C3605c.this.e(timeUnit);
        }

        @Override
        @f
        public De.c b(@f Runnable runnable) {
            if (this.f32011b) {
                return e.INSTANCE;
            }
            C3605c c3605c = C3605c.this;
            long j10 = c3605c.f32009d;
            c3605c.f32009d = 1 + j10;
            b bVar = new b(this, 0L, runnable, j10);
            C3605c.this.f32008c.add(bVar);
            return De.d.f(new RunnableC0858a(bVar));
        }

        @Override
        @f
        public De.c c(@f Runnable runnable, long j10, @f TimeUnit timeUnit) {
            if (this.f32011b) {
                return e.INSTANCE;
            }
            long nanos = C3605c.this.f32010e + timeUnit.toNanos(j10);
            C3605c c3605c = C3605c.this;
            long j11 = c3605c.f32009d;
            c3605c.f32009d = 1 + j11;
            b bVar = new b(this, nanos, runnable, j11);
            C3605c.this.f32008c.add(bVar);
            return De.d.f(new RunnableC0858a(bVar));
        }

        @Override
        public boolean d() {
            return this.f32011b;
        }

        @Override
        public void dispose() {
            this.f32011b = true;
        }
    }

    public static final class b implements Comparable<b> {

        public final long f32015b;

        public final Runnable f32016c;

        public final a f32017d;

        public final long f32018e;

        public b(a aVar, long j10, Runnable runnable, long j11) {
            this.f32015b = j10;
            this.f32016c = runnable;
            this.f32017d = aVar;
            this.f32018e = j11;
        }

        @Override
        public int compareTo(b bVar) {
            long j10 = this.f32015b;
            long j11 = bVar.f32015b;
            return j10 == j11 ? He.b.b(this.f32018e, bVar.f32018e) : He.b.b(j10, j11);
        }

        public String toString() {
            return String.format("TimedRunnable(time = %d, run = %s)", Long.valueOf(this.f32015b), this.f32016c.toString());
        }
    }

    public C3605c() {
    }

    @Override
    @f
    public J.c c() {
        return new a();
    }

    @Override
    public long e(@f TimeUnit timeUnit) {
        return timeUnit.convert(this.f32010e, TimeUnit.NANOSECONDS);
    }

    public void l(long j10, TimeUnit timeUnit) {
        m(this.f32010e + timeUnit.toNanos(j10), TimeUnit.NANOSECONDS);
    }

    public void m(long j10, TimeUnit timeUnit) {
        o(timeUnit.toNanos(j10));
    }

    public void n() {
        o(this.f32010e);
    }

    public final void o(long j10) {
        while (true) {
            b peek = this.f32008c.peek();
            if (peek == null) {
                break;
            }
            long j11 = peek.f32015b;
            if (j11 > j10) {
                break;
            }
            if (j11 == 0) {
                j11 = this.f32010e;
            }
            this.f32010e = j11;
            this.f32008c.remove(peek);
            if (!peek.f32017d.f32011b) {
                peek.f32016c.run();
            }
        }
        this.f32010e = j10;
    }

    public C3605c(long j10, TimeUnit timeUnit) {
        this.f32010e = timeUnit.toNanos(j10);
    }
}
