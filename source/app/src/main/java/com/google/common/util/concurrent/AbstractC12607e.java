package com.google.common.util.concurrent;

import com.google.common.util.concurrent.p0;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.locks.ReentrantLock;
import java.util.logging.Logger;
import javax.annotation.CheckForNull;

@A
@v2.c
public abstract class AbstractC12607e implements p0 {

    public static final Logger f67385b = Logger.getLogger(AbstractC12607e.class.getName());

    public final AbstractC12609f f67386a = new g(this, null);

    public class a extends p0.a {

        public final ScheduledExecutorService f67387a;

        public a(AbstractC12607e abstractC12607e, ScheduledExecutorService scheduledExecutorService) {
            this.f67387a = scheduledExecutorService;
        }

        @Override
        public void a(p0.b bVar, Throwable th2) {
            this.f67387a.shutdown();
        }

        @Override
        public void e(p0.b bVar) {
            this.f67387a.shutdown();
        }
    }

    public class b implements ThreadFactory {
        public b() {
        }

        @Override
        public Thread newThread(Runnable runnable) {
            return C12612g0.n(AbstractC12607e.this.n(), runnable);
        }
    }

    public interface c {
        void cancel(boolean z10);

        boolean isCancelled();
    }

    public static abstract class d extends f {

        public final class a implements Callable<Void> {

            public final Runnable f67389b;

            public final ScheduledExecutorService f67390c;

            public final AbstractC12609f f67391d;

            public final ReentrantLock f67392e = new ReentrantLock();

            @CheckForNull
            @J2.a("lock")
            public c f67393f;

            public a(AbstractC12609f abstractC12609f, ScheduledExecutorService scheduledExecutorService, Runnable runnable) {
                this.f67389b = runnable;
                this.f67390c = scheduledExecutorService;
                this.f67391d = abstractC12609f;
            }

            @Override
            @CheckForNull
            public Void call() throws Exception {
                this.f67389b.run();
                c();
                return null;
            }

            @J2.a("lock")
            public final c b(b bVar) {
                c cVar = this.f67393f;
                if (cVar == null) {
                    c cVar2 = new c(this.f67392e, d(bVar));
                    this.f67393f = cVar2;
                    return cVar2;
                }
                if (!cVar.f67398b.isCancelled()) {
                    this.f67393f.f67398b = d(bVar);
                }
                return this.f67393f;
            }

            @I2.a
            public c c() {
                c c1021e;
                try {
                    b d10 = d.this.d();
                    this.f67392e.lock();
                    try {
                        c1021e = b(d10);
                        this.f67392e.unlock();
                        th = null;
                    } catch (Throwable th2) {
                        th = th2;
                        try {
                            c1021e = new C1021e(Q.k());
                        } finally {
                            this.f67392e.unlock();
                        }
                    }
                    if (th != null) {
                        this.f67391d.t(th);
                    }
                    return c1021e;
                } catch (Throwable th3) {
                    this.f67391d.t(th3);
                    return new C1021e(Q.k());
                }
            }

            public final ScheduledFuture<Void> d(b bVar) {
                return this.f67390c.schedule(this, bVar.f67395a, bVar.f67396b);
            }
        }

        public static final class b {

            public final long f67395a;

            public final TimeUnit f67396b;

            public b(long j10, TimeUnit timeUnit) {
                this.f67395a = j10;
                this.f67396b = (TimeUnit) w2.H.E(timeUnit);
            }
        }

        public static final class c implements c {

            public final ReentrantLock f67397a;

            @J2.a("lock")
            public Future<Void> f67398b;

            public c(ReentrantLock reentrantLock, Future<Void> future) {
                this.f67397a = reentrantLock;
                this.f67398b = future;
            }

            @Override
            public void cancel(boolean z10) {
                this.f67397a.lock();
                try {
                    this.f67398b.cancel(z10);
                } finally {
                    this.f67397a.unlock();
                }
            }

            @Override
            public boolean isCancelled() {
                this.f67397a.lock();
                try {
                    return this.f67398b.isCancelled();
                } finally {
                    this.f67397a.unlock();
                }
            }
        }

        public d() {
            super(null);
        }

        @Override
        public final c c(AbstractC12609f abstractC12609f, ScheduledExecutorService scheduledExecutorService, Runnable runnable) {
            return new a(abstractC12609f, scheduledExecutorService, runnable).c();
        }

        public abstract b d() throws Exception;
    }

    public static final class C1021e implements c {

        public final Future<?> f67399a;

        public C1021e(Future<?> future) {
            this.f67399a = future;
        }

        @Override
        public void cancel(boolean z10) {
            this.f67399a.cancel(z10);
        }

        @Override
        public boolean isCancelled() {
            return this.f67399a.isCancelled();
        }
    }

    public static abstract class f {

        public class a extends f {

            public final long f67400a;

            public final long f67401b;

            public final TimeUnit f67402c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(long j10, long j11, TimeUnit timeUnit) {
                super(null);
                this.f67400a = j10;
                this.f67401b = j11;
                this.f67402c = timeUnit;
            }

            @Override
            public c c(AbstractC12609f abstractC12609f, ScheduledExecutorService scheduledExecutorService, Runnable runnable) {
                return new C1021e(scheduledExecutorService.scheduleWithFixedDelay(runnable, this.f67400a, this.f67401b, this.f67402c));
            }
        }

        public class b extends f {

            public final long f67403a;

            public final long f67404b;

            public final TimeUnit f67405c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public b(long j10, long j11, TimeUnit timeUnit) {
                super(null);
                this.f67403a = j10;
                this.f67404b = j11;
                this.f67405c = timeUnit;
            }

            @Override
            public c c(AbstractC12609f abstractC12609f, ScheduledExecutorService scheduledExecutorService, Runnable runnable) {
                return new C1021e(scheduledExecutorService.scheduleAtFixedRate(runnable, this.f67403a, this.f67404b, this.f67405c));
            }
        }

        public f(a aVar) {
            this();
        }

        public static f a(long j10, long j11, TimeUnit timeUnit) {
            w2.H.E(timeUnit);
            w2.H.p(j11 > 0, "delay must be > 0, found %s", j11);
            return new a(j10, j11, timeUnit);
        }

        public static f b(long j10, long j11, TimeUnit timeUnit) {
            w2.H.E(timeUnit);
            w2.H.p(j11 > 0, "period must be > 0, found %s", j11);
            return new b(j10, j11, timeUnit);
        }

        public abstract c c(AbstractC12609f abstractC12609f, ScheduledExecutorService scheduledExecutorService, Runnable runnable);

        public f() {
        }
    }

    @Override
    public final void a(p0.a aVar, Executor executor) {
        this.f67386a.a(aVar, executor);
    }

    @Override
    public final void b(long j10, TimeUnit timeUnit) throws TimeoutException {
        this.f67386a.b(j10, timeUnit);
    }

    @Override
    public final void c(long j10, TimeUnit timeUnit) throws TimeoutException {
        this.f67386a.c(j10, timeUnit);
    }

    @Override
    public final void d() {
        this.f67386a.d();
    }

    @Override
    public final Throwable e() {
        return this.f67386a.e();
    }

    @Override
    public final void f() {
        this.f67386a.f();
    }

    @Override
    @I2.a
    public final p0 g() {
        this.f67386a.g();
        return this;
    }

    @Override
    @I2.a
    public final p0 h() {
        this.f67386a.h();
        return this;
    }

    @Override
    public final boolean isRunning() {
        return this.f67386a.isRunning();
    }

    public ScheduledExecutorService k() {
        ScheduledExecutorService newSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor(new b());
        a(new a(this, newSingleThreadScheduledExecutor), C12612g0.c());
        return newSingleThreadScheduledExecutor;
    }

    public abstract void l() throws Exception;

    public abstract f m();

    public String n() {
        return getClass().getSimpleName();
    }

    public void o() throws Exception {
    }

    public void p() throws Exception {
    }

    @Override
    public final p0.b state() {
        return this.f67386a.state();
    }

    public String toString() {
        String n10 = n();
        String valueOf = String.valueOf(state());
        StringBuilder sb2 = new StringBuilder(String.valueOf(n10).length() + 3 + valueOf.length());
        sb2.append(n10);
        sb2.append(" [");
        sb2.append(valueOf);
        sb2.append("]");
        return sb2.toString();
    }

    public final class g extends AbstractC12609f {

        @CheckForNull
        public volatile c f67406p;

        @CheckForNull
        public volatile ScheduledExecutorService f67407q;

        public final ReentrantLock f67408r;

        public final Runnable f67409s;

        public class a implements w2.Q<String> {
            public a() {
            }

            @Override
            public String get() {
                String n10 = AbstractC12607e.this.n();
                String valueOf = String.valueOf(g.this.state());
                StringBuilder sb2 = new StringBuilder(String.valueOf(n10).length() + 1 + valueOf.length());
                sb2.append(n10);
                sb2.append(" ");
                sb2.append(valueOf);
                return sb2.toString();
            }
        }

        public class b implements Runnable {
            public b() {
            }

            @Override
            public void run() {
                g.this.f67408r.lock();
                try {
                    AbstractC12607e.this.p();
                    g gVar = g.this;
                    gVar.f67406p = AbstractC12607e.this.m().c(AbstractC12607e.this.f67386a, g.this.f67407q, g.this.f67409s);
                    g.this.u();
                } finally {
                    try {
                    } finally {
                    }
                }
            }
        }

        public class c implements Runnable {
            public c() {
            }

            @Override
            public void run() {
                try {
                    g.this.f67408r.lock();
                    try {
                        if (g.this.state() != p0.b.STOPPING) {
                            return;
                        }
                        AbstractC12607e.this.o();
                        g.this.f67408r.unlock();
                        g.this.v();
                    } finally {
                        g.this.f67408r.unlock();
                    }
                } catch (Throwable th2) {
                    g.this.t(th2);
                }
            }
        }

        public class d implements Runnable {
            public d() {
            }

            @Override
            public void run() {
                c cVar;
                g.this.f67408r.lock();
                try {
                    cVar = g.this.f67406p;
                    Objects.requireNonNull(cVar);
                } finally {
                    try {
                    } finally {
                    }
                }
                if (cVar.isCancelled()) {
                    return;
                }
                AbstractC12607e.this.l();
            }
        }

        public g() {
            this.f67408r = new ReentrantLock();
            this.f67409s = new d();
        }

        @Override
        public final void m() {
            this.f67407q = C12612g0.s(AbstractC12607e.this.k(), new a());
            this.f67407q.execute(new b());
        }

        @Override
        public final void n() {
            Objects.requireNonNull(this.f67406p);
            Objects.requireNonNull(this.f67407q);
            this.f67406p.cancel(false);
            this.f67407q.execute(new c());
        }

        @Override
        public String toString() {
            return AbstractC12607e.this.toString();
        }

        public g(AbstractC12607e abstractC12607e, a aVar) {
            this();
        }
    }
}
