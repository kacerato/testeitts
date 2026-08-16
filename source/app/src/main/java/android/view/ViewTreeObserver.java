package android.view;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/ViewTreeObserver.class
 */
public final class ViewTreeObserver {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/ViewTreeObserver$OnDrawListener.class
 */
    public interface OnDrawListener {
        void onDraw();
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/ViewTreeObserver$OnGlobalFocusChangeListener.class
 */
    public interface OnGlobalFocusChangeListener {
        void onGlobalFocusChanged(View view, View view2);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/ViewTreeObserver$OnGlobalLayoutListener.class
 */
    public interface OnGlobalLayoutListener {
        void onGlobalLayout();
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/ViewTreeObserver$OnPreDrawListener.class
 */
    public interface OnPreDrawListener {
        boolean onPreDraw();
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/ViewTreeObserver$OnScrollChangedListener.class
 */
    public interface OnScrollChangedListener {
        void onScrollChanged();
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/ViewTreeObserver$OnTouchModeChangeListener.class
 */
    public interface OnTouchModeChangeListener {
        void onTouchModeChanged(boolean z10);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/ViewTreeObserver$OnWindowAttachListener.class
 */
    public interface OnWindowAttachListener {
        void onWindowAttached();

        void onWindowDetached();
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/ViewTreeObserver$OnWindowFocusChangeListener.class
 */
    public interface OnWindowFocusChangeListener {
        void onWindowFocusChanged(boolean z10);
    }

    ViewTreeObserver() {
        throw new RuntimeException("Stub!");
    }

    public void addOnWindowAttachListener(OnWindowAttachListener listener) {
        throw new RuntimeException("Stub!");
    }

    public void removeOnWindowAttachListener(OnWindowAttachListener victim) {
        throw new RuntimeException("Stub!");
    }

    public void addOnWindowFocusChangeListener(OnWindowFocusChangeListener listener) {
        throw new RuntimeException("Stub!");
    }

    public void removeOnWindowFocusChangeListener(OnWindowFocusChangeListener victim) {
        throw new RuntimeException("Stub!");
    }

    public void addOnGlobalFocusChangeListener(OnGlobalFocusChangeListener listener) {
        throw new RuntimeException("Stub!");
    }

    public void removeOnGlobalFocusChangeListener(OnGlobalFocusChangeListener victim) {
        throw new RuntimeException("Stub!");
    }

    public void addOnGlobalLayoutListener(OnGlobalLayoutListener listener) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void removeGlobalOnLayoutListener(OnGlobalLayoutListener victim) {
        throw new RuntimeException("Stub!");
    }

    public void removeOnGlobalLayoutListener(OnGlobalLayoutListener victim) {
        throw new RuntimeException("Stub!");
    }

    public void addOnPreDrawListener(OnPreDrawListener listener) {
        throw new RuntimeException("Stub!");
    }

    public void removeOnPreDrawListener(OnPreDrawListener victim) {
        throw new RuntimeException("Stub!");
    }

    public void addOnDrawListener(OnDrawListener listener) {
        throw new RuntimeException("Stub!");
    }

    public void removeOnDrawListener(OnDrawListener victim) {
        throw new RuntimeException("Stub!");
    }

    public void addOnScrollChangedListener(OnScrollChangedListener listener) {
        throw new RuntimeException("Stub!");
    }

    public void removeOnScrollChangedListener(OnScrollChangedListener victim) {
        throw new RuntimeException("Stub!");
    }

    public void addOnTouchModeChangeListener(OnTouchModeChangeListener listener) {
        throw new RuntimeException("Stub!");
    }

    public void removeOnTouchModeChangeListener(OnTouchModeChangeListener victim) {
        throw new RuntimeException("Stub!");
    }

    public boolean isAlive() {
        throw new RuntimeException("Stub!");
    }

    public final void dispatchOnGlobalLayout() {
        throw new RuntimeException("Stub!");
    }

    public final boolean dispatchOnPreDraw() {
        throw new RuntimeException("Stub!");
    }

    public final void dispatchOnDraw() {
        throw new RuntimeException("Stub!");
    }
}
