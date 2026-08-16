package android.accessibilityservice;

import android.os.Handler;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/accessibilityservice/AccessibilityButtonController.class
 */
public final class AccessibilityButtonController {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback.class
 */
    public static abstract class AccessibilityButtonCallback {
        public AccessibilityButtonCallback() {
            throw new RuntimeException("Stub!");
        }

        public void onClicked(AccessibilityButtonController controller) {
            throw new RuntimeException("Stub!");
        }

        public void onAvailabilityChanged(AccessibilityButtonController controller, boolean available) {
            throw new RuntimeException("Stub!");
        }
    }

    AccessibilityButtonController() {
        throw new RuntimeException("Stub!");
    }

    public boolean isAccessibilityButtonAvailable() {
        throw new RuntimeException("Stub!");
    }

    public void registerAccessibilityButtonCallback(AccessibilityButtonCallback callback) {
        throw new RuntimeException("Stub!");
    }

    public void registerAccessibilityButtonCallback(AccessibilityButtonCallback callback, Handler handler) {
        throw new RuntimeException("Stub!");
    }

    public void unregisterAccessibilityButtonCallback(AccessibilityButtonCallback callback) {
        throw new RuntimeException("Stub!");
    }
}
