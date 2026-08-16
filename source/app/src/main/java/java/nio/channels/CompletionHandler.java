package java.nio.channels;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/nio/channels/CompletionHandler.class
 */
public interface CompletionHandler<V, A> {
    void completed(V v10, A a10);

    void failed(Throwable th2, A a10);
}
