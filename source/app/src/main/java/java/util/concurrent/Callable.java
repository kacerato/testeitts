package java.util.concurrent;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/concurrent/Callable.class
 */
@FunctionalInterface
public interface Callable<V> {
    V call() throws Exception;
}
