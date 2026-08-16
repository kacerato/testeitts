package android.os;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/os/CountDownTimer.class
 */
public abstract class CountDownTimer {
    public abstract void onTick(long j10);

    public abstract void onFinish();

    public CountDownTimer(long millisInFuture, long countDownInterval) {
        throw new RuntimeException("Stub!");
    }

    public final synchronized void cancel() {
        throw new RuntimeException("Stub!");
    }

    public final synchronized CountDownTimer start() {
        throw new RuntimeException("Stub!");
    }
}
