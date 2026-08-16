package android.accessibilityservice;

import android.app.Service;
import android.content.Intent;
import android.graphics.Region;
import android.os.Handler;
import android.os.IBinder;
import android.view.KeyEvent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityWindowInfo;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/accessibilityservice/AccessibilityService.class
 */
public abstract class AccessibilityService extends Service {
    public static final int GESTURE_SWIPE_DOWN = 2;
    public static final int GESTURE_SWIPE_DOWN_AND_LEFT = 15;
    public static final int GESTURE_SWIPE_DOWN_AND_RIGHT = 16;
    public static final int GESTURE_SWIPE_DOWN_AND_UP = 8;
    public static final int GESTURE_SWIPE_LEFT = 3;
    public static final int GESTURE_SWIPE_LEFT_AND_DOWN = 10;
    public static final int GESTURE_SWIPE_LEFT_AND_RIGHT = 5;
    public static final int GESTURE_SWIPE_LEFT_AND_UP = 9;
    public static final int GESTURE_SWIPE_RIGHT = 4;
    public static final int GESTURE_SWIPE_RIGHT_AND_DOWN = 12;
    public static final int GESTURE_SWIPE_RIGHT_AND_LEFT = 6;
    public static final int GESTURE_SWIPE_RIGHT_AND_UP = 11;
    public static final int GESTURE_SWIPE_UP = 1;
    public static final int GESTURE_SWIPE_UP_AND_DOWN = 7;
    public static final int GESTURE_SWIPE_UP_AND_LEFT = 13;
    public static final int GESTURE_SWIPE_UP_AND_RIGHT = 14;
    public static final int GLOBAL_ACTION_BACK = 1;
    public static final int GLOBAL_ACTION_HOME = 2;
    public static final int GLOBAL_ACTION_NOTIFICATIONS = 4;
    public static final int GLOBAL_ACTION_POWER_DIALOG = 6;
    public static final int GLOBAL_ACTION_QUICK_SETTINGS = 5;
    public static final int GLOBAL_ACTION_RECENTS = 3;
    public static final int GLOBAL_ACTION_TOGGLE_SPLIT_SCREEN = 7;
    public static final String SERVICE_INTERFACE = "android.accessibilityservice.AccessibilityService";
    public static final String SERVICE_META_DATA = "android.accessibilityservice";
    public static final int SHOW_MODE_AUTO = 0;
    public static final int SHOW_MODE_HIDDEN = 1;

    public abstract void onAccessibilityEvent(AccessibilityEvent accessibilityEvent);

    public abstract void onInterrupt();

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/accessibilityservice/AccessibilityService$MagnificationController.class
 */
    public static final class MagnificationController {

        /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener.class
 */
        public interface OnMagnificationChangedListener {
            void onMagnificationChanged(MagnificationController magnificationController, Region region, float f10, float f11, float f12);
        }

        MagnificationController() {
            throw new RuntimeException("Stub!");
        }

        public void addListener(OnMagnificationChangedListener listener) {
            throw new RuntimeException("Stub!");
        }

        public void addListener(OnMagnificationChangedListener listener, Handler handler) {
            throw new RuntimeException("Stub!");
        }

        public boolean removeListener(OnMagnificationChangedListener listener) {
            throw new RuntimeException("Stub!");
        }

        public float getScale() {
            throw new RuntimeException("Stub!");
        }

        public float getCenterX() {
            throw new RuntimeException("Stub!");
        }

        public float getCenterY() {
            throw new RuntimeException("Stub!");
        }

        public Region getMagnificationRegion() {
            throw new RuntimeException("Stub!");
        }

        public boolean reset(boolean animate) {
            throw new RuntimeException("Stub!");
        }

        public boolean setScale(float scale, boolean animate) {
            throw new RuntimeException("Stub!");
        }

        public boolean setCenter(float centerX, float centerY, boolean animate) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/accessibilityservice/AccessibilityService$SoftKeyboardController.class
 */
    public static final class SoftKeyboardController {

        /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/accessibilityservice/AccessibilityService$SoftKeyboardController$OnShowModeChangedListener.class
 */
        public interface OnShowModeChangedListener {
            void onShowModeChanged(SoftKeyboardController softKeyboardController, int i10);
        }

        SoftKeyboardController() {
            throw new RuntimeException("Stub!");
        }

        public void addOnShowModeChangedListener(OnShowModeChangedListener listener) {
            throw new RuntimeException("Stub!");
        }

        public void addOnShowModeChangedListener(OnShowModeChangedListener listener, Handler handler) {
            throw new RuntimeException("Stub!");
        }

        public boolean removeOnShowModeChangedListener(OnShowModeChangedListener listener) {
            throw new RuntimeException("Stub!");
        }

        public int getShowMode() {
            throw new RuntimeException("Stub!");
        }

        public boolean setShowMode(int showMode) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/accessibilityservice/AccessibilityService$GestureResultCallback.class
 */
    public static abstract class GestureResultCallback {
        public GestureResultCallback() {
            throw new RuntimeException("Stub!");
        }

        public void onCompleted(GestureDescription gestureDescription) {
            throw new RuntimeException("Stub!");
        }

        public void onCancelled(GestureDescription gestureDescription) {
            throw new RuntimeException("Stub!");
        }
    }

    public AccessibilityService() {
        throw new RuntimeException("Stub!");
    }

    protected void onServiceConnected() {
        throw new RuntimeException("Stub!");
    }

    protected boolean onGesture(int gestureId) {
        throw new RuntimeException("Stub!");
    }

    protected boolean onKeyEvent(KeyEvent event) {
        throw new RuntimeException("Stub!");
    }

    public List<AccessibilityWindowInfo> getWindows() {
        throw new RuntimeException("Stub!");
    }

    public AccessibilityNodeInfo getRootInActiveWindow() {
        throw new RuntimeException("Stub!");
    }

    public final void disableSelf() {
        throw new RuntimeException("Stub!");
    }

    public final MagnificationController getMagnificationController() {
        throw new RuntimeException("Stub!");
    }

    public final FingerprintGestureController getFingerprintGestureController() {
        throw new RuntimeException("Stub!");
    }

    public final boolean dispatchGesture(GestureDescription gesture, GestureResultCallback callback, Handler handler) {
        throw new RuntimeException("Stub!");
    }

    public final SoftKeyboardController getSoftKeyboardController() {
        throw new RuntimeException("Stub!");
    }

    public final AccessibilityButtonController getAccessibilityButtonController() {
        throw new RuntimeException("Stub!");
    }

    public final boolean performGlobalAction(int action) {
        throw new RuntimeException("Stub!");
    }

    public AccessibilityNodeInfo findFocus(int focus) {
        throw new RuntimeException("Stub!");
    }

    public final AccessibilityServiceInfo getServiceInfo() {
        throw new RuntimeException("Stub!");
    }

    public final void setServiceInfo(AccessibilityServiceInfo info) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Object getSystemService(String name) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final IBinder onBind(Intent intent) {
        throw new RuntimeException("Stub!");
    }
}
