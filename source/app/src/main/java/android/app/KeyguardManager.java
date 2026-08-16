package android.app;

import android.content.Intent;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/KeyguardManager.class
 */
public class KeyguardManager {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/KeyguardManager$OnKeyguardExitResult.class
 */
    @Deprecated
    public interface OnKeyguardExitResult {
        void onKeyguardExitResult(boolean z10);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/KeyguardManager$KeyguardLock.class
 */
    @Deprecated
    public class KeyguardLock {
        KeyguardLock() {
            throw new RuntimeException("Stub!");
        }

        public void disableKeyguard() {
            throw new RuntimeException("Stub!");
        }

        public void reenableKeyguard() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/KeyguardManager$KeyguardDismissCallback.class
 */
    public static abstract class KeyguardDismissCallback {
        public KeyguardDismissCallback() {
            throw new RuntimeException("Stub!");
        }

        public void onDismissError() {
            throw new RuntimeException("Stub!");
        }

        public void onDismissSucceeded() {
            throw new RuntimeException("Stub!");
        }

        public void onDismissCancelled() {
            throw new RuntimeException("Stub!");
        }
    }

    KeyguardManager() {
        throw new RuntimeException("Stub!");
    }

    public Intent createConfirmDeviceCredentialIntent(CharSequence title, CharSequence description) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public KeyguardLock newKeyguardLock(String tag) {
        throw new RuntimeException("Stub!");
    }

    public boolean isKeyguardLocked() {
        throw new RuntimeException("Stub!");
    }

    public boolean isKeyguardSecure() {
        throw new RuntimeException("Stub!");
    }

    public boolean inKeyguardRestrictedInputMode() {
        throw new RuntimeException("Stub!");
    }

    public boolean isDeviceLocked() {
        throw new RuntimeException("Stub!");
    }

    public boolean isDeviceSecure() {
        throw new RuntimeException("Stub!");
    }

    public void requestDismissKeyguard(Activity activity, KeyguardDismissCallback callback) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void exitKeyguardSecurely(OnKeyguardExitResult callback) {
        throw new RuntimeException("Stub!");
    }
}
