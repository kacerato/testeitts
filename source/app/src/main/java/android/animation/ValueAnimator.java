package android.animation;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/animation/ValueAnimator.class
 */
public class ValueAnimator extends Animator {
    public static final int INFINITE = -1;
    public static final int RESTART = 1;
    public static final int REVERSE = 2;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/animation/ValueAnimator$AnimatorUpdateListener.class
 */
    public interface AnimatorUpdateListener {
        void onAnimationUpdate(ValueAnimator valueAnimator);
    }

    public ValueAnimator() {
        throw new RuntimeException("Stub!");
    }

    public static boolean areAnimatorsEnabled() {
        throw new RuntimeException("Stub!");
    }

    public static ValueAnimator ofInt(int... values) {
        throw new RuntimeException("Stub!");
    }

    public static ValueAnimator ofArgb(int... values) {
        throw new RuntimeException("Stub!");
    }

    public static ValueAnimator ofFloat(float... values) {
        throw new RuntimeException("Stub!");
    }

    public static ValueAnimator ofPropertyValuesHolder(PropertyValuesHolder... values) {
        throw new RuntimeException("Stub!");
    }

    public static ValueAnimator ofObject(TypeEvaluator evaluator, Object... values) {
        throw new RuntimeException("Stub!");
    }

    public void setIntValues(int... values) {
        throw new RuntimeException("Stub!");
    }

    public void setFloatValues(float... values) {
        throw new RuntimeException("Stub!");
    }

    public void setObjectValues(Object... values) {
        throw new RuntimeException("Stub!");
    }

    public void setValues(PropertyValuesHolder... values) {
        throw new RuntimeException("Stub!");
    }

    public PropertyValuesHolder[] getValues() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ValueAnimator setDuration(long duration) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public long getDuration() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public long getTotalDuration() {
        throw new RuntimeException("Stub!");
    }

    public void setCurrentPlayTime(long playTime) {
        throw new RuntimeException("Stub!");
    }

    public void setCurrentFraction(float fraction) {
        throw new RuntimeException("Stub!");
    }

    public long getCurrentPlayTime() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public long getStartDelay() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setStartDelay(long startDelay) {
        throw new RuntimeException("Stub!");
    }

    public static long getFrameDelay() {
        throw new RuntimeException("Stub!");
    }

    public static void setFrameDelay(long frameDelay) {
        throw new RuntimeException("Stub!");
    }

    public Object getAnimatedValue() {
        throw new RuntimeException("Stub!");
    }

    public Object getAnimatedValue(String propertyName) {
        throw new RuntimeException("Stub!");
    }

    public void setRepeatCount(int value) {
        throw new RuntimeException("Stub!");
    }

    public int getRepeatCount() {
        throw new RuntimeException("Stub!");
    }

    public void setRepeatMode(int value) {
        throw new RuntimeException("Stub!");
    }

    public int getRepeatMode() {
        throw new RuntimeException("Stub!");
    }

    public void addUpdateListener(AnimatorUpdateListener listener) {
        throw new RuntimeException("Stub!");
    }

    public void removeAllUpdateListeners() {
        throw new RuntimeException("Stub!");
    }

    public void removeUpdateListener(AnimatorUpdateListener listener) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setInterpolator(TimeInterpolator value) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public TimeInterpolator getInterpolator() {
        throw new RuntimeException("Stub!");
    }

    public void setEvaluator(TypeEvaluator value) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void start() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void cancel() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void end() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void resume() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void pause() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean isRunning() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean isStarted() {
        throw new RuntimeException("Stub!");
    }

    public void reverse() {
        throw new RuntimeException("Stub!");
    }

    public float getAnimatedFraction() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ValueAnimator mo82clone() {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }
}
