package Se;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

public final class p {

    public static final String f23155a = "rx2.purge-enabled";

    public static final boolean f23156b;

    public static final String f23157c = "rx2.purge-period-seconds";

    public static final int f23158d;

    public static final AtomicReference<ScheduledExecutorService> f23159e = new AtomicReference<>();

    public static final Map<ScheduledThreadPoolExecutor, Object> f23160f = new ConcurrentHashMap();

    public static final class a {

        public boolean f23161a;

        public int f23162b;

        public void a(Properties properties) {
            if (properties.containsKey(p.f23155a)) {
                this.f23161a = Boolean.parseBoolean(properties.getProperty(p.f23155a));
            } else {
                this.f23161a = true;
            }
            if (!this.f23161a || !properties.containsKey(p.f23157c)) {
                this.f23162b = 1;
                return;
            }
            try {
                this.f23162b = Integer.parseInt(properties.getProperty(p.f23157c));
            } catch (NumberFormatException unused) {
                this.f23162b = 1;
            }
        }
    }

    public static final class b implements Runnable {
        @Override
        public void run() {
            Iterator it = new ArrayList(p.f23160f.o()).iterator();
            while (it.hasNext()) {
                ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = (ScheduledThreadPoolExecutor) it.next();
                if (scheduledThreadPoolExecutor.isShutdown()) {
                    p.f23160f.remove(scheduledThreadPoolExecutor);
                } else {
                    scheduledThreadPoolExecutor.purge();
                }
            }
        }
    }

    static {
        Properties properties = System.getProperties();
        a aVar = new a();
        aVar.a(properties);
        f23156b = aVar.f23161a;
        f23158d = aVar.f23162b;
        c();
    }

    public p() {
        throw new IllegalStateException("No instances!");
    }

    public static ScheduledExecutorService a(ThreadFactory threadFactory) {
        ScheduledExecutorService newScheduledThreadPool = Executors.newScheduledThreadPool(1, threadFactory);
        d(f23156b, newScheduledThreadPool);
        return newScheduledThreadPool;
    }

    public static void b() {
        ScheduledExecutorService andSet = f23159e.getAndSet(null);
        if (andSet != null) {
            andSet.shutdownNow();
        }
        f23160f.clear();
    }

    public static void c() {
        e(f23156b);
    }

    public static void d(boolean z10, ScheduledExecutorService scheduledExecutorService) {
        if (z10 && (scheduledExecutorService instanceof ScheduledThreadPoolExecutor)) {
            f23160f.put((ScheduledThreadPoolExecutor) scheduledExecutorService, scheduledExecutorService);
        }
    }

    public static void e(boolean z10) {
        if (!z10) {
            return;
        }
        while (true) {
            AtomicReference<ScheduledExecutorService> atomicReference = f23159e;
            ScheduledExecutorService scheduledExecutorService = atomicReference.get();
            if (scheduledExecutorService != null) {
                return;
            }
            ScheduledExecutorService newScheduledThreadPool = Executors.newScheduledThreadPool(1, new k("RxSchedulerPurge"));
            if (androidx.lifecycle.c.a(atomicReference, scheduledExecutorService, newScheduledThreadPool)) {
                b bVar = new b();
                int i10 = f23158d;
                newScheduledThreadPool.scheduleAtFixedRate(bVar, i10, i10, TimeUnit.SECONDS);
                return;
            }
            newScheduledThreadPool.shutdownNow();
        }
    }
}
