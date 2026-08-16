package Se;

import Be.J;
import af.C3604b;
import af.InterfaceC3603a;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class d extends J {

    public static final J f23073e = C3604b.g();

    public final boolean f23074c;

    @Ce.f
    public final Executor f23075d;

    public final class a implements Runnable {

        public final b f23076b;

        public a(b bVar) {
            this.f23076b = bVar;
        }

        @Override
        public void run() {
            b bVar = this.f23076b;
            bVar.f23080c.a(d.this.f(bVar));
        }
    }

    public static final class b extends AtomicReference<Runnable> implements Runnable, De.c, InterfaceC3603a {

        public static final long f23078d = -4101336210206799084L;

        public final Ge.h f23079b;

        public final Ge.h f23080c;

        public b(Runnable runnable) {
            super(runnable);
            this.f23079b = new Ge.h();
            this.f23080c = new Ge.h();
        }

        @Override
        public Runnable a() {
            Runnable runnable = get();
            return runnable != null ? runnable : He.a.f8376b;
        }

        @Override
        public boolean d() {
            return get() == null;
        }

        @Override
        public void dispose() {
            if (getAndSet(null) != null) {
                this.f23079b.dispose();
                this.f23080c.dispose();
            }
        }

        @Override
        public void run() {
            Runnable runnable = get();
            if (runnable != null) {
                try {
                    runnable.run();
                    lazySet(null);
                    Ge.h hVar = this.f23079b;
                    Ge.d dVar = Ge.d.DISPOSED;
                    hVar.lazySet(dVar);
                    this.f23080c.lazySet(dVar);
                } catch (Throwable th2) {
                    lazySet(null);
                    this.f23079b.lazySet(Ge.d.DISPOSED);
                    this.f23080c.lazySet(Ge.d.DISPOSED);
                    throw th2;
                }
            }
        }
    }

    public static final class c extends J.c implements Runnable {

        public final boolean f23081b;

        public final Executor f23082c;

        public volatile boolean f23084e;

        public final AtomicInteger f23085f = new AtomicInteger();

        public final De.b f23086g = new De.b();

        public final Re.a<Runnable> f23083d = new Re.a<>();

        public static final class a extends AtomicBoolean implements Runnable, De.c {

            public static final long f23087c = -2421395018820541164L;

            public final Runnable f23088b;

            public a(Runnable runnable) {
                this.f23088b = runnable;
            }

            @Override
            public boolean d() {
                return get();
            }

            @Override
            public void dispose() {
                lazySet(true);
            }

            @Override
            public void run() {
                if (get()) {
                    return;
                }
                try {
                    this.f23088b.run();
                } finally {
                    lazySet(true);
                }
            }
        }

        public static final class b extends AtomicInteger implements Runnable, De.c {

            public static final long f23089e = -3603436687413320876L;

            public static final int f23090f = 0;

            public static final int f23091g = 1;

            public static final int f23092h = 2;

            public static final int f23093i = 3;

            public static final int f23094j = 4;

            public final Runnable f23095b;

            public final Ge.c f23096c;

            public volatile Thread f23097d;

            public b(Runnable runnable, Ge.c cVar) {
                this.f23095b = runnable;
                this.f23096c = cVar;
            }

            public void a() {
                Ge.c cVar = this.f23096c;
                if (cVar != null) {
                    cVar.b(this);
                }
            }

            @Override
            public boolean d() {
                return get() >= 2;
            }

            @Override
            public void dispose() {
                while (true) {
                    int i10 = get();
                    if (i10 >= 2) {
                        return;
                    }
                    if (i10 == 0) {
                        if (compareAndSet(0, 4)) {
                            a();
                            return;
                        }
                    } else if (compareAndSet(1, 3)) {
                        Thread thread = this.f23097d;
                        if (thread != null) {
                            thread.interrupt();
                            this.f23097d = null;
                        }
                        set(4);
                        a();
                        return;
                    }
                }
            }

            @Override
            public void run() {
                if (get() == 0) {
                    this.f23097d = Thread.currentThread();
                    if (!compareAndSet(0, 1)) {
                        this.f23097d = null;
                        return;
                    }
                    try {
                        this.f23095b.run();
                        this.f23097d = null;
                        if (compareAndSet(1, 2)) {
                            a();
                            return;
                        }
                        while (get() == 3) {
                            Thread.yield();
                        }
                        Thread.interrupted();
                    } catch (Throwable th2) {
                        this.f23097d = null;
                        if (compareAndSet(1, 2)) {
                            a();
                        } else {
                            while (get() == 3) {
                                Thread.yield();
                            }
                            Thread.interrupted();
                        }
                        throw th2;
                    }
                }
            }
        }

        public final class RunnableC0557c implements Runnable {

            public final Ge.h f23098b;

            public final Runnable f23099c;

            public RunnableC0557c(Ge.h hVar, Runnable runnable) {
                this.f23098b = hVar;
                this.f23099c = runnable;
            }

            @Override
            public void run() {
                this.f23098b.a(c.this.b(this.f23099c));
            }
        }

        public c(Executor executor, boolean z10) {
            this.f23082c = executor;
            this.f23081b = z10;
        }

        @Override
        @Ce.f
        public De.c b(@Ce.f Runnable runnable) {
            De.c aVar;
            if (this.f23084e) {
                return Ge.e.INSTANCE;
            }
            Runnable b02 = Ye.a.b0(runnable);
            if (this.f23081b) {
                aVar = new b(b02, this.f23086g);
                this.f23086g.a(aVar);
            } else {
                aVar = new a(b02);
            }
            this.f23083d.offer(aVar);
            if (this.f23085f.getAndIncrement() == 0) {
                try {
                    this.f23082c.execute(this);
                } catch (RejectedExecutionException e10) {
                    this.f23084e = true;
                    this.f23083d.clear();
                    Ye.a.Y(e10);
                    return Ge.e.INSTANCE;
                }
            }
            return aVar;
        }

        @Override
        @Ce.f
        public De.c c(@Ce.f Runnable runnable, long j10, @Ce.f TimeUnit timeUnit) {
            if (j10 <= 0) {
                return b(runnable);
            }
            if (this.f23084e) {
                return Ge.e.INSTANCE;
            }
            Ge.h hVar = new Ge.h();
            Ge.h hVar2 = new Ge.h(hVar);
            n nVar = new n(new RunnableC0557c(hVar2, Ye.a.b0(runnable)), this.f23086g);
            this.f23086g.a(nVar);
            Executor executor = this.f23082c;
            if (executor instanceof ScheduledExecutorService) {
                try {
                    nVar.a(((ScheduledExecutorService) executor).schedule((Callable) nVar, j10, timeUnit));
                } catch (RejectedExecutionException e10) {
                    this.f23084e = true;
                    Ye.a.Y(e10);
                    return Ge.e.INSTANCE;
                }
            } else {
                nVar.a(new Se.c(d.f23073e.g(nVar, j10, timeUnit)));
            }
            hVar.a(nVar);
            return hVar2;
        }

        @Override
        public boolean d() {
            return this.f23084e;
        }

        @Override
        public void dispose() {
            if (this.f23084e) {
                return;
            }
            this.f23084e = true;
            this.f23086g.dispose();
            if (this.f23085f.getAndIncrement() == 0) {
                this.f23083d.clear();
            }
        }

        @Override
        public void run() {
            Re.a<Runnable> aVar = this.f23083d;
            int i10 = 1;
            while (!this.f23084e) {
                do {
                    Runnable poll = aVar.poll();
                    if (poll != null) {
                        poll.run();
                    } else if (this.f23084e) {
                        aVar.clear();
                        return;
                    } else {
                        i10 = this.f23085f.addAndGet(-i10);
                        if (i10 == 0) {
                            return;
                        }
                    }
                } while (!this.f23084e);
                aVar.clear();
                return;
            }
            aVar.clear();
        }
    }

    public d(@Ce.f Executor executor, boolean z10) {
        this.f23075d = executor;
        this.f23074c = z10;
    }

    @Override
    @Ce.f
    public J.c c() {
        return new c(this.f23075d, this.f23074c);
    }

    @Override
    @Ce.f
    public De.c f(@Ce.f Runnable runnable) {
        Runnable b02 = Ye.a.b0(runnable);
        try {
            if (this.f23075d instanceof ExecutorService) {
                m mVar = new m(b02);
                mVar.b(((ExecutorService) this.f23075d).submit(mVar));
                return mVar;
            }
            if (this.f23074c) {
                c.b bVar = new c.b(b02, null);
                this.f23075d.execute(bVar);
                return bVar;
            }
            c.a aVar = new c.a(b02);
            this.f23075d.execute(aVar);
            return aVar;
        } catch (RejectedExecutionException e10) {
            Ye.a.Y(e10);
            return Ge.e.INSTANCE;
        }
    }

    @Override
    @Ce.f
    public De.c g(@Ce.f Runnable runnable, long j10, TimeUnit timeUnit) {
        Runnable b02 = Ye.a.b0(runnable);
        if (!(this.f23075d instanceof ScheduledExecutorService)) {
            b bVar = new b(b02);
            bVar.f23079b.a(f23073e.g(new a(bVar), j10, timeUnit));
            return bVar;
        }
        try {
            m mVar = new m(b02);
            mVar.b(((ScheduledExecutorService) this.f23075d).schedule(mVar, j10, timeUnit));
            return mVar;
        } catch (RejectedExecutionException e10) {
            Ye.a.Y(e10);
            return Ge.e.INSTANCE;
        }
    }

    @Override
    @Ce.f
    public De.c h(@Ce.f Runnable runnable, long j10, long j11, TimeUnit timeUnit) {
        if (!(this.f23075d instanceof ScheduledExecutorService)) {
            return super.h(runnable, j10, j11, timeUnit);
        }
        try {
            l lVar = new l(Ye.a.b0(runnable));
            lVar.b(((ScheduledExecutorService) this.f23075d).scheduleAtFixedRate(lVar, j10, j11, timeUnit));
            return lVar;
        } catch (RejectedExecutionException e10) {
            Ye.a.Y(e10);
            return Ge.e.INSTANCE;
        }
    }
}
