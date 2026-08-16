package java.util.concurrent.locks;

import java.util.Date;
import java.util.concurrent.TimeUnit;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/concurrent/locks/Condition.class
 */
public interface Condition {
    void await() throws InterruptedException;

    void awaitUninterruptibly();

    long awaitNanos(long j10) throws InterruptedException;

    boolean await(long j10, TimeUnit timeUnit) throws InterruptedException;

    boolean awaitUntil(Date date) throws InterruptedException;

    void signal();

    void signalAll();
}
