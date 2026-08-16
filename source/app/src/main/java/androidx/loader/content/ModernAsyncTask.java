package androidx.loader.content;

import android.os.Binder;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import android.util.Log;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicBoolean;

abstract class ModernAsyncTask<Result> {
    private static final String LOG_TAG = "AsyncTask";
    private static Handler sHandler;
    private volatile Status mStatus = Status.PENDING;
    final AtomicBoolean mCancelled = new AtomicBoolean();
    final AtomicBoolean mTaskInvoked = new AtomicBoolean();
    private final FutureTask<Result> mFuture = new FutureTask<Result>(new Callable<Result>() {
        @Override
        public Result call() {
            ModernAsyncTask.this.mTaskInvoked.set(true);
            Result result = null;
            try {
                Process.setThreadPriority(10);
                result = (Result) ModernAsyncTask.this.doInBackground();
                Binder.flushPendingCommands();
                return result;
            } finally {
            }
        }
    }) {
        @Override
        public void done() {
            try {
                ModernAsyncTask.this.postResultIfNotInvoked(get());
            } catch (InterruptedException e10) {
                Log.w(ModernAsyncTask.LOG_TAG, e10);
            } catch (CancellationException unused) {
                ModernAsyncTask.this.postResultIfNotInvoked(null);
            } catch (ExecutionException e11) {
                throw new RuntimeException("An error occurred while executing doInBackground()", e11.getCause());
            } catch (Throwable th2) {
                throw new RuntimeException("An error occurred while executing doInBackground()", th2);
            }
        }
    };

    public static class AnonymousClass4 {
        static final int[] $SwitchMap$androidx$loader$content$ModernAsyncTask$Status;

        static {
            int[] iArr = new int[Status.values().length];
            $SwitchMap$androidx$loader$content$ModernAsyncTask$Status = iArr;
            try {
                iArr[Status.RUNNING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$androidx$loader$content$ModernAsyncTask$Status[Status.FINISHED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public enum Status {
        PENDING,
        RUNNING,
        FINISHED
    }

    private static Handler getHandler() {
        Handler handler;
        synchronized (ModernAsyncTask.class) {
            try {
                if (sHandler == null) {
                    sHandler = new Handler(Looper.getMainLooper());
                }
                handler = sHandler;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return handler;
    }

    public final boolean cancel(boolean z10) {
        this.mCancelled.set(true);
        return this.mFuture.cancel(z10);
    }

    public abstract Result doInBackground();

    public final void executeOnExecutor(Executor executor) {
        if (this.mStatus == Status.PENDING) {
            this.mStatus = Status.RUNNING;
            executor.execute(this.mFuture);
            return;
        }
        int i10 = AnonymousClass4.$SwitchMap$androidx$loader$content$ModernAsyncTask$Status[this.mStatus.ordinal()];
        if (i10 == 1) {
            throw new IllegalStateException("Cannot execute task: the task is already running.");
        }
        if (i10 == 2) {
            throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
        }
        throw new IllegalStateException("We should never reach this state");
    }

    public void finish(Result result) {
        if (isCancelled()) {
            onCancelled(result);
        } else {
            onPostExecute(result);
        }
        this.mStatus = Status.FINISHED;
    }

    public final boolean isCancelled() {
        return this.mCancelled.get();
    }

    public void onCancelled(Result result) {
    }

    public void onPostExecute(Result result) {
    }

    public void postResult(final Result result) {
        getHandler().post(new Runnable() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public void run() {
                ModernAsyncTask.this.finish(result);
            }
        });
    }

    public void postResultIfNotInvoked(Result result) {
        if (this.mTaskInvoked.get()) {
            return;
        }
        postResult(result);
    }
}
