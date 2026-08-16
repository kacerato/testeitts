package i1;

import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

public final class ExecutorC13551g0 implements Executor {

    public final ThreadPoolExecutor f91300c;

    public final AtomicInteger f91299b = new AtomicInteger(1);

    public WeakReference<Thread> f91301d = new WeakReference<>(null);

    public ExecutorC13551g0(String str) {
        final String str2 = "Google consent worker";
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactory(str2) {

            public final String f91297c = "Google consent worker";

            @Override
            public final Thread newThread(Runnable runnable) {
                return ExecutorC13551g0.this.a(this.f91297c, runnable);
            }
        });
        this.f91300c = threadPoolExecutor;
        threadPoolExecutor.allowCoreThreadTimeOut(true);
    }

    public final Thread a(String str, Runnable runnable) {
        int andIncrement = this.f91299b.getAndIncrement();
        StringBuilder sb2 = new StringBuilder(34);
        sb2.append("Google consent worker #");
        sb2.append(andIncrement);
        Thread thread = new Thread(runnable, sb2.toString());
        this.f91301d = new WeakReference<>(thread);
        return thread;
    }

    @Override
    public final void execute(Runnable runnable) {
        if (Thread.currentThread() == this.f91301d.get()) {
            runnable.run();
        } else {
            this.f91300c.execute(runnable);
        }
    }
}
