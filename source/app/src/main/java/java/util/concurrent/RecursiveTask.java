package java.util.concurrent;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/concurrent/RecursiveTask.class
 */
public abstract class RecursiveTask<V> extends ForkJoinTask<V> {
    protected abstract V compute();

    public RecursiveTask() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final V getRawResult() {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected final void setRawResult(V value) {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected final boolean exec() {
        throw new RuntimeException("Stub!");
    }
}
