package Se;

import Be.J;
import java.util.concurrent.Callable;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

public class i extends J.c implements De.c {

    public final ScheduledExecutorService f23138b;

    public volatile boolean f23139c;

    public i(ThreadFactory threadFactory) {
        this.f23138b = p.a(threadFactory);
    }

    @Override
    @Ce.f
    public De.c b(@Ce.f Runnable runnable) {
        return c(runnable, 0L, null);
    }

    @Override
    @Ce.f
    public De.c c(@Ce.f Runnable runnable, long j10, @Ce.f TimeUnit timeUnit) {
        return this.f23139c ? Ge.e.INSTANCE : f(runnable, j10, timeUnit, null);
    }

    @Override
    public boolean d() {
        return this.f23139c;
    }

    @Override
    public void dispose() {
        if (this.f23139c) {
            return;
        }
        this.f23139c = true;
        this.f23138b.shutdownNow();
    }

    @Ce.f
    public n f(Runnable runnable, long j10, @Ce.f TimeUnit timeUnit, @Ce.g Ge.c cVar) {
        n nVar = new n(Ye.a.b0(runnable), cVar);
        if (cVar != null && !cVar.a(nVar)) {
            return nVar;
        }
        try {
            nVar.a(j10 <= 0 ? this.f23138b.submit((Callable) nVar) : this.f23138b.schedule((Callable) nVar, j10, timeUnit));
        } catch (RejectedExecutionException e10) {
            if (cVar != null) {
                cVar.c(nVar);
            }
            Ye.a.Y(e10);
        }
        return nVar;
    }

    public De.c h(Runnable runnable, long j10, TimeUnit timeUnit) {
        m mVar = new m(Ye.a.b0(runnable));
        try {
            mVar.b(j10 <= 0 ? this.f23138b.submit(mVar) : this.f23138b.schedule(mVar, j10, timeUnit));
            return mVar;
        } catch (RejectedExecutionException e10) {
            Ye.a.Y(e10);
            return Ge.e.INSTANCE;
        }
    }

    public De.c i(Runnable runnable, long j10, long j11, TimeUnit timeUnit) {
        Runnable b02 = Ye.a.b0(runnable);
        if (j11 <= 0) {
            f fVar = new f(b02, this.f23138b);
            try {
                fVar.b(j10 <= 0 ? this.f23138b.submit(fVar) : this.f23138b.schedule(fVar, j10, timeUnit));
                return fVar;
            } catch (RejectedExecutionException e10) {
                Ye.a.Y(e10);
                return Ge.e.INSTANCE;
            }
        }
        l lVar = new l(b02);
        try {
            lVar.b(this.f23138b.scheduleAtFixedRate(lVar, j10, j11, timeUnit));
            return lVar;
        } catch (RejectedExecutionException e11) {
            Ye.a.Y(e11);
            return Ge.e.INSTANCE;
        }
    }

    public void j() {
        if (this.f23139c) {
            return;
        }
        this.f23139c = true;
        this.f23138b.shutdown();
    }
}
