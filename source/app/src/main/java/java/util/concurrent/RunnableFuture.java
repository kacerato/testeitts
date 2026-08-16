package java.util.concurrent;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/concurrent/RunnableFuture.class
 */
public interface RunnableFuture<V> extends Runnable, Future<V> {
    @Override
    void run();
}
