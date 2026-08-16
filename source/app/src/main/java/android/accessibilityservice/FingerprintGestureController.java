package android.accessibilityservice;

import android.os.Handler;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/accessibilityservice/FingerprintGestureController.class
 */
public final class FingerprintGestureController {
    public static final int FINGERPRINT_GESTURE_SWIPE_DOWN = 8;
    public static final int FINGERPRINT_GESTURE_SWIPE_LEFT = 2;
    public static final int FINGERPRINT_GESTURE_SWIPE_RIGHT = 1;
    public static final int FINGERPRINT_GESTURE_SWIPE_UP = 4;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback.class
 */
    public static abstract class FingerprintGestureCallback {
        public FingerprintGestureCallback() {
            throw new RuntimeException("Stub!");
        }

        public void onGestureDetectionAvailabilityChanged(boolean available) {
            throw new RuntimeException("Stub!");
        }

        public void onGestureDetected(int gesture) {
            throw new RuntimeException("Stub!");
        }
    }

    FingerprintGestureController() {
        throw new RuntimeException("Stub!");
    }

    public boolean isGestureDetectionAvailable() {
        throw new RuntimeException("Stub!");
    }

    public void registerFingerprintGestureCallback(FingerprintGestureCallback callback, Handler handler) {
        throw new RuntimeException("Stub!");
    }

    public void unregisterFingerprintGestureCallback(FingerprintGestureCallback callback) {
        throw new RuntimeException("Stub!");
    }
}
