package android.animation;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/animation/TimeAnimator.class
 */
public class TimeAnimator extends ValueAnimator {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/animation/TimeAnimator$TimeListener.class
 */
    public interface TimeListener {
        void onTimeUpdate(TimeAnimator timeAnimator, long j10, long j11);
    }

    public TimeAnimator() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void start() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setCurrentPlayTime(long playTime) {
        throw new RuntimeException("Stub!");
    }

    public void setTimeListener(TimeListener listener) {
        throw new RuntimeException("Stub!");
    }
}
