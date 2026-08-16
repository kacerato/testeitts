package java.util.concurrent;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/concurrent/CountedCompleter.class
 */
public abstract class CountedCompleter<T> extends ForkJoinTask<T> {
    public abstract void compute();

    protected CountedCompleter(CountedCompleter<?> completer, int initialPendingCount) {
        throw new RuntimeException("Stub!");
    }

    protected CountedCompleter(CountedCompleter<?> completer) {
        throw new RuntimeException("Stub!");
    }

    protected CountedCompleter() {
        throw new RuntimeException("Stub!");
    }

    public void onCompletion(CountedCompleter<?> caller) {
        throw new RuntimeException("Stub!");
    }

    public boolean onExceptionalCompletion(Throwable ex, CountedCompleter<?> caller) {
        throw new RuntimeException("Stub!");
    }

    public final CountedCompleter<?> getCompleter() {
        throw new RuntimeException("Stub!");
    }

    public final int getPendingCount() {
        throw new RuntimeException("Stub!");
    }

    public final void setPendingCount(int count) {
        throw new RuntimeException("Stub!");
    }

    public final void addToPendingCount(int delta) {
        throw new RuntimeException("Stub!");
    }

    public final boolean compareAndSetPendingCount(int expected, int count) {
        throw new RuntimeException("Stub!");
    }

    public final int decrementPendingCountUnlessZero() {
        throw new RuntimeException("Stub!");
    }

    public final CountedCompleter<?> getRoot() {
        throw new RuntimeException("Stub!");
    }

    public final void tryComplete() {
        throw new RuntimeException("Stub!");
    }

    public final void propagateCompletion() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void complete(T rawResult) {
        throw new RuntimeException("Stub!");
    }

    public final CountedCompleter<?> firstComplete() {
        throw new RuntimeException("Stub!");
    }

    public final CountedCompleter<?> nextComplete() {
        throw new RuntimeException("Stub!");
    }

    public final void quietlyCompleteRoot() {
        throw new RuntimeException("Stub!");
    }

    public final void helpComplete(int maxTasks) {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected final boolean exec() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public T getRawResult() {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected void setRawResult(T t10) {
        throw new RuntimeException("Stub!");
    }
}
