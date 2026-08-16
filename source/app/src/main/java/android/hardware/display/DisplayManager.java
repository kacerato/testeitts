package android.hardware.display;

import android.hardware.display.VirtualDisplay;
import android.os.Handler;
import android.view.Display;
import android.view.Surface;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/hardware/display/DisplayManager.class
 */
public final class DisplayManager {
    public static final String DISPLAY_CATEGORY_PRESENTATION = "android.hardware.display.category.PRESENTATION";
    public static final int VIRTUAL_DISPLAY_FLAG_AUTO_MIRROR = 16;
    public static final int VIRTUAL_DISPLAY_FLAG_OWN_CONTENT_ONLY = 8;
    public static final int VIRTUAL_DISPLAY_FLAG_PRESENTATION = 2;
    public static final int VIRTUAL_DISPLAY_FLAG_PUBLIC = 1;
    public static final int VIRTUAL_DISPLAY_FLAG_SECURE = 4;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/hardware/display/DisplayManager$DisplayListener.class
 */
    public interface DisplayListener {
        void onDisplayAdded(int i10);

        void onDisplayRemoved(int i10);

        void onDisplayChanged(int i10);
    }

    DisplayManager() {
        throw new RuntimeException("Stub!");
    }

    public Display getDisplay(int displayId) {
        throw new RuntimeException("Stub!");
    }

    public Display[] getDisplays() {
        throw new RuntimeException("Stub!");
    }

    public Display[] getDisplays(String category) {
        throw new RuntimeException("Stub!");
    }

    public void registerDisplayListener(DisplayListener listener, Handler handler) {
        throw new RuntimeException("Stub!");
    }

    public void unregisterDisplayListener(DisplayListener listener) {
        throw new RuntimeException("Stub!");
    }

    public VirtualDisplay createVirtualDisplay(String name, int width, int height, int densityDpi, Surface surface, int flags) {
        throw new RuntimeException("Stub!");
    }

    public VirtualDisplay createVirtualDisplay(String name, int width, int height, int densityDpi, Surface surface, int flags, VirtualDisplay.Callback callback, Handler handler) {
        throw new RuntimeException("Stub!");
    }
}
