package android.animation;

import java.util.ArrayList;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/animation/Animator.class
 */
public abstract class Animator implements Cloneable {
    public static final long DURATION_INFINITE = -1;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/animation/Animator$AnimatorPauseListener.class
 */
    public interface AnimatorPauseListener {
        void onAnimationPause(Animator animator);

        void onAnimationResume(Animator animator);
    }

    public abstract long getStartDelay();

    public abstract void setStartDelay(long j10);

    public abstract Animator setDuration(long j10);

    public abstract long getDuration();

    public abstract void setInterpolator(TimeInterpolator timeInterpolator);

    public abstract boolean isRunning();

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/animation/Animator$AnimatorListener.class
 */
    public interface AnimatorListener {
        void onAnimationStart(Animator animator);

        void onAnimationEnd(Animator animator);

        void onAnimationCancel(Animator animator);

        void onAnimationRepeat(Animator animator);

        default void onAnimationStart(Animator animation, boolean isReverse) {
            throw new RuntimeException("Stub!");
        }

        default void onAnimationEnd(Animator animation, boolean isReverse) {
            throw new RuntimeException("Stub!");
        }
    }

    public Animator() {
        throw new RuntimeException("Stub!");
    }

    public void start() {
        throw new RuntimeException("Stub!");
    }

    public void cancel() {
        throw new RuntimeException("Stub!");
    }

    public void end() {
        throw new RuntimeException("Stub!");
    }

    public void pause() {
        throw new RuntimeException("Stub!");
    }

    public void resume() {
        throw new RuntimeException("Stub!");
    }

    public boolean isPaused() {
        throw new RuntimeException("Stub!");
    }

    public long getTotalDuration() {
        throw new RuntimeException("Stub!");
    }

    public TimeInterpolator getInterpolator() {
        throw new RuntimeException("Stub!");
    }

    public boolean isStarted() {
        throw new RuntimeException("Stub!");
    }

    public void addListener(AnimatorListener listener) {
        throw new RuntimeException("Stub!");
    }

    public void removeListener(AnimatorListener listener) {
        throw new RuntimeException("Stub!");
    }

    public ArrayList<AnimatorListener> getListeners() {
        throw new RuntimeException("Stub!");
    }

    public void addPauseListener(AnimatorPauseListener listener) {
        throw new RuntimeException("Stub!");
    }

    public void removePauseListener(AnimatorPauseListener listener) {
        throw new RuntimeException("Stub!");
    }

    public void removeAllListeners() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Animator mo82clone() {
        throw new RuntimeException("Stub!");
    }

    public void setupStartValues() {
        throw new RuntimeException("Stub!");
    }

    public void setupEndValues() {
        throw new RuntimeException("Stub!");
    }

    public void setTarget(Object target) {
        throw new RuntimeException("Stub!");
    }
}
