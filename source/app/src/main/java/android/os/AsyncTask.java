package android.os;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/os/AsyncTask.class
 */
public abstract class AsyncTask<Params, Progress, Result> {
    public static final Executor SERIAL_EXECUTOR = null;
    public static final Executor THREAD_POOL_EXECUTOR = null;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/os/AsyncTask$Status.class
 */
    public enum Status {
        FINISHED,
        PENDING,
        RUNNING
    }

    protected abstract Result doInBackground(Params... paramsArr);

    public AsyncTask() {
        throw new RuntimeException("Stub!");
    }

    public final Status getStatus() {
        throw new RuntimeException("Stub!");
    }

    protected void onPreExecute() {
        throw new RuntimeException("Stub!");
    }

    public void onPostExecute(Result result) {
        throw new RuntimeException("Stub!");
    }

    protected void onProgressUpdate(Progress... values) {
        throw new RuntimeException("Stub!");
    }

    protected void onCancelled(Result result) {
        throw new RuntimeException("Stub!");
    }

    protected void onCancelled() {
        throw new RuntimeException("Stub!");
    }

    public final boolean isCancelled() {
        throw new RuntimeException("Stub!");
    }

    public final boolean cancel(boolean mayInterruptIfRunning) {
        throw new RuntimeException("Stub!");
    }

    public final Result get() throws InterruptedException, ExecutionException {
        throw new RuntimeException("Stub!");
    }

    public final Result get(long timeout, TimeUnit unit) throws InterruptedException, ExecutionException, TimeoutException {
        throw new RuntimeException("Stub!");
    }

    public final AsyncTask<Params, Progress, Result> execute(Params... params) {
        throw new RuntimeException("Stub!");
    }

    public final AsyncTask<Params, Progress, Result> executeOnExecutor(Executor exec, Params... params) {
        throw new RuntimeException("Stub!");
    }

    public static void execute(Runnable runnable) {
        throw new RuntimeException("Stub!");
    }

    public final void publishProgress(Progress... values) {
        throw new RuntimeException("Stub!");
    }
}
