package android.view;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.media.session.MediaController;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.transition.Scene;
import android.transition.Transition;
import android.transition.TransitionManager;
import android.view.ActionMode;
import android.view.InputQueue;
import android.view.SurfaceHolder;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/Window.class
 */
public abstract class Window {
    public static final int DECOR_CAPTION_SHADE_AUTO = 0;
    public static final int DECOR_CAPTION_SHADE_DARK = 2;
    public static final int DECOR_CAPTION_SHADE_LIGHT = 1;

    @Deprecated
    protected static final int DEFAULT_FEATURES = 65;
    public static final int FEATURE_ACTION_BAR = 8;
    public static final int FEATURE_ACTION_BAR_OVERLAY = 9;
    public static final int FEATURE_ACTION_MODE_OVERLAY = 10;
    public static final int FEATURE_ACTIVITY_TRANSITIONS = 13;
    public static final int FEATURE_CONTENT_TRANSITIONS = 12;
    public static final int FEATURE_CONTEXT_MENU = 6;
    public static final int FEATURE_CUSTOM_TITLE = 7;

    @Deprecated
    public static final int FEATURE_INDETERMINATE_PROGRESS = 5;
    public static final int FEATURE_LEFT_ICON = 3;
    public static final int FEATURE_NO_TITLE = 1;
    public static final int FEATURE_OPTIONS_PANEL = 0;

    @Deprecated
    public static final int FEATURE_PROGRESS = 2;
    public static final int FEATURE_RIGHT_ICON = 4;
    public static final int FEATURE_SWIPE_TO_DISMISS = 11;
    public static final int ID_ANDROID_CONTENT = 16908290;
    public static final String NAVIGATION_BAR_BACKGROUND_TRANSITION_NAME = "android:navigation:background";

    @Deprecated
    public static final int PROGRESS_END = 10000;

    @Deprecated
    public static final int PROGRESS_INDETERMINATE_OFF = -4;

    @Deprecated
    public static final int PROGRESS_INDETERMINATE_ON = -3;

    @Deprecated
    public static final int PROGRESS_SECONDARY_END = 30000;

    @Deprecated
    public static final int PROGRESS_SECONDARY_START = 20000;

    @Deprecated
    public static final int PROGRESS_START = 0;

    @Deprecated
    public static final int PROGRESS_VISIBILITY_OFF = -2;

    @Deprecated
    public static final int PROGRESS_VISIBILITY_ON = -1;
    public static final String STATUS_BAR_BACKGROUND_TRANSITION_NAME = "android:status:background";

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/Window$OnFrameMetricsAvailableListener.class
 */
    public interface OnFrameMetricsAvailableListener {
        void onFrameMetricsAvailable(Window window, FrameMetrics frameMetrics, int i10);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/Window$OnRestrictedCaptionAreaChangedListener.class
 */
    public interface OnRestrictedCaptionAreaChangedListener {
        void onRestrictedCaptionAreaChanged(Rect rect);
    }

    public abstract void takeSurface(SurfaceHolder.Callback2 callback2);

    public abstract void takeInputQueue(InputQueue.Callback callback);

    public abstract boolean isFloating();

    public abstract void setContentView(int i10);

    public abstract void setContentView(View view);

    public abstract void setContentView(View view, ViewGroup.LayoutParams layoutParams);

    public abstract void addContentView(View view, ViewGroup.LayoutParams layoutParams);

    public abstract View getCurrentFocus();

    public abstract LayoutInflater getLayoutInflater();

    public abstract void setTitle(CharSequence charSequence);

    @Deprecated
    public abstract void setTitleColor(int i10);

    public abstract void openPanel(int i10, KeyEvent keyEvent);

    public abstract void closePanel(int i10);

    public abstract void togglePanel(int i10, KeyEvent keyEvent);

    public abstract void invalidatePanelMenu(int i10);

    public abstract boolean performPanelShortcut(int i10, int i11, KeyEvent keyEvent, int i12);

    public abstract boolean performPanelIdentifierAction(int i10, int i11, int i12);

    public abstract void closeAllPanels();

    public abstract boolean performContextMenuIdentifierAction(int i10, int i11);

    public abstract void onConfigurationChanged(Configuration configuration);

    public abstract void setBackgroundDrawable(Drawable drawable);

    public abstract void setFeatureDrawableResource(int i10, int i11);

    public abstract void setFeatureDrawableUri(int i10, Uri uri);

    public abstract void setFeatureDrawable(int i10, Drawable drawable);

    public abstract void setFeatureDrawableAlpha(int i10, int i11);

    public abstract void setFeatureInt(int i10, int i11);

    public abstract void takeKeyEvents(boolean z10);

    public abstract boolean superDispatchKeyEvent(KeyEvent keyEvent);

    public abstract boolean superDispatchKeyShortcutEvent(KeyEvent keyEvent);

    public abstract boolean superDispatchTouchEvent(MotionEvent motionEvent);

    public abstract boolean superDispatchTrackballEvent(MotionEvent motionEvent);

    public abstract boolean superDispatchGenericMotionEvent(MotionEvent motionEvent);

    public abstract View getDecorView();

    public abstract View peekDecorView();

    public abstract Bundle saveHierarchyState();

    public abstract void restoreHierarchyState(Bundle bundle);

    protected abstract void onActive();

    public abstract void setChildDrawable(int i10, Drawable drawable);

    public abstract void setChildInt(int i10, int i11);

    public abstract boolean isShortcutKey(int i10, KeyEvent keyEvent);

    public abstract void setVolumeControlStream(int i10);

    public abstract int getVolumeControlStream();

    public abstract int getStatusBarColor();

    public abstract void setStatusBarColor(int i10);

    public abstract int getNavigationBarColor();

    public abstract void setNavigationBarColor(int i10);

    public abstract void setDecorCaptionShade(int i10);

    public abstract void setResizingCaptionDrawable(Drawable drawable);

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/Window$Callback.class
 */
    public interface Callback {
        boolean dispatchKeyEvent(KeyEvent keyEvent);

        boolean dispatchKeyShortcutEvent(KeyEvent keyEvent);

        boolean dispatchTouchEvent(MotionEvent motionEvent);

        boolean dispatchTrackballEvent(MotionEvent motionEvent);

        boolean dispatchGenericMotionEvent(MotionEvent motionEvent);

        boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent);

        View onCreatePanelView(int i10);

        boolean onCreatePanelMenu(int i10, Menu menu);

        boolean onPreparePanel(int i10, View view, Menu menu);

        boolean onMenuOpened(int i10, Menu menu);

        boolean onMenuItemSelected(int i10, MenuItem menuItem);

        void onWindowAttributesChanged(WindowManager.LayoutParams layoutParams);

        void onContentChanged();

        void onWindowFocusChanged(boolean z10);

        void onAttachedToWindow();

        void onDetachedFromWindow();

        void onPanelClosed(int i10, Menu menu);

        boolean onSearchRequested();

        boolean onSearchRequested(SearchEvent searchEvent);

        ActionMode onWindowStartingActionMode(ActionMode.Callback callback);

        ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i10);

        void onActionModeStarted(ActionMode actionMode);

        void onActionModeFinished(ActionMode actionMode);

        default void onProvideKeyboardShortcuts(List<KeyboardShortcutGroup> data, Menu menu, int deviceId) {
            throw new RuntimeException("Stub!");
        }

        default void onPointerCaptureChanged(boolean hasCapture) {
            throw new RuntimeException("Stub!");
        }
    }

    public Window(Context context) {
        throw new RuntimeException("Stub!");
    }

    public final Context getContext() {
        throw new RuntimeException("Stub!");
    }

    public final TypedArray getWindowStyle() {
        throw new RuntimeException("Stub!");
    }

    public void setContainer(Window container) {
        throw new RuntimeException("Stub!");
    }

    public final Window getContainer() {
        throw new RuntimeException("Stub!");
    }

    public final boolean hasChildren() {
        throw new RuntimeException("Stub!");
    }

    public void setWindowManager(WindowManager wm2, IBinder appToken, String appName) {
        throw new RuntimeException("Stub!");
    }

    public void setWindowManager(WindowManager wm2, IBinder appToken, String appName, boolean hardwareAccelerated) {
        throw new RuntimeException("Stub!");
    }

    public WindowManager getWindowManager() {
        throw new RuntimeException("Stub!");
    }

    public void setCallback(Callback callback) {
        throw new RuntimeException("Stub!");
    }

    public final Callback getCallback() {
        throw new RuntimeException("Stub!");
    }

    public final void addOnFrameMetricsAvailableListener(OnFrameMetricsAvailableListener listener, Handler handler) {
        throw new RuntimeException("Stub!");
    }

    public final void removeOnFrameMetricsAvailableListener(OnFrameMetricsAvailableListener listener) {
        throw new RuntimeException("Stub!");
    }

    public final void setRestrictedCaptionAreaListener(OnRestrictedCaptionAreaChangedListener listener) {
        throw new RuntimeException("Stub!");
    }

    public void setLayout(int width, int height) {
        throw new RuntimeException("Stub!");
    }

    public void setGravity(int gravity) {
        throw new RuntimeException("Stub!");
    }

    public void setType(int type) {
        throw new RuntimeException("Stub!");
    }

    public void setFormat(int format) {
        throw new RuntimeException("Stub!");
    }

    public void setWindowAnimations(int resId) {
        throw new RuntimeException("Stub!");
    }

    public void setSoftInputMode(int mode) {
        throw new RuntimeException("Stub!");
    }

    public void addFlags(int flags) {
        throw new RuntimeException("Stub!");
    }

    public void clearFlags(int flags) {
        throw new RuntimeException("Stub!");
    }

    public void setFlags(int flags, int mask) {
        throw new RuntimeException("Stub!");
    }

    public void setColorMode(int colorMode) {
        throw new RuntimeException("Stub!");
    }

    public int getColorMode() {
        throw new RuntimeException("Stub!");
    }

    public void setDimAmount(float amount) {
        throw new RuntimeException("Stub!");
    }

    public void setAttributes(WindowManager.LayoutParams a10) {
        throw new RuntimeException("Stub!");
    }

    public final WindowManager.LayoutParams getAttributes() {
        throw new RuntimeException("Stub!");
    }

    protected final int getForcedWindowFlags() {
        throw new RuntimeException("Stub!");
    }

    protected final boolean hasSoftInputMode() {
        throw new RuntimeException("Stub!");
    }

    public void setSustainedPerformanceMode(boolean enable) {
        throw new RuntimeException("Stub!");
    }

    public boolean requestFeature(int featureId) {
        throw new RuntimeException("Stub!");
    }

    public final void makeActive() {
        throw new RuntimeException("Stub!");
    }

    public final boolean isActive() {
        throw new RuntimeException("Stub!");
    }

    public <T extends View> T findViewById(int id2) {
        throw new RuntimeException("Stub!");
    }

    public void setElevation(float elevation) {
        throw new RuntimeException("Stub!");
    }

    public void setClipToOutline(boolean clipToOutline) {
        throw new RuntimeException("Stub!");
    }

    public void setBackgroundDrawableResource(int resId) {
        throw new RuntimeException("Stub!");
    }

    protected final int getFeatures() {
        throw new RuntimeException("Stub!");
    }

    public static int getDefaultFeatures(Context context) {
        throw new RuntimeException("Stub!");
    }

    public boolean hasFeature(int feature) {
        throw new RuntimeException("Stub!");
    }

    protected final int getLocalFeatures() {
        throw new RuntimeException("Stub!");
    }

    protected void setDefaultWindowFormat(int format) {
        throw new RuntimeException("Stub!");
    }

    public void setMediaController(MediaController controller) {
        throw new RuntimeException("Stub!");
    }

    public MediaController getMediaController() {
        throw new RuntimeException("Stub!");
    }

    public void setUiOptions(int uiOptions) {
        throw new RuntimeException("Stub!");
    }

    public void setUiOptions(int uiOptions, int mask) {
        throw new RuntimeException("Stub!");
    }

    public void setIcon(int resId) {
        throw new RuntimeException("Stub!");
    }

    public void setLogo(int resId) {
        throw new RuntimeException("Stub!");
    }

    public void setLocalFocus(boolean hasFocus, boolean inTouchMode) {
        throw new RuntimeException("Stub!");
    }

    public void injectInputEvent(InputEvent event) {
        throw new RuntimeException("Stub!");
    }

    public TransitionManager getTransitionManager() {
        throw new RuntimeException("Stub!");
    }

    public void setTransitionManager(TransitionManager tm2) {
        throw new RuntimeException("Stub!");
    }

    public Scene getContentScene() {
        throw new RuntimeException("Stub!");
    }

    public void setEnterTransition(Transition transition) {
        throw new RuntimeException("Stub!");
    }

    public void setReturnTransition(Transition transition) {
        throw new RuntimeException("Stub!");
    }

    public void setExitTransition(Transition transition) {
        throw new RuntimeException("Stub!");
    }

    public void setReenterTransition(Transition transition) {
        throw new RuntimeException("Stub!");
    }

    public Transition getEnterTransition() {
        throw new RuntimeException("Stub!");
    }

    public Transition getReturnTransition() {
        throw new RuntimeException("Stub!");
    }

    public Transition getExitTransition() {
        throw new RuntimeException("Stub!");
    }

    public Transition getReenterTransition() {
        throw new RuntimeException("Stub!");
    }

    public void setSharedElementEnterTransition(Transition transition) {
        throw new RuntimeException("Stub!");
    }

    public void setSharedElementReturnTransition(Transition transition) {
        throw new RuntimeException("Stub!");
    }

    public Transition getSharedElementEnterTransition() {
        throw new RuntimeException("Stub!");
    }

    public Transition getSharedElementReturnTransition() {
        throw new RuntimeException("Stub!");
    }

    public void setSharedElementExitTransition(Transition transition) {
        throw new RuntimeException("Stub!");
    }

    public void setSharedElementReenterTransition(Transition transition) {
        throw new RuntimeException("Stub!");
    }

    public Transition getSharedElementExitTransition() {
        throw new RuntimeException("Stub!");
    }

    public Transition getSharedElementReenterTransition() {
        throw new RuntimeException("Stub!");
    }

    public void setAllowEnterTransitionOverlap(boolean allow) {
        throw new RuntimeException("Stub!");
    }

    public boolean getAllowEnterTransitionOverlap() {
        throw new RuntimeException("Stub!");
    }

    public void setAllowReturnTransitionOverlap(boolean allow) {
        throw new RuntimeException("Stub!");
    }

    public boolean getAllowReturnTransitionOverlap() {
        throw new RuntimeException("Stub!");
    }

    public long getTransitionBackgroundFadeDuration() {
        throw new RuntimeException("Stub!");
    }

    public void setTransitionBackgroundFadeDuration(long fadeDurationMillis) {
        throw new RuntimeException("Stub!");
    }

    public boolean getSharedElementsUseOverlay() {
        throw new RuntimeException("Stub!");
    }

    public void setSharedElementsUseOverlay(boolean sharedElementsUseOverlay) {
        throw new RuntimeException("Stub!");
    }
}
