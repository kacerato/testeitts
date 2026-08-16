package Se;

import Be.J;
import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

public final class g extends J {

    public static final String f23110e = "RxCachedThreadScheduler";

    public static final k f23111f;

    public static final String f23112g = "RxCachedWorkerPoolEvictor";

    public static final k f23113h;

    public static final long f23115j = 60;

    public static final c f23118m;

    public static final String f23119n = "rx2.io-priority";

    public static final a f23120o;

    public final ThreadFactory f23121c;

    public final AtomicReference<a> f23122d;

    public static final TimeUnit f23117l = TimeUnit.SECONDS;

    public static final String f23114i = "rx2.io-keep-alive-time";

    public static final long f23116k = Long.getLong(f23114i, 60).longValue();

    public static final class a implements Runnable {

        public final long f23123b;

        public final ConcurrentLinkedQueue<c> f23124c;

        public final De.b f23125d;

        public final ScheduledExecutorService f23126e;

        public final Future<?> f23127f;

        public final ThreadFactory f23128g;

        public a(long j10, TimeUnit timeUnit, ThreadFactory threadFactory) {
            ScheduledExecutorService scheduledExecutorService;
            ScheduledFuture<?> scheduledFuture;
            long nanos = timeUnit != null ? timeUnit.toNanos(j10) : 0L;
            this.f23123b = nanos;
            this.f23124c = new ConcurrentLinkedQueue<>();
            this.f23125d = new De.b();
            this.f23128g = threadFactory;
            if (timeUnit != null) {
                scheduledExecutorService = Executors.newScheduledThreadPool(1, g.f23113h);
                scheduledFuture = scheduledExecutorService.scheduleWithFixedDelay(this, nanos, nanos, TimeUnit.NANOSECONDS);
            } else {
                scheduledExecutorService = null;
                scheduledFuture = null;
            }
            this.f23126e = scheduledExecutorService;
            this.f23127f = scheduledFuture;
        }

        public void a() {
            if (this.f23124c.isEmpty()) {
                return;
            }
            long c10 = c();
            Iterator<c> it = this.f23124c.iterator();
            while (it.hasNext()) {
                c next = it.next();
                if (next.k() > c10) {
                    return;
                }
                if (this.f23124c.remove(next)) {
                    this.f23125d.c(next);
                }
            }
        }

        public c b() {
            if (this.f23125d.d()) {
                return g.f23118m;
            }
            while (!this.f23124c.isEmpty()) {
                c poll = this.f23124c.poll();
                if (poll != null) {
                    return poll;
                }
            }
            c cVar = new c(this.f23128g);
            this.f23125d.a(cVar);
            return cVar;
        }

        public long c() {
            return System.nanoTime();
        }

        public void d(c cVar) {
            cVar.l(c() + this.f23123b);
            this.f23124c.offer(cVar);
        }

        public void e() {
            this.f23125d.dispose();
            Future<?> future = this.f23127f;
            if (future != null) {
                future.cancel(true);
            }
            ScheduledExecutorService scheduledExecutorService = this.f23126e;
            if (scheduledExecutorService != null) {
                scheduledExecutorService.shutdownNow();
            }
        }

        @Override
        public void run() {
            a();
        }
    }

    public static final class b extends J.c {

        public final a f23130c;

        public final c f23131d;

        public final AtomicBoolean f23132e = new AtomicBoolean();

        public final De.b f23129b = new De.b();

        public b(a aVar) {
            this.f23130c = aVar;
            this.f23131d = aVar.b();
        }

        @Override
        @Ce.f
        public De.c c(@Ce.f Runnable runnable, long j10, @Ce.f TimeUnit timeUnit) {
            return this.f23129b.d() ? Ge.e.INSTANCE : this.f23131d.f(runnable, j10, timeUnit, this.f23129b);
        }

        @Override
        public boolean d() {
            return this.f23132e.get();
        }

        @Override
        public void dispose() {
            if (this.f23132e.compareAndSet(false, true)) {
                this.f23129b.dispose();
                this.f23130c.d(this.f23131d);
            }
        }
    }

    public static final class c extends i {

        public long f23133d;

        public c(ThreadFactory threadFactory) {
            super(threadFactory);
            this.f23133d = 0L;
        }

        public long k() {
            return this.f23133d;
        }

        public void l(long j10) {
            this.f23133d = j10;
        }
    }

    static {
        c cVar = new c(new k("RxCachedThreadSchedulerShutdown"));
        f23118m = cVar;
        cVar.dispose();
        int max = Math.max(1, Math.min(10, Integer.getInteger(f23119n, 5).intValue()));
        k kVar = new k(f23110e, max);
        f23111f = kVar;
        f23113h = new k(f23112g, max);
        a aVar = new a(0L, null, kVar);
        f23120o = aVar;
        aVar.e();
    }

    public g() {
        this(f23111f);
    }

    @Override
    @Ce.f
    public J.c c() {
        return new b(this.f23122d.get());
    }

    @Override
    public void i() {
        a aVar;
        a aVar2;
        do {
            aVar = this.f23122d.get();
            aVar2 = f23120o;
            if (aVar == aVar2) {
                return;
            }
        } while (!androidx.lifecycle.c.a(this.f23122d, aVar, aVar2));
        aVar.e();
    }

    @Override
    public void j() {
        a aVar = new a(f23116k, f23117l, this.f23121c);
        if (androidx.lifecycle.c.a(this.f23122d, f23120o, aVar)) {
            return;
        }
        aVar.e();
    }

    public int l() {
        return this.f23122d.get().f23125d.h();
    }

    public g(ThreadFactory threadFactory) {
        this.f23121c = threadFactory;
        this.f23122d = new AtomicReference<>(f23120o);
        j();
    }
}
