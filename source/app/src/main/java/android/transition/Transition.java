package android.transition;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/transition/Transition.class
 */
public abstract class Transition implements Cloneable {
    public static final int MATCH_ID = 3;
    public static final int MATCH_INSTANCE = 1;
    public static final int MATCH_ITEM_ID = 4;
    public static final int MATCH_NAME = 2;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/transition/Transition$TransitionListener.class
 */
    public interface TransitionListener {
        void onTransitionStart(Transition transition);

        void onTransitionEnd(Transition transition);

        void onTransitionCancel(Transition transition);

        void onTransitionPause(Transition transition);

        void onTransitionResume(Transition transition);
    }

    public abstract void captureStartValues(TransitionValues transitionValues);

    public abstract void captureEndValues(TransitionValues transitionValues);

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/transition/Transition$EpicenterCallback.class
 */
    public static abstract class EpicenterCallback {
        public abstract Rect onGetEpicenter(Transition transition);

        public EpicenterCallback() {
            throw new RuntimeException("Stub!");
        }
    }

    public Transition() {
        throw new RuntimeException("Stub!");
    }

    public Transition(Context context, AttributeSet attrs) {
        throw new RuntimeException("Stub!");
    }

    public Transition setDuration(long duration) {
        throw new RuntimeException("Stub!");
    }

    public long getDuration() {
        throw new RuntimeException("Stub!");
    }

    public Transition setStartDelay(long startDelay) {
        throw new RuntimeException("Stub!");
    }

    public long getStartDelay() {
        throw new RuntimeException("Stub!");
    }

    public Transition setInterpolator(TimeInterpolator interpolator) {
        throw new RuntimeException("Stub!");
    }

    public TimeInterpolator getInterpolator() {
        throw new RuntimeException("Stub!");
    }

    public String[] getTransitionProperties() {
        throw new RuntimeException("Stub!");
    }

    public Animator createAnimator(ViewGroup sceneRoot, TransitionValues startValues, TransitionValues endValues) {
        throw new RuntimeException("Stub!");
    }

    public void setMatchOrder(int... matches) {
        throw new RuntimeException("Stub!");
    }

    public Transition addTarget(int targetId) {
        throw new RuntimeException("Stub!");
    }

    public Transition addTarget(String targetName) {
        throw new RuntimeException("Stub!");
    }

    public Transition addTarget(Class targetType) {
        throw new RuntimeException("Stub!");
    }

    public Transition removeTarget(int targetId) {
        throw new RuntimeException("Stub!");
    }

    public Transition removeTarget(String targetName) {
        throw new RuntimeException("Stub!");
    }

    public Transition excludeTarget(int targetId, boolean exclude) {
        throw new RuntimeException("Stub!");
    }

    public Transition excludeTarget(String targetName, boolean exclude) {
        throw new RuntimeException("Stub!");
    }

    public Transition excludeChildren(int targetId, boolean exclude) {
        throw new RuntimeException("Stub!");
    }

    public Transition excludeTarget(View target, boolean exclude) {
        throw new RuntimeException("Stub!");
    }

    public Transition excludeChildren(View target, boolean exclude) {
        throw new RuntimeException("Stub!");
    }

    public Transition excludeTarget(Class type, boolean exclude) {
        throw new RuntimeException("Stub!");
    }

    public Transition excludeChildren(Class type, boolean exclude) {
        throw new RuntimeException("Stub!");
    }

    public Transition addTarget(View target) {
        throw new RuntimeException("Stub!");
    }

    public Transition removeTarget(View target) {
        throw new RuntimeException("Stub!");
    }

    public Transition removeTarget(Class target) {
        throw new RuntimeException("Stub!");
    }

    public List<Integer> getTargetIds() {
        throw new RuntimeException("Stub!");
    }

    public List<View> getTargets() {
        throw new RuntimeException("Stub!");
    }

    public List<String> getTargetNames() {
        throw new RuntimeException("Stub!");
    }

    public List<Class> getTargetTypes() {
        throw new RuntimeException("Stub!");
    }

    public TransitionValues getTransitionValues(View view, boolean start) {
        throw new RuntimeException("Stub!");
    }

    public boolean isTransitionRequired(TransitionValues startValues, TransitionValues endValues) {
        throw new RuntimeException("Stub!");
    }

    public Transition addListener(TransitionListener listener) {
        throw new RuntimeException("Stub!");
    }

    public Transition removeListener(TransitionListener listener) {
        throw new RuntimeException("Stub!");
    }

    public void setEpicenterCallback(EpicenterCallback epicenterCallback) {
        throw new RuntimeException("Stub!");
    }

    public EpicenterCallback getEpicenterCallback() {
        throw new RuntimeException("Stub!");
    }

    public Rect getEpicenter() {
        throw new RuntimeException("Stub!");
    }

    public void setPathMotion(PathMotion pathMotion) {
        throw new RuntimeException("Stub!");
    }

    public PathMotion getPathMotion() {
        throw new RuntimeException("Stub!");
    }

    public void setPropagation(TransitionPropagation transitionPropagation) {
        throw new RuntimeException("Stub!");
    }

    public TransitionPropagation getPropagation() {
        throw new RuntimeException("Stub!");
    }

    public boolean canRemoveViews() {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Transition mo586clone() {
        throw new RuntimeException("Stub!");
    }

    public String getName() {
        throw new RuntimeException("Stub!");
    }
}
