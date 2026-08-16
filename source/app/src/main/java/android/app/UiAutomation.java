package android.app;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.graphics.Bitmap;
import android.os.ParcelFileDescriptor;
import android.view.InputEvent;
import android.view.WindowAnimationFrameStats;
import android.view.WindowContentFrameStats;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityWindowInfo;
import java.util.List;
import java.util.concurrent.TimeoutException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/UiAutomation.class
 */
public final class UiAutomation {
    public static final int FLAG_DONT_SUPPRESS_ACCESSIBILITY_SERVICES = 1;
    public static final int ROTATION_FREEZE_0 = 0;
    public static final int ROTATION_FREEZE_180 = 2;
    public static final int ROTATION_FREEZE_270 = 3;
    public static final int ROTATION_FREEZE_90 = 1;
    public static final int ROTATION_FREEZE_CURRENT = -1;
    public static final int ROTATION_UNFREEZE = -2;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/UiAutomation$AccessibilityEventFilter.class
 */
    public interface AccessibilityEventFilter {
        boolean accept(AccessibilityEvent accessibilityEvent);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/UiAutomation$OnAccessibilityEventListener.class
 */
    public interface OnAccessibilityEventListener {
        void onAccessibilityEvent(AccessibilityEvent accessibilityEvent);
    }

    UiAutomation() {
        throw new RuntimeException("Stub!");
    }

    public void setOnAccessibilityEventListener(OnAccessibilityEventListener listener) {
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

    public List<AccessibilityWindowInfo> getWindows() {
        throw new RuntimeException("Stub!");
    }

    public AccessibilityNodeInfo getRootInActiveWindow() {
        throw new RuntimeException("Stub!");
    }

    public boolean injectInputEvent(InputEvent event, boolean sync) {
        throw new RuntimeException("Stub!");
    }

    public boolean setRotation(int rotation) {
        throw new RuntimeException("Stub!");
    }

    public AccessibilityEvent executeAndWaitForEvent(Runnable command, AccessibilityEventFilter filter, long timeoutMillis) throws TimeoutException {
        throw new RuntimeException("Stub!");
    }

    public void waitForIdle(long idleTimeoutMillis, long globalTimeoutMillis) throws TimeoutException {
        throw new RuntimeException("Stub!");
    }

    public Bitmap takeScreenshot() {
        throw new RuntimeException("Stub!");
    }

    public void setRunAsMonkey(boolean enable) {
        throw new RuntimeException("Stub!");
    }

    public boolean clearWindowContentFrameStats(int windowId) {
        throw new RuntimeException("Stub!");
    }

    public WindowContentFrameStats getWindowContentFrameStats(int windowId) {
        throw new RuntimeException("Stub!");
    }

    public void clearWindowAnimationFrameStats() {
        throw new RuntimeException("Stub!");
    }

    public WindowAnimationFrameStats getWindowAnimationFrameStats() {
        throw new RuntimeException("Stub!");
    }

    public ParcelFileDescriptor executeShellCommand(String command) {
        throw new RuntimeException("Stub!");
    }
}
