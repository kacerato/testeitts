package androidx.core.provider;

import android.os.Handler;
import android.os.Process;
import androidx.core.util.Consumer;
import androidx.core.util.Preconditions;
import com.tonyodev.fetch2core.FetchErrorStrings;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public class RequestExecutor {

    public static class DefaultThreadFactory implements ThreadFactory {
        private int mPriority;
        private String mThreadName;

        public static class ProcessPriorityThread extends Thread {
            private final int mPriority;

            public ProcessPriorityThread(Runnable runnable, String str, int i10) {
                super(runnable, str);
                this.mPriority = i10;
            }

            @Override
            public void run() {
                Process.setThreadPriority(this.mPriority);
                super.run();
            }
        }

        public DefaultThreadFactory(String str, int i10) {
            this.mThreadName = str;
            this.mPriority = i10;
        }

        @Override
        public Thread newThread(Runnable runnable) {
            return new ProcessPriorityThread(runnable, this.mThreadName, this.mPriority);
        }
    }

    public static class HandlerExecutor implements Executor {
        private final Handler mHandler;

        public HandlerExecutor(Handler handler) {
            this.mHandler = (Handler) Preconditions.checkNotNull(handler);
        }

        @Override
        public void execute(Runnable runnable) {
            if (this.mHandler.post((Runnable) Preconditions.checkNotNull(runnable))) {
                return;
            }
            throw new RejectedExecutionException(((Object) this.mHandler) + " is shutting down");
        }
    }

    public static class ReplyRunnable<T> implements Runnable {
        private Callable<T> mCallable;
        private Consumer<T> mConsumer;
        private Handler mHandler;

        public ReplyRunnable(Handler handler, Callable<T> callable, Consumer<T> consumer) {
            this.mCallable = callable;
            this.mConsumer = consumer;
            this.mHandler = handler;
        }

        @Override
        public void run() {
            final T t10;
            try {
                t10 = this.mCallable.call();
            } catch (Exception unused) {
                t10 = null;
            }
            final Consumer<T> consumer = this.mConsumer;
            this.mHandler.post(new Runnable() {
                /* JADX WARN: Multi-variable type inference failed */
                @Override
                public void run() {
                    consumer.accept(t10);
                }
            });
        }
    }

    private RequestExecutor() {
    }

    public static ThreadPoolExecutor createDefaultExecutor(String str, int i10, int i11) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, i11, TimeUnit.MILLISECONDS, new LinkedBlockingDeque(), new DefaultThreadFactory(str, i10));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return threadPoolExecutor;
    }

    public static Executor createHandlerExecutor(Handler handler) {
        return new HandlerExecutor(handler);
    }

    public static <T> void execute(Executor executor, Callable<T> callable, Consumer<T> consumer) {
        executor.execute(new ReplyRunnable(CalleeHandler.create(), callable, consumer));
    }

    public static <T> T submit(ExecutorService executorService, Callable<T> callable, int i10) throws InterruptedException {
        try {
            return executorService.submit(callable).get(i10, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e10) {
            throw e10;
        } catch (ExecutionException e11) {
            throw new RuntimeException(e11);
        } catch (TimeoutException unused) {
            throw new InterruptedException(FetchErrorStrings.CONNECTION_TIMEOUT);
        }
    }
}
