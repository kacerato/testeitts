package android.graphics.drawable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/graphics/drawable/Animatable2.class
 */
public interface Animatable2 extends Animatable {
    void registerAnimationCallback(AnimationCallback animationCallback);

    boolean unregisterAnimationCallback(AnimationCallback animationCallback);

    void clearAnimationCallbacks();

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/graphics/drawable/Animatable2$AnimationCallback.class
 */
    public static abstract class AnimationCallback {
        public AnimationCallback() {
            throw new RuntimeException("Stub!");
        }

        public void onAnimationStart(Drawable drawable) {
            throw new RuntimeException("Stub!");
        }

        public void onAnimationEnd(Drawable drawable) {
            throw new RuntimeException("Stub!");
        }
    }
}
