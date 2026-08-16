package android.hardware;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/hardware/SensorListener.class
 */
@Deprecated
public interface SensorListener {
    void onSensorChanged(int i10, float[] fArr);

    void onAccuracyChanged(int i10, int i11);
}
