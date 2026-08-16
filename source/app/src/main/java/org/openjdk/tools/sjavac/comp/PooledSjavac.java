package org.openjdk.tools.sjavac.comp;

import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import org.openjdk.tools.javac.main.Main;
import org.openjdk.tools.sjavac.Log;
import org.openjdk.tools.sjavac.server.Sjavac;

public class PooledSjavac implements Sjavac {
    final Sjavac delegate;
    final ExecutorService pool;

    public PooledSjavac(Sjavac sjavac, int i10) {
        Objects.requireNonNull(sjavac);
        this.delegate = sjavac;
        this.pool = Executors.newFixedThreadPool(i10);
    }

    public Main.Result lambda$compile$0(Log log, String[] strArr) throws Exception {
        Log.setLogForCurrentThread(log);
        return this.delegate.compile(strArr);
    }

    @Override
    public Main.Result compile(final String[] strArr) {
        final Log log = Log.get();
        try {
            return (Main.Result) this.pool.submit(new Callable() {
                @Override
                public final Object call() {
                    Main.Result lambda$compile$0;
                    lambda$compile$0 = PooledSjavac.this.lambda$compile$0(log, strArr);
                    return lambda$compile$0;
                }
            }).get();
        } catch (Exception e10) {
            e10.printStackTrace();
            throw new RuntimeException("Error during compile", e10);
        }
    }

    @Override
    public void shutdown() {
        Log.debug("Shutting down PooledSjavac");
        this.pool.shutdown();
        try {
            ExecutorService executorService = this.pool;
            TimeUnit timeUnit = TimeUnit.SECONDS;
            if (!executorService.awaitTermination(60L, timeUnit)) {
                this.pool.shutdownNow();
                if (!this.pool.awaitTermination(60L, timeUnit)) {
                    Log.error("ThreadPool did not terminate");
                }
            }
        } catch (InterruptedException unused) {
            this.pool.shutdownNow();
            Thread.currentThread().interrupt();
        }
        this.delegate.shutdown();
    }
}
