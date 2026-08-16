package android.hardware.camera2;

import android.hardware.camera2.params.OutputConfiguration;
import android.os.Handler;
import android.view.Surface;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/hardware/camera2/CameraCaptureSession.class
 */
public abstract class CameraCaptureSession implements AutoCloseable {
    public abstract CameraDevice getDevice();

    public abstract void prepare(Surface surface) throws CameraAccessException;

    public abstract void finalizeOutputConfigurations(List<OutputConfiguration> list) throws CameraAccessException;

    public abstract int capture(CaptureRequest captureRequest, CaptureCallback captureCallback, Handler handler) throws CameraAccessException;

    public abstract int captureBurst(List<CaptureRequest> list, CaptureCallback captureCallback, Handler handler) throws CameraAccessException;

    public abstract int setRepeatingRequest(CaptureRequest captureRequest, CaptureCallback captureCallback, Handler handler) throws CameraAccessException;

    public abstract int setRepeatingBurst(List<CaptureRequest> list, CaptureCallback captureCallback, Handler handler) throws CameraAccessException;

    public abstract void stopRepeating() throws CameraAccessException;

    public abstract void abortCaptures() throws CameraAccessException;

    public abstract boolean isReprocessable();

    public abstract Surface getInputSurface();

    @Override
    public abstract void close();

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/hardware/camera2/CameraCaptureSession$StateCallback.class
 */
    public static abstract class StateCallback {
        public abstract void onConfigured(CameraCaptureSession cameraCaptureSession);

        public abstract void onConfigureFailed(CameraCaptureSession cameraCaptureSession);

        public StateCallback() {
            throw new RuntimeException("Stub!");
        }

        public void onReady(CameraCaptureSession session) {
            throw new RuntimeException("Stub!");
        }

        public void onActive(CameraCaptureSession session) {
            throw new RuntimeException("Stub!");
        }

        public void onCaptureQueueEmpty(CameraCaptureSession session) {
            throw new RuntimeException("Stub!");
        }

        public void onClosed(CameraCaptureSession session) {
            throw new RuntimeException("Stub!");
        }

        public void onSurfacePrepared(CameraCaptureSession session, Surface surface) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/hardware/camera2/CameraCaptureSession$CaptureCallback.class
 */
    public static abstract class CaptureCallback {
        public CaptureCallback() {
            throw new RuntimeException("Stub!");
        }

        public void onCaptureStarted(CameraCaptureSession session, CaptureRequest request, long timestamp, long frameNumber) {
            throw new RuntimeException("Stub!");
        }

        public void onCaptureProgressed(CameraCaptureSession session, CaptureRequest request, CaptureResult partialResult) {
            throw new RuntimeException("Stub!");
        }

        public void onCaptureCompleted(CameraCaptureSession session, CaptureRequest request, TotalCaptureResult result) {
            throw new RuntimeException("Stub!");
        }

        public void onCaptureFailed(CameraCaptureSession session, CaptureRequest request, CaptureFailure failure) {
            throw new RuntimeException("Stub!");
        }

        public void onCaptureSequenceCompleted(CameraCaptureSession session, int sequenceId, long frameNumber) {
            throw new RuntimeException("Stub!");
        }

        public void onCaptureSequenceAborted(CameraCaptureSession session, int sequenceId) {
            throw new RuntimeException("Stub!");
        }

        public void onCaptureBufferLost(CameraCaptureSession session, CaptureRequest request, Surface target, long frameNumber) {
            throw new RuntimeException("Stub!");
        }
    }

    public CameraCaptureSession() {
        throw new RuntimeException("Stub!");
    }
}
