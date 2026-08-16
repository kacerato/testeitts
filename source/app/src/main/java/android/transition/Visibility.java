package android.transition;

import android.animation.Animator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/transition/Visibility.class
 */
public abstract class Visibility extends Transition {
    public static final int MODE_IN = 1;
    public static final int MODE_OUT = 2;

    public Visibility() {
        throw new RuntimeException("Stub!");
    }

    public Visibility(Context context, AttributeSet attrs) {
        throw new RuntimeException("Stub!");
    }

    public void setMode(int mode) {
        throw new RuntimeException("Stub!");
    }

    public int getMode() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String[] getTransitionProperties() {
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

    public boolean isVisible(TransitionValues values) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Animator createAnimator(ViewGroup sceneRoot, TransitionValues startValues, TransitionValues endValues) {
        throw new RuntimeException("Stub!");
    }

    public Animator onAppear(ViewGroup sceneRoot, TransitionValues startValues, int startVisibility, TransitionValues endValues, int endVisibility) {
        throw new RuntimeException("Stub!");
    }

    public Animator onAppear(ViewGroup sceneRoot, View view, TransitionValues startValues, TransitionValues endValues) {
        throw new RuntimeException("Stub!");
    }

    public Animator onDisappear(ViewGroup sceneRoot, TransitionValues startValues, int startVisibility, TransitionValues endValues, int endVisibility) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean isTransitionRequired(TransitionValues startValues, TransitionValues newValues) {
        throw new RuntimeException("Stub!");
    }

    public Animator onDisappear(ViewGroup sceneRoot, View view, TransitionValues startValues, TransitionValues endValues) {
        throw new RuntimeException("Stub!");
    }
}
