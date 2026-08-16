package U2;

import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.Semaphore;

public class A implements Executor {

    public final Executor f25670b;

    public final Semaphore f25671c;

    public final LinkedBlockingQueue<Runnable> f25672d = new LinkedBlockingQueue<>();

    public A(Executor executor, int i10) {
        T2.E.a(i10 > 0, "concurrency must be positive.");
        this.f25670b = executor;
        this.f25671c = new Semaphore(i10, true);
    }

    public final Runnable b(final Runnable runnable) {
        return new Runnable() {
            @Override
            public final void run() {
                A.this.c(runnable);
            }
        };
    }

    public final void c(Runnable runnable) {
        try {
            runnable.run();
        } finally {
            this.f25671c.release();
            d();
        }
    }

    public final void d() {
        while (this.f25671c.tryAcquire()) {
            Runnable poll = this.f25672d.poll();
            if (poll == null) {
                this.f25671c.release();
                return;
            }
            this.f25670b.execute(b(poll));
        }
    }

    @Override
    public void execute(Runnable runnable) {
        this.f25672d.offer(runnable);
        d();
    }
}
