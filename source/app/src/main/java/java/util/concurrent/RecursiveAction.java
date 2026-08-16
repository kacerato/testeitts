package java.util.concurrent;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/concurrent/RecursiveAction.class
 */
public abstract class RecursiveAction extends ForkJoinTask<Void> {
    protected abstract void compute();

    public RecursiveAction() {
        throw new RuntimeException("Stub!");
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public final Void getRawResult() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final void setRawResult(Void mustBeNull) {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected final boolean exec() {
        throw new RuntimeException("Stub!");
    }
}
