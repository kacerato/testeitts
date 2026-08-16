package U2;

import android.os.Process;
import android.os.StrictMode;
import java.util.Locale;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;
import javax.annotation.Nullable;

public class ThreadFactoryC3099b implements ThreadFactory {

    public static final ThreadFactory f25698f = Executors.defaultThreadFactory();

    public final AtomicLong f25699b = new AtomicLong();

    public final String f25700c;

    public final int f25701d;

    public final StrictMode.ThreadPolicy f25702e;

    public ThreadFactoryC3099b(String str, int i10, @Nullable StrictMode.ThreadPolicy threadPolicy) {
        this.f25700c = str;
        this.f25701d = i10;
        this.f25702e = threadPolicy;
    }

    public final void b(Runnable runnable) {
        Process.setThreadPriority(this.f25701d);
        StrictMode.ThreadPolicy threadPolicy = this.f25702e;
        if (threadPolicy != null) {
            StrictMode.setThreadPolicy(threadPolicy);
        }
        runnable.run();
    }

    @Override
    public Thread newThread(final Runnable runnable) {
        Thread newThread = f25698f.newThread(new Runnable() {
            @Override
            public final void run() {
                ThreadFactoryC3099b.this.b(runnable);
            }
        });
        newThread.setName(String.format(Locale.ROOT, "%s Thread #%d", this.f25700c, Long.valueOf(this.f25699b.getAndIncrement())));
        return newThread;
    }
}
