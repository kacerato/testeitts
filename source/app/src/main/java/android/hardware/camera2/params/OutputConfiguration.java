package android.hardware.camera2.params;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Size;
import android.view.Surface;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/hardware/camera2/params/OutputConfiguration.class
 */
public final class OutputConfiguration implements Parcelable {
    public static final Parcelable.Creator<OutputConfiguration> CREATOR = null;
    public static final int SURFACE_GROUP_ID_NONE = -1;

    public OutputConfiguration(Surface surface) {
        throw new RuntimeException("Stub!");
    }

    public OutputConfiguration(int surfaceGroupId, Surface surface) {
        throw new RuntimeException("Stub!");
    }

    public <T> OutputConfiguration(Size surfaceSize, Class<T> klass) {
        throw new RuntimeException("Stub!");
    }

    public void enableSurfaceSharing() {
        throw new RuntimeException("Stub!");
    }

    public void addSurface(Surface surface) {
        throw new RuntimeException("Stub!");
    }

    public Surface getSurface() {
        throw new RuntimeException("Stub!");
    }

    public List<Surface> getSurfaces() {
        throw new RuntimeException("Stub!");
    }

    public int getSurfaceGroupId() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int describeContents() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void writeToParcel(Parcel dest, int flags) {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(Object obj) {
        throw new RuntimeException("Stub!");
    }

    public int hashCode() {
        throw new RuntimeException("Stub!");
    }
}
