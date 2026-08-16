package android.hardware.camera2;

import android.hardware.camera2.CameraDevice;
import android.os.Handler;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/hardware/camera2/CameraManager.class
 */
public final class CameraManager {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/hardware/camera2/CameraManager$AvailabilityCallback.class
 */
    public static abstract class AvailabilityCallback {
        public AvailabilityCallback() {
            throw new RuntimeException("Stub!");
        }

        public void onCameraAvailable(String cameraId) {
            throw new RuntimeException("Stub!");
        }

        public void onCameraUnavailable(String cameraId) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/hardware/camera2/CameraManager$TorchCallback.class
 */
    public static abstract class TorchCallback {
        public TorchCallback() {
            throw new RuntimeException("Stub!");
        }

        public void onTorchModeUnavailable(String cameraId) {
            throw new RuntimeException("Stub!");
        }

        public void onTorchModeChanged(String cameraId, boolean enabled) {
            throw new RuntimeException("Stub!");
        }
    }

    CameraManager() {
        throw new RuntimeException("Stub!");
    }

    public String[] getCameraIdList() throws CameraAccessException {
        throw new RuntimeException("Stub!");
    }

    public void registerAvailabilityCallback(AvailabilityCallback callback, Handler handler) {
        throw new RuntimeException("Stub!");
    }

    public void unregisterAvailabilityCallback(AvailabilityCallback callback) {
        throw new RuntimeException("Stub!");
    }

    public void registerTorchCallback(TorchCallback callback, Handler handler) {
        throw new RuntimeException("Stub!");
    }

    public void unregisterTorchCallback(TorchCallback callback) {
        throw new RuntimeException("Stub!");
    }

    public CameraCharacteristics getCameraCharacteristics(String cameraId) throws CameraAccessException {
        throw new RuntimeException("Stub!");
    }

    public void openCamera(String cameraId, CameraDevice.StateCallback callback, Handler handler) throws CameraAccessException {
        throw new RuntimeException("Stub!");
    }

    public void setTorchMode(String cameraId, boolean enabled) throws CameraAccessException {
        throw new RuntimeException("Stub!");
    }
}
