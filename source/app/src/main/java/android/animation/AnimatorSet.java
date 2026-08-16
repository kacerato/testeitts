package android.animation;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/animation/AnimatorSet.class
 */
public final class AnimatorSet extends Animator {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/animation/AnimatorSet$Builder.class
 */
    public class Builder {
        Builder() {
            throw new RuntimeException("Stub!");
        }

        public Builder with(Animator anim) {
            throw new RuntimeException("Stub!");
        }

        public Builder before(Animator anim) {
            throw new RuntimeException("Stub!");
        }

        public Builder after(Animator anim) {
            throw new RuntimeException("Stub!");
        }

        public Builder after(long delay) {
            throw new RuntimeException("Stub!");
        }
    }

    public AnimatorSet() {
        throw new RuntimeException("Stub!");
    }

    public void playTogether(Animator... items) {
        throw new RuntimeException("Stub!");
    }

    public void playTogether(Collection<Animator> items) {
        throw new RuntimeException("Stub!");
    }

    public void playSequentially(Animator... items) {
        throw new RuntimeException("Stub!");
    }

    public void playSequentially(List<Animator> items) {
        throw new RuntimeException("Stub!");
    }

    public ArrayList<Animator> getChildAnimations() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setTarget(Object target) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setInterpolator(TimeInterpolator interpolator) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public TimeInterpolator getInterpolator() {
        throw new RuntimeException("Stub!");
    }

    public Builder play(Animator anim) {
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
    public boolean isRunning() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean isStarted() {
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

    @Override
    public long getDuration() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public AnimatorSet setDuration(long duration) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setupStartValues() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setupEndValues() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void pause() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void resume() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void start() {
        throw new RuntimeException("Stub!");
    }

    public void setCurrentPlayTime(long playTime) {
        throw new RuntimeException("Stub!");
    }

    public long getCurrentPlayTime() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public AnimatorSet mo82clone() {
        throw new RuntimeException("Stub!");
    }

    public void reverse() {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public long getTotalDuration() {
        throw new RuntimeException("Stub!");
    }
}
