package android.hardware;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/hardware/SensorEventListener.class
 */
public interface SensorEventListener {
    void onSensorChanged(SensorEvent sensorEvent);

    void onAccuracyChanged(Sensor sensor, int i10);
}
