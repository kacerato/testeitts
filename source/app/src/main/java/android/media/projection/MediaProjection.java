package android.media.projection;

import android.hardware.display.VirtualDisplay;
import android.os.Handler;
import android.view.Surface;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/projection/MediaProjection.class
 */
public final class MediaProjection {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/projection/MediaProjection$Callback.class
 */
    public static abstract class Callback {
        public Callback() {
            throw new RuntimeException("Stub!");
        }

        public void onStop() {
            throw new RuntimeException("Stub!");
        }
    }

    MediaProjection() {
        throw new RuntimeException("Stub!");
    }

    public void registerCallback(Callback callback, Handler handler) {
        throw new RuntimeException("Stub!");
    }

    public void unregisterCallback(Callback callback) {
        throw new RuntimeException("Stub!");
    }

    public VirtualDisplay createVirtualDisplay(String name, int width, int height, int dpi, int flags, Surface surface, VirtualDisplay.Callback callback, Handler handler) {
        throw new RuntimeException("Stub!");
    }

    public void stop() {
        throw new RuntimeException("Stub!");
    }
}
