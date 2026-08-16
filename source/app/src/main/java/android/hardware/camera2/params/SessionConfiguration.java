package android.hardware.camera2.params;

import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CaptureRequest;
import androidx.annotation.RecentlyNonNull;
import java.util.List;
import java.util.concurrent.Executor;

public final class SessionConfiguration {
    public static final int SESSION_HIGH_SPEED = 1;
    public static final int SESSION_REGULAR = 0;

    public SessionConfiguration(int sessionType, @RecentlyNonNull List<OutputConfiguration> outputs, @RecentlyNonNull Executor executor, @RecentlyNonNull CameraCaptureSession.StateCallback cb2) {
        throw new RuntimeException("Stub!");
    }

    public int getSessionType() {
        throw new RuntimeException("Stub!");
    }

    public List<OutputConfiguration> getOutputConfigurations() {
        throw new RuntimeException("Stub!");
    }

    public CameraCaptureSession.StateCallback getStateCallback() {
        throw new RuntimeException("Stub!");
    }

    public Executor getExecutor() {
        throw new RuntimeException("Stub!");
    }

    public void setInputConfiguration(@RecentlyNonNull InputConfiguration input) {
        throw new RuntimeException("Stub!");
    }

    public InputConfiguration getInputConfiguration() {
        throw new RuntimeException("Stub!");
    }

    public void setSessionParameters(CaptureRequest params) {
        throw new RuntimeException("Stub!");
    }

    public CaptureRequest getSessionParameters() {
        throw new RuntimeException("Stub!");
    }
}
