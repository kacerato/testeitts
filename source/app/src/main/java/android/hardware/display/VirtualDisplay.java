package android.hardware.display;

import android.view.Display;
import android.view.Surface;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/hardware/display/VirtualDisplay.class
 */
public final class VirtualDisplay {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/hardware/display/VirtualDisplay$Callback.class
 */
    public static abstract class Callback {
        public Callback() {
            throw new RuntimeException("Stub!");
        }

        public void onPaused() {
            throw new RuntimeException("Stub!");
        }

        public void onResumed() {
            throw new RuntimeException("Stub!");
        }

        public void onStopped() {
            throw new RuntimeException("Stub!");
        }
    }

    VirtualDisplay() {
        throw new RuntimeException("Stub!");
    }

    public Display getDisplay() {
        throw new RuntimeException("Stub!");
    }

    public Surface getSurface() {
        throw new RuntimeException("Stub!");
    }

    public void setSurface(Surface surface) {
        throw new RuntimeException("Stub!");
    }

    public void resize(int width, int height, int densityDpi) {
        throw new RuntimeException("Stub!");
    }

    public void release() {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }
}
