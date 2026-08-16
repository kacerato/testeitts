package android.hardware.camera2;

import android.graphics.Rect;
import android.hardware.camera2.params.ColorSpaceTransform;
import android.hardware.camera2.params.MeteringRectangle;
import android.hardware.camera2.params.RggbChannelVector;
import android.hardware.camera2.params.TonemapCurve;
import android.location.Location;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Range;
import android.util.Size;
import android.view.Surface;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/hardware/camera2/CaptureRequest.class
 */
public final class CaptureRequest extends CameraMetadata<Key<?>> implements Parcelable {
    public static final Key<Boolean> BLACK_LEVEL_LOCK = null;
    public static final Key<Integer> COLOR_CORRECTION_ABERRATION_MODE = null;
    public static final Key<RggbChannelVector> COLOR_CORRECTION_GAINS = null;
    public static final Key<Integer> COLOR_CORRECTION_MODE = null;
    public static final Key<ColorSpaceTransform> COLOR_CORRECTION_TRANSFORM = null;
    public static final Key<Integer> CONTROL_AE_ANTIBANDING_MODE = null;
    public static final Key<Integer> CONTROL_AE_EXPOSURE_COMPENSATION = null;
    public static final Key<Boolean> CONTROL_AE_LOCK = null;
    public static final Key<Integer> CONTROL_AE_MODE = null;
    public static final Key<Integer> CONTROL_AE_PRECAPTURE_TRIGGER = null;
    public static final Key<MeteringRectangle[]> CONTROL_AE_REGIONS = null;
    public static final Key<Range<Integer>> CONTROL_AE_TARGET_FPS_RANGE = null;
    public static final Key<Integer> CONTROL_AF_MODE = null;
    public static final Key<MeteringRectangle[]> CONTROL_AF_REGIONS = null;
    public static final Key<Integer> CONTROL_AF_TRIGGER = null;
    public static final Key<Boolean> CONTROL_AWB_LOCK = null;
    public static final Key<Integer> CONTROL_AWB_MODE = null;
    public static final Key<MeteringRectangle[]> CONTROL_AWB_REGIONS = null;
    public static final Key<Integer> CONTROL_CAPTURE_INTENT = null;
    public static final Key<Integer> CONTROL_EFFECT_MODE = null;
    public static final Key<Boolean> CONTROL_ENABLE_ZSL = null;
    public static final Key<Integer> CONTROL_MODE = null;
    public static final Key<Integer> CONTROL_POST_RAW_SENSITIVITY_BOOST = null;
    public static final Key<Integer> CONTROL_SCENE_MODE = null;
    public static final Key<Integer> CONTROL_VIDEO_STABILIZATION_MODE = null;
    public static final Parcelable.Creator<CaptureRequest> CREATOR = null;
    public static final Key<Integer> EDGE_MODE = null;
    public static final Key<Integer> FLASH_MODE = null;
    public static final Key<Integer> HOT_PIXEL_MODE = null;
    public static final Key<Location> JPEG_GPS_LOCATION = null;
    public static final Key<Integer> JPEG_ORIENTATION = null;
    public static final Key<Byte> JPEG_QUALITY = null;
    public static final Key<Byte> JPEG_THUMBNAIL_QUALITY = null;
    public static final Key<Size> JPEG_THUMBNAIL_SIZE = null;
    public static final Key<Float> LENS_APERTURE = null;
    public static final Key<Float> LENS_FILTER_DENSITY = null;
    public static final Key<Float> LENS_FOCAL_LENGTH = null;
    public static final Key<Float> LENS_FOCUS_DISTANCE = null;
    public static final Key<Integer> LENS_OPTICAL_STABILIZATION_MODE = null;
    public static final Key<Integer> NOISE_REDUCTION_MODE = null;
    public static final Key<Float> REPROCESS_EFFECTIVE_EXPOSURE_FACTOR = null;
    public static final Key<Rect> SCALER_CROP_REGION = null;
    public static final Key<Long> SENSOR_EXPOSURE_TIME = null;
    public static final Key<Long> SENSOR_FRAME_DURATION = null;
    public static final Key<Integer> SENSOR_SENSITIVITY = null;
    public static final Key<int[]> SENSOR_TEST_PATTERN_DATA = null;
    public static final Key<Integer> SENSOR_TEST_PATTERN_MODE = null;
    public static final Key<Integer> SHADING_MODE = null;
    public static final Key<Integer> STATISTICS_FACE_DETECT_MODE = null;
    public static final Key<Boolean> STATISTICS_HOT_PIXEL_MAP_MODE = null;
    public static final Key<Integer> STATISTICS_LENS_SHADING_MAP_MODE = null;
    public static final Key<TonemapCurve> TONEMAP_CURVE = null;
    public static final Key<Float> TONEMAP_GAMMA = null;
    public static final Key<Integer> TONEMAP_MODE = null;
    public static final Key<Integer> TONEMAP_PRESET_CURVE = null;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/hardware/camera2/CaptureRequest$Key.class
 */
    public static final class Key<T> {
        Key() {
            throw new RuntimeException("Stub!");
        }

        public String getName() {
            throw new RuntimeException("Stub!");
        }

        public final int hashCode() {
            throw new RuntimeException("Stub!");
        }

        public final boolean equals(Object o10) {
            throw new RuntimeException("Stub!");
        }

        public String toString() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/hardware/camera2/CaptureRequest$Builder.class
 */
    public static final class Builder {
        Builder() {
            throw new RuntimeException("Stub!");
        }

        public void addTarget(Surface outputTarget) {
            throw new RuntimeException("Stub!");
        }

        public void removeTarget(Surface outputTarget) {
            throw new RuntimeException("Stub!");
        }

        public <T> void set(Key<T> key, T value) {
            throw new RuntimeException("Stub!");
        }

        public <T> T get(Key<T> key) {
            throw new RuntimeException("Stub!");
        }

        public void setTag(Object tag) {
            throw new RuntimeException("Stub!");
        }

        public CaptureRequest build() {
            throw new RuntimeException("Stub!");
        }
    }

    CaptureRequest() {
        throw new RuntimeException("Stub!");
    }

    public <T> T get(Key<T> key) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public List<Key<?>> getKeys() {
        throw new RuntimeException("Stub!");
    }

    public Object getTag() {
        throw new RuntimeException("Stub!");
    }

    public boolean isReprocess() {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(Object other) {
        throw new RuntimeException("Stub!");
    }

    public int hashCode() {
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
}
