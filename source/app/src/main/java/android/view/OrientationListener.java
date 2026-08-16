package android.view;

import android.content.Context;
import android.hardware.SensorListener;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/OrientationListener.class
 */
@Deprecated
public abstract class OrientationListener implements SensorListener {
    public static final int ORIENTATION_UNKNOWN = -1;

    public abstract void onOrientationChanged(int i10);

    public OrientationListener(Context context) {
        throw new RuntimeException("Stub!");
    }

    public OrientationListener(Context context, int rate) {
        throw new RuntimeException("Stub!");
    }

    public void enable() {
        throw new RuntimeException("Stub!");
    }

    public void disable() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onAccuracyChanged(int sensor, int accuracy) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onSensorChanged(int sensor, float[] values) {
        throw new RuntimeException("Stub!");
    }
}
