package H;

import android.os.Process;
import android.os.StrictMode;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public final class a implements ExecutorService {

    public static final String f7923c = "source";

    public static final String f7924d = "disk-cache";

    public static final int f7925e = 1;

    public static final String f7926f = "GlideExecutor";

    public static final String f7927g = "source-unlimited";

    public static final String f7928h = "animation";

    public static final long f7929i = TimeUnit.SECONDS.toMillis(10);

    public static final int f7930j = 4;

    public static volatile int f7931k;

    public final ExecutorService f7932b;

    public static final class C0154a {

        public static final long f7933g = 0;

        public final boolean f7934a;

        public int f7935b;

        public int f7936c;

        @NonNull
        public c f7937d = c.f7949d;

        public String f7938e;

        public long f7939f;

        public C0154a(boolean z10) {
            this.f7934a = z10;
        }

        public a a() {
            if (TextUtils.isEmpty(this.f7938e)) {
                throw new IllegalArgumentException("Name must be non-null and non-empty, but given: " + this.f7938e);
            }
            ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(this.f7935b, this.f7936c, this.f7939f, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new b(this.f7938e, this.f7937d, this.f7934a));
            if (this.f7939f != 0) {
                threadPoolExecutor.allowCoreThreadTimeOut(true);
            }
            return new a(threadPoolExecutor);
        }

        public C0154a b(String str) {
            this.f7938e = str;
            return this;
        }

        public C0154a c(@IntRange(from = 1) int i10) {
            this.f7935b = i10;
            this.f7936c = i10;
            return this;
        }

        public C0154a d(long j10) {
            this.f7939f = j10;
            return this;
        }

        public C0154a e(@NonNull c cVar) {
            this.f7937d = cVar;
            return this;
        }
    }

    public static final class b implements ThreadFactory {

        public static final int f7940f = 9;

        public final String f7941b;

        public final c f7942c;

        public final boolean f7943d;

        public int f7944e;

        public class C0155a extends Thread {
            public C0155a(Runnable runnable, String str) {
                super(runnable, str);
            }

            @Override
            public void run() {
                Process.setThreadPriority(9);
                if (b.this.f7943d) {
                    StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().detectNetwork().penaltyDeath().build());
                }
                try {
                    super.run();
                } catch (Throwable th2) {
                    b.this.f7942c.a(th2);
                }
            }
        }

        public b(String str, c cVar, boolean z10) {
            this.f7941b = str;
            this.f7942c = cVar;
            this.f7943d = z10;
        }

        @Override
        public synchronized Thread newThread(@NonNull Runnable runnable) {
            C0155a c0155a;
            c0155a = new C0155a(runnable, "glide-" + this.f7941b + "-thread-" + this.f7944e);
            this.f7944e = this.f7944e + 1;
            return c0155a;
        }
    }

    public interface c {

        public static final c f7946a = new C0156a();

        public static final c f7947b;

        public static final c f7948c;

        public static final c f7949d;

        public class C0156a implements c {
            @Override
            public void a(Throwable th2) {
            }
        }

        public class b implements c {
            @Override
            public void a(Throwable th2) {
                if (th2 == null || !Log.isLoggable(a.f7926f, 6)) {
                    return;
                }
                Log.e(a.f7926f, "Request threw uncaught throwable", th2);
            }
        }

        public class C0157c implements c {
            @Override
            public void a(Throwable th2) {
                if (th2 != null) {
                    throw new RuntimeException("Request threw uncaught throwable", th2);
                }
            }
        }

        static {
            b bVar = new b();
            f7947b = bVar;
            f7948c = new C0157c();
            f7949d = bVar;
        }

        void a(Throwable th2);
    }

    @VisibleForTesting
    public a(ExecutorService executorService) {
        this.f7932b = executorService;
    }

    public static int c() {
        if (f7931k == 0) {
            f7931k = Math.min(4, H.b.a());
        }
        return f7931k;
    }

    public static C0154a d() {
        return new C0154a(true).c(c() >= 4 ? 2 : 1).b(f7928h);
    }

    public static a e() {
        return d().a();
    }

    @Deprecated
    public static a f(int i10, c cVar) {
        return d().c(i10).e(cVar).a();
    }

    public static C0154a g() {
        return new C0154a(true).c(1).b(f7924d);
    }

    public static a h() {
        return g().a();
    }

    @Deprecated
    public static a j(int i10, String str, c cVar) {
        return g().c(i10).b(str).e(cVar).a();
    }

    @Deprecated
    public static a k(c cVar) {
        return g().e(cVar).a();
    }

    public static C0154a l() {
        return new C0154a(false).c(c()).b("source");
    }

    public static a m() {
        return l().a();
    }

    @Deprecated
    public static a n(int i10, String str, c cVar) {
        return l().c(i10).b(str).e(cVar).a();
    }

    @Deprecated
    public static a o(c cVar) {
        return l().e(cVar).a();
    }

    public static a p() {
        return new a(new ThreadPoolExecutor(0, Integer.MAX_VALUE, f7929i, TimeUnit.MILLISECONDS, new SynchronousQueue(), new b(f7927g, c.f7949d, false)));
    }

    @Override
    public boolean awaitTermination(long j10, @NonNull TimeUnit timeUnit) throws InterruptedException {
        return this.f7932b.awaitTermination(j10, timeUnit);
    }

    @Override
    public void execute(@NonNull Runnable runnable) {
        this.f7932b.execute(runnable);
    }

    @Override
    @NonNull
    public <T> List<Future<T>> invokeAll(@NonNull Collection<? extends Callable<T>> collection) throws InterruptedException {
        return this.f7932b.invokeAll(collection);
    }

    @Override
    @NonNull
    public <T> T invokeAny(@NonNull Collection<? extends Callable<T>> collection) throws InterruptedException, ExecutionException {
        return (T) this.f7932b.invokeAny(collection);
    }

    @Override
    public boolean isShutdown() {
        return this.f7932b.isShutdown();
    }

    @Override
    public boolean isTerminated() {
        return this.f7932b.isTerminated();
    }

    @Override
    public void shutdown() {
        this.f7932b.shutdown();
    }

    @Override
    @NonNull
    public List<Runnable> shutdownNow() {
        return this.f7932b.shutdownNow();
    }

    @Override
    @NonNull
    public Future<?> submit(@NonNull Runnable runnable) {
        return this.f7932b.submit(runnable);
    }

    public String toString() {
        return this.f7932b.toString();
    }

    @Override
    @NonNull
    public <T> List<Future<T>> invokeAll(@NonNull Collection<? extends Callable<T>> collection, long j10, @NonNull TimeUnit timeUnit) throws InterruptedException {
        return this.f7932b.invokeAll(collection, j10, timeUnit);
    }

    @Override
    public <T> T invokeAny(@NonNull Collection<? extends Callable<T>> collection, long j10, @NonNull TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return (T) this.f7932b.invokeAny(collection, j10, timeUnit);
    }

    @Override
    @NonNull
    public <T> Future<T> submit(@NonNull Runnable runnable, T t10) {
        return this.f7932b.submit(runnable, t10);
    }

    @Override
    public <T> Future<T> submit(@NonNull Callable<T> callable) {
        return this.f7932b.submit(callable);
    }
}
