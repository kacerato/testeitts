package android.hardware.camera2;

import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/hardware/camera2/CameraConstrainedHighSpeedCaptureSession.class
 */
public abstract class CameraConstrainedHighSpeedCaptureSession extends CameraCaptureSession {
    public abstract List<CaptureRequest> createHighSpeedRequestList(CaptureRequest captureRequest) throws CameraAccessException;

    public CameraConstrainedHighSpeedCaptureSession() {
        throw new RuntimeException("Stub!");
    }
}
