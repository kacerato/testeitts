package Se;

import Be.J;
import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

public final class r extends J {

    public static final String f23180e = "rx2.single-priority";

    public static final String f23181f = "RxSingleScheduler";

    public static final k f23182g;

    public static final ScheduledExecutorService f23183h;

    public final ThreadFactory f23184c;

    public final AtomicReference<ScheduledExecutorService> f23185d;

    public static final class a extends J.c {

        public final ScheduledExecutorService f23186b;

        public final De.b f23187c = new De.b();

        public volatile boolean f23188d;

        public a(ScheduledExecutorService scheduledExecutorService) {
            this.f23186b = scheduledExecutorService;
        }

        @Override
        @Ce.f
        public De.c c(@Ce.f Runnable runnable, long j10, @Ce.f TimeUnit timeUnit) {
            if (this.f23188d) {
                return Ge.e.INSTANCE;
            }
            n nVar = new n(Ye.a.b0(runnable), this.f23187c);
            this.f23187c.a(nVar);
            try {
                nVar.a(j10 <= 0 ? this.f23186b.submit((Callable) nVar) : this.f23186b.schedule((Callable) nVar, j10, timeUnit));
                return nVar;
            } catch (RejectedExecutionException e10) {
                dispose();
                Ye.a.Y(e10);
                return Ge.e.INSTANCE;
            }
        }

        @Override
        public boolean d() {
            return this.f23188d;
        }

        @Override
        public void dispose() {
            if (this.f23188d) {
                return;
            }
            this.f23188d = true;
            this.f23187c.dispose();
        }
    }

    static {
        ScheduledExecutorService newScheduledThreadPool = Executors.newScheduledThreadPool(0);
        f23183h = newScheduledThreadPool;
        newScheduledThreadPool.shutdown();
        f23182g = new k(f23181f, Math.max(1, Math.min(10, Integer.getInteger(f23180e, 5).intValue())), true);
    }

    public r() {
        this(f23182g);
    }

    public static ScheduledExecutorService l(ThreadFactory threadFactory) {
        return p.a(threadFactory);
    }

    @Override
    @Ce.f
    public J.c c() {
        return new a(this.f23185d.get());
    }

    @Override
    @Ce.f
    public De.c g(@Ce.f Runnable runnable, long j10, TimeUnit timeUnit) {
        m mVar = new m(Ye.a.b0(runnable));
        try {
            mVar.b(j10 <= 0 ? this.f23185d.get().submit(mVar) : this.f23185d.get().schedule(mVar, j10, timeUnit));
            return mVar;
        } catch (RejectedExecutionException e10) {
            Ye.a.Y(e10);
            return Ge.e.INSTANCE;
        }
    }

    @Override
    @Ce.f
    public De.c h(@Ce.f Runnable runnable, long j10, long j11, TimeUnit timeUnit) {
        Runnable b02 = Ye.a.b0(runnable);
        if (j11 > 0) {
            l lVar = new l(b02);
            try {
                lVar.b(this.f23185d.get().scheduleAtFixedRate(lVar, j10, j11, timeUnit));
                return lVar;
            } catch (RejectedExecutionException e10) {
                Ye.a.Y(e10);
                return Ge.e.INSTANCE;
            }
        }
        ScheduledExecutorService scheduledExecutorService = this.f23185d.get();
        f fVar = new f(b02, scheduledExecutorService);
        try {
            fVar.b(j10 <= 0 ? scheduledExecutorService.submit(fVar) : scheduledExecutorService.schedule(fVar, j10, timeUnit));
            return fVar;
        } catch (RejectedExecutionException e11) {
            Ye.a.Y(e11);
            return Ge.e.INSTANCE;
        }
    }

    @Override
    public void i() {
        ScheduledExecutorService andSet;
        ScheduledExecutorService scheduledExecutorService = this.f23185d.get();
        ScheduledExecutorService scheduledExecutorService2 = f23183h;
        if (scheduledExecutorService == scheduledExecutorService2 || (andSet = this.f23185d.getAndSet(scheduledExecutorService2)) == scheduledExecutorService2) {
            return;
        }
        andSet.shutdownNow();
    }

    @Override
    public void j() {
        ScheduledExecutorService scheduledExecutorService;
        ScheduledExecutorService scheduledExecutorService2 = null;
        do {
            scheduledExecutorService = this.f23185d.get();
            if (scheduledExecutorService != f23183h) {
                if (scheduledExecutorService2 != null) {
                    scheduledExecutorService2.shutdown();
                    return;
                }
                return;
            } else if (scheduledExecutorService2 == null) {
                scheduledExecutorService2 = l(this.f23184c);
            }
        } while (!androidx.lifecycle.c.a(this.f23185d, scheduledExecutorService, scheduledExecutorService2));
    }

    public r(ThreadFactory threadFactory) {
        AtomicReference<ScheduledExecutorService> atomicReference = new AtomicReference<>();
        this.f23185d = atomicReference;
        this.f23184c = threadFactory;
        atomicReference.lazySet(l(threadFactory));
    }
}
