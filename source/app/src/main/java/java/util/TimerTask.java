package java.util;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/TimerTask.class
 */
public abstract class TimerTask implements Runnable {
    @Override
    public abstract void run();

    public TimerTask() {
        throw new RuntimeException("Stub!");
    }

    public boolean cancel() {
        throw new RuntimeException("Stub!");
    }

    public long scheduledExecutionTime() {
        throw new RuntimeException("Stub!");
    }
}
