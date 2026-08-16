package android.hardware;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/hardware/SensorEventCallback.class
 */
public abstract class SensorEventCallback implements SensorEventListener2 {
    public SensorEventCallback() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onSensorChanged(SensorEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onAccuracyChanged(Sensor sensor, int accuracy) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onFlushCompleted(Sensor sensor) {
        throw new RuntimeException("Stub!");
    }

    public void onSensorAdditionalInfo(SensorAdditionalInfo info) {
        throw new RuntimeException("Stub!");
    }
}
