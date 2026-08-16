package android.os;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/os/HardwarePropertiesManager.class
 */
public class HardwarePropertiesManager {
    public static final int DEVICE_TEMPERATURE_BATTERY = 2;
    public static final int DEVICE_TEMPERATURE_CPU = 0;
    public static final int DEVICE_TEMPERATURE_GPU = 1;
    public static final int DEVICE_TEMPERATURE_SKIN = 3;
    public static final int TEMPERATURE_CURRENT = 0;
    public static final int TEMPERATURE_SHUTDOWN = 2;
    public static final int TEMPERATURE_THROTTLING = 1;
    public static final int TEMPERATURE_THROTTLING_BELOW_VR_MIN = 3;
    public static final float UNDEFINED_TEMPERATURE = -3.4028235E38f;

    HardwarePropertiesManager() {
        throw new RuntimeException("Stub!");
    }

    public float[] getDeviceTemperatures(int type, int source) {
        throw new RuntimeException("Stub!");
    }

    public CpuUsageInfo[] getCpuUsages() {
        throw new RuntimeException("Stub!");
    }

    public float[] getFanSpeeds() {
        throw new RuntimeException("Stub!");
    }
}
