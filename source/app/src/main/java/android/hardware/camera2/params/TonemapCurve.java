package android.hardware.camera2.params;

import android.graphics.PointF;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/hardware/camera2/params/TonemapCurve.class
 */
public final class TonemapCurve {
    public static final int CHANNEL_BLUE = 2;
    public static final int CHANNEL_GREEN = 1;
    public static final int CHANNEL_RED = 0;
    public static final float LEVEL_BLACK = 0.0f;
    public static final float LEVEL_WHITE = 1.0f;
    public static final int POINT_SIZE = 2;

    public TonemapCurve(float[] red, float[] green, float[] blue) {
        throw new RuntimeException("Stub!");
    }

    public int getPointCount(int colorChannel) {
        throw new RuntimeException("Stub!");
    }

    public PointF getPoint(int colorChannel, int index) {
        throw new RuntimeException("Stub!");
    }

    public void copyColorCurve(int colorChannel, float[] destination, int offset) {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(Object obj) {
        throw new RuntimeException("Stub!");
    }

    public int hashCode() {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }
}
