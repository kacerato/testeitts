package O9;

import Ic.C2630i;
import com.itsmagic.engine.Engines.Engine.Threading.ThreadAffinity;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class b {

    public static final Object f16570a = new Object();

    public static int f16571b;

    public static ExecutorService f16572c;

    public class a implements ThreadFactory {

        public int f16573b = 0;

        public class RunnableC0469a implements Runnable {

            public final int f16574b;

            public final Runnable f16575c;

            public RunnableC0469a(final int val$workerCoreIndex, final Runnable val$r) {
                this.f16574b = val$workerCoreIndex;
                this.f16575c = val$r;
            }

            @Override
            public void run() {
                ThreadAffinity.c(this.f16574b);
                this.f16575c.run();
            }
        }

        @Override
        public Thread newThread(Runnable r10) {
            int i10 = this.f16573b;
            Thread thread = new Thread(new RunnableC0469a(i10, r10));
            thread.setName("VCore-" + i10);
            thread.setPriority(10);
            this.f16573b = this.f16573b + 1;
            return thread;
        }
    }

    static {
        b(C2630i.a() - 2);
    }

    public static int a() {
        return f16571b;
    }

    public static void b(int mc2) {
        synchronized (f16570a) {
            f16571b = Nc.b.F(1, mc2, C2630i.a());
            int i10 = f16571b;
            f16572c = new ThreadPoolExecutor(i10, i10, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), new a());
        }
    }

    public static Future c(Callable runnable) {
        Future submit;
        synchronized (f16570a) {
            submit = f16572c.submit(runnable);
        }
        return submit;
    }

    public static void d(Runnable runnable) {
        synchronized (f16570a) {
            f16572c.execute(runnable);
        }
    }

    public static void e() {
        b(C2630i.a() - 2);
    }
}
