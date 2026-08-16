package java.util.concurrent.locks;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/concurrent/locks/ReadWriteLock.class
 */
public interface ReadWriteLock {
    Lock readLock();

    Lock writeLock();
}
