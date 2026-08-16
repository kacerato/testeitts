package java.util.concurrent;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/concurrent/Delayed.class
 */
public interface Delayed extends Comparable<Delayed> {
    long getDelay(TimeUnit timeUnit);
}
