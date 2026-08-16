package android.hardware;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/hardware/SensorAdditionalInfo.class
 */
public class SensorAdditionalInfo {
    public static final int TYPE_FRAME_BEGIN = 0;
    public static final int TYPE_FRAME_END = 1;
    public static final int TYPE_INTERNAL_TEMPERATURE = 65537;
    public static final int TYPE_SAMPLING = 65540;
    public static final int TYPE_SENSOR_PLACEMENT = 65539;
    public static final int TYPE_UNTRACKED_DELAY = 65536;
    public static final int TYPE_VEC3_CALIBRATION = 65538;
    public final float[] floatValues = null;
    public final int[] intValues = null;
    public final Sensor sensor;
    public final int serial;
    public final int type;

    SensorAdditionalInfo() {
        throw new RuntimeException("Stub!");
    }
}
