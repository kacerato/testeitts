package android.transition;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.transition.Transition;
import android.util.AttributeSet;
import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/transition/TransitionSet.class
 */
public class TransitionSet extends Transition {
    public static final int ORDERING_SEQUENTIAL = 1;
    public static final int ORDERING_TOGETHER = 0;

    public TransitionSet() {
        throw new RuntimeException("Stub!");
    }

    public TransitionSet(Context context, AttributeSet attrs) {
        throw new RuntimeException("Stub!");
    }

    public TransitionSet setOrdering(int ordering) {
        throw new RuntimeException("Stub!");
    }

    public int getOrdering() {
        throw new RuntimeException("Stub!");
    }

    public TransitionSet addTransition(Transition transition) {
        throw new RuntimeException("Stub!");
    }

    public int getTransitionCount() {
        throw new RuntimeException("Stub!");
    }

    public Transition getTransitionAt(int index) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public TransitionSet setDuration(long duration) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public TransitionSet setStartDelay(long startDelay) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public TransitionSet setInterpolator(TimeInterpolator interpolator) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public TransitionSet addTarget(View target) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public TransitionSet addTarget(int targetId) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public TransitionSet addTarget(String targetName) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public TransitionSet addTarget(Class targetType) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public TransitionSet addListener(Transition.TransitionListener listener) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public TransitionSet removeTarget(int targetId) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public TransitionSet removeTarget(View target) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public TransitionSet removeTarget(Class target) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public TransitionSet removeTarget(String target) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Transition excludeTarget(View target, boolean exclude) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Transition excludeTarget(String targetName, boolean exclude) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Transition excludeTarget(int targetId, boolean exclude) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Transition excludeTarget(Class type, boolean exclude) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public TransitionSet removeListener(Transition.TransitionListener listener) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setPathMotion(PathMotion pathMotion) {
        throw new RuntimeException("Stub!");
    }

    public TransitionSet removeTransition(Transition transition) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void captureStartValues(TransitionValues transitionValues) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void captureEndValues(TransitionValues transitionValues) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setPropagation(TransitionPropagation propagation) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setEpicenterCallback(Transition.EpicenterCallback epicenterCallback) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public TransitionSet mo586clone() {
        throw new RuntimeException("Stub!");
    }
}
