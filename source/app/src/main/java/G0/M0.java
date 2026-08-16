package G0;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class M0 {

    public static final ExecutorService f7304a;

    static {
        h1.u.a();
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new U0.b("CallbackExecutor"));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        f7304a = Executors.unconfigurableExecutorService(threadPoolExecutor);
    }
}
