package android.hardware.camera2;

import android.graphics.Rect;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.params.BlackLevelPattern;
import android.hardware.camera2.params.ColorSpaceTransform;
import android.hardware.camera2.params.StreamConfigurationMap;
import android.util.Range;
import android.util.Rational;
import android.util.Size;
import android.util.SizeF;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/hardware/camera2/CameraCharacteristics.class
 */
public final class CameraCharacteristics extends CameraMetadata<Key<?>> {
    public static final Key<int[]> COLOR_CORRECTION_AVAILABLE_ABERRATION_MODES = null;
    public static final Key<int[]> CONTROL_AE_AVAILABLE_ANTIBANDING_MODES = null;
    public static final Key<int[]> CONTROL_AE_AVAILABLE_MODES = null;
    public static final Key<Range<Integer>[]> CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES = null;
    public static final Key<Range<Integer>> CONTROL_AE_COMPENSATION_RANGE = null;
    public static final Key<Rational> CONTROL_AE_COMPENSATION_STEP = null;
    public static final Key<Boolean> CONTROL_AE_LOCK_AVAILABLE = null;
    public static final Key<int[]> CONTROL_AF_AVAILABLE_MODES = null;
    public static final Key<int[]> CONTROL_AVAILABLE_EFFECTS = null;
    public static final Key<int[]> CONTROL_AVAILABLE_MODES = null;
    public static final Key<int[]> CONTROL_AVAILABLE_SCENE_MODES = null;
    public static final Key<int[]> CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES = null;
    public static final Key<int[]> CONTROL_AWB_AVAILABLE_MODES = null;
    public static final Key<Boolean> CONTROL_AWB_LOCK_AVAILABLE = null;
    public static final Key<Integer> CONTROL_MAX_REGIONS_AE = null;
    public static final Key<Integer> CONTROL_MAX_REGIONS_AF = null;
    public static final Key<Integer> CONTROL_MAX_REGIONS_AWB = null;
    public static final Key<Range<Integer>> CONTROL_POST_RAW_SENSITIVITY_BOOST_RANGE = null;
    public static final Key<Boolean> DEPTH_DEPTH_IS_EXCLUSIVE = null;
    public static final Key<int[]> EDGE_AVAILABLE_EDGE_MODES = null;
    public static final Key<Boolean> FLASH_INFO_AVAILABLE = null;
    public static final Key<int[]> HOT_PIXEL_AVAILABLE_HOT_PIXEL_MODES = null;
    public static final Key<Integer> INFO_SUPPORTED_HARDWARE_LEVEL = null;
    public static final Key<Size[]> JPEG_AVAILABLE_THUMBNAIL_SIZES = null;
    public static final Key<Integer> LENS_FACING = null;
    public static final Key<float[]> LENS_INFO_AVAILABLE_APERTURES = null;
    public static final Key<float[]> LENS_INFO_AVAILABLE_FILTER_DENSITIES = null;
    public static final Key<float[]> LENS_INFO_AVAILABLE_FOCAL_LENGTHS = null;
    public static final Key<int[]> LENS_INFO_AVAILABLE_OPTICAL_STABILIZATION = null;
    public static final Key<Integer> LENS_INFO_FOCUS_DISTANCE_CALIBRATION = null;
    public static final Key<Float> LENS_INFO_HYPERFOCAL_DISTANCE = null;
    public static final Key<Float> LENS_INFO_MINIMUM_FOCUS_DISTANCE = null;
    public static final Key<float[]> LENS_INTRINSIC_CALIBRATION = null;
    public static final Key<float[]> LENS_POSE_ROTATION = null;
    public static final Key<float[]> LENS_POSE_TRANSLATION = null;
    public static final Key<float[]> LENS_RADIAL_DISTORTION = null;
    public static final Key<int[]> NOISE_REDUCTION_AVAILABLE_NOISE_REDUCTION_MODES = null;
    public static final Key<Integer> REPROCESS_MAX_CAPTURE_STALL = null;
    public static final Key<int[]> REQUEST_AVAILABLE_CAPABILITIES = null;
    public static final Key<Integer> REQUEST_MAX_NUM_INPUT_STREAMS = null;
    public static final Key<Integer> REQUEST_MAX_NUM_OUTPUT_PROC = null;
    public static final Key<Integer> REQUEST_MAX_NUM_OUTPUT_PROC_STALLING = null;
    public static final Key<Integer> REQUEST_MAX_NUM_OUTPUT_RAW = null;
    public static final Key<Integer> REQUEST_PARTIAL_RESULT_COUNT = null;
    public static final Key<Byte> REQUEST_PIPELINE_MAX_DEPTH = null;
    public static final Key<Float> SCALER_AVAILABLE_MAX_DIGITAL_ZOOM = null;
    public static final Key<Integer> SCALER_CROPPING_TYPE = null;
    public static final Key<StreamConfigurationMap> SCALER_STREAM_CONFIGURATION_MAP = null;
    public static final Key<int[]> SENSOR_AVAILABLE_TEST_PATTERN_MODES = null;
    public static final Key<BlackLevelPattern> SENSOR_BLACK_LEVEL_PATTERN = null;
    public static final Key<ColorSpaceTransform> SENSOR_CALIBRATION_TRANSFORM1 = null;
    public static final Key<ColorSpaceTransform> SENSOR_CALIBRATION_TRANSFORM2 = null;
    public static final Key<ColorSpaceTransform> SENSOR_COLOR_TRANSFORM1 = null;
    public static final Key<ColorSpaceTransform> SENSOR_COLOR_TRANSFORM2 = null;
    public static final Key<ColorSpaceTransform> SENSOR_FORWARD_MATRIX1 = null;
    public static final Key<ColorSpaceTransform> SENSOR_FORWARD_MATRIX2 = null;
    public static final Key<Rect> SENSOR_INFO_ACTIVE_ARRAY_SIZE = null;
    public static final Key<Integer> SENSOR_INFO_COLOR_FILTER_ARRANGEMENT = null;
    public static final Key<Range<Long>> SENSOR_INFO_EXPOSURE_TIME_RANGE = null;
    public static final Key<Boolean> SENSOR_INFO_LENS_SHADING_APPLIED = null;
    public static final Key<Long> SENSOR_INFO_MAX_FRAME_DURATION = null;
    public static final Key<SizeF> SENSOR_INFO_PHYSICAL_SIZE = null;
    public static final Key<Size> SENSOR_INFO_PIXEL_ARRAY_SIZE = null;
    public static final Key<Rect> SENSOR_INFO_PRE_CORRECTION_ACTIVE_ARRAY_SIZE = null;
    public static final Key<Range<Integer>> SENSOR_INFO_SENSITIVITY_RANGE = null;
    public static final Key<Integer> SENSOR_INFO_TIMESTAMP_SOURCE = null;
    public static final Key<Integer> SENSOR_INFO_WHITE_LEVEL = null;
    public static final Key<Integer> SENSOR_MAX_ANALOG_SENSITIVITY = null;
    public static final Key<Rect[]> SENSOR_OPTICAL_BLACK_REGIONS = null;
    public static final Key<Integer> SENSOR_ORIENTATION = null;
    public static final Key<Integer> SENSOR_REFERENCE_ILLUMINANT1 = null;
    public static final Key<Byte> SENSOR_REFERENCE_ILLUMINANT2 = null;
    public static final Key<int[]> SHADING_AVAILABLE_MODES = null;
    public static final Key<int[]> STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES = null;
    public static final Key<boolean[]> STATISTICS_INFO_AVAILABLE_HOT_PIXEL_MAP_MODES = null;
    public static final Key<int[]> STATISTICS_INFO_AVAILABLE_LENS_SHADING_MAP_MODES = null;
    public static final Key<Integer> STATISTICS_INFO_MAX_FACE_COUNT = null;
    public static final Key<Integer> SYNC_MAX_LATENCY = null;
    public static final Key<int[]> TONEMAP_AVAILABLE_TONE_MAP_MODES = null;
    public static final Key<Integer> TONEMAP_MAX_CURVE_POINTS = null;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/hardware/camera2/CameraCharacteristics$Key.class
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

    CameraCharacteristics() {
        throw new RuntimeException("Stub!");
    }

    public <T> T get(Key<T> key) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public List<Key<?>> getKeys() {
        throw new RuntimeException("Stub!");
    }

    public List<CaptureRequest.Key<?>> getAvailableCaptureRequestKeys() {
        throw new RuntimeException("Stub!");
    }

    public List<CaptureResult.Key<?>> getAvailableCaptureResultKeys() {
        throw new RuntimeException("Stub!");
    }
}
