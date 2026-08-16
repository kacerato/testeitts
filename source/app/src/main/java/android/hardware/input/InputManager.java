package android.hardware.input;

import android.os.Handler;
import android.view.InputDevice;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/hardware/input/InputManager.class
 */
public final class InputManager {
    public static final String ACTION_QUERY_KEYBOARD_LAYOUTS = "android.hardware.input.action.QUERY_KEYBOARD_LAYOUTS";
    public static final String META_DATA_KEYBOARD_LAYOUTS = "android.hardware.input.metadata.KEYBOARD_LAYOUTS";

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/hardware/input/InputManager$InputDeviceListener.class
 */
    public interface InputDeviceListener {
        void onInputDeviceAdded(int i10);

        void onInputDeviceRemoved(int i10);

        void onInputDeviceChanged(int i10);
    }

    InputManager() {
        throw new RuntimeException("Stub!");
    }

    public InputDevice getInputDevice(int id2) {
        throw new RuntimeException("Stub!");
    }

    public int[] getInputDeviceIds() {
        throw new RuntimeException("Stub!");
    }

    public void registerInputDeviceListener(InputDeviceListener listener, Handler handler) {
        throw new RuntimeException("Stub!");
    }

    public void unregisterInputDeviceListener(InputDeviceListener listener) {
        throw new RuntimeException("Stub!");
    }
}
