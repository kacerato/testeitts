package android.view.autofill;

import android.graphics.Rect;
import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/autofill/AutofillManager.class
 */
public final class AutofillManager {
    public static final String EXTRA_ASSIST_STRUCTURE = "android.view.autofill.extra.ASSIST_STRUCTURE";
    public static final String EXTRA_AUTHENTICATION_RESULT = "android.view.autofill.extra.AUTHENTICATION_RESULT";
    public static final String EXTRA_CLIENT_STATE = "android.view.autofill.extra.CLIENT_STATE";

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/autofill/AutofillManager$AutofillCallback.class
 */
    public static abstract class AutofillCallback {
        public static final int EVENT_INPUT_HIDDEN = 2;
        public static final int EVENT_INPUT_SHOWN = 1;
        public static final int EVENT_INPUT_UNAVAILABLE = 3;

        public AutofillCallback() {
            throw new RuntimeException("Stub!");
        }

        public void onAutofillEvent(View view, int event) {
            throw new RuntimeException("Stub!");
        }

        public void onAutofillEvent(View view, int virtualId, int event) {
            throw new RuntimeException("Stub!");
        }
    }

    AutofillManager() {
        throw new RuntimeException("Stub!");
    }

    public boolean isEnabled() {
        throw new RuntimeException("Stub!");
    }

    public void requestAutofill(View view) {
        throw new RuntimeException("Stub!");
    }

    public void requestAutofill(View view, int virtualId, Rect absBounds) {
        throw new RuntimeException("Stub!");
    }

    public void notifyViewEntered(View view) {
        throw new RuntimeException("Stub!");
    }

    public void notifyViewExited(View view) {
        throw new RuntimeException("Stub!");
    }

    public void notifyViewEntered(View view, int virtualId, Rect absBounds) {
        throw new RuntimeException("Stub!");
    }

    public void notifyViewExited(View view, int virtualId) {
        throw new RuntimeException("Stub!");
    }

    public void notifyValueChanged(View view) {
        throw new RuntimeException("Stub!");
    }

    public void notifyValueChanged(View view, int virtualId, AutofillValue value) {
        throw new RuntimeException("Stub!");
    }

    public void commit() {
        throw new RuntimeException("Stub!");
    }

    public void cancel() {
        throw new RuntimeException("Stub!");
    }

    public void disableAutofillServices() {
        throw new RuntimeException("Stub!");
    }

    public boolean hasEnabledAutofillServices() {
        throw new RuntimeException("Stub!");
    }

    public boolean isAutofillSupported() {
        throw new RuntimeException("Stub!");
    }

    public void registerCallback(AutofillCallback callback) {
        throw new RuntimeException("Stub!");
    }

    public void unregisterCallback(AutofillCallback callback) {
        throw new RuntimeException("Stub!");
    }
}
