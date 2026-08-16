package android.transition;

import android.view.ViewGroup;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/transition/TransitionPropagation.class
 */
public abstract class TransitionPropagation {
    public abstract long getStartDelay(ViewGroup viewGroup, Transition transition, TransitionValues transitionValues, TransitionValues transitionValues2);

    public abstract void captureValues(TransitionValues transitionValues);

    public abstract String[] getPropagationProperties();

    public TransitionPropagation() {
        throw new RuntimeException("Stub!");
    }
}
