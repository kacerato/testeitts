package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:Math.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:Math.class
  classes.dex
 */
@ClassCategory(cat = {"Math"})
public final class Math {
    public static final float PI = 3.1415927f;
    public static final float PI2 = 6.2831855f;
    public static final float RADIANS = 0.017453292f;
    public static final int BYTES_IN_FLOAT = 4;
    public static final int BYTES_IN_INT = 4;
    public static final int BYTES_IN_SHORT = 2;

    private Math() {
    }

    public static float bySecond() {
        return 0.0f;
    }

    public static float bySecond(float f10) {
        return 0.0f;
    }

    public static float sin(float f10) {
        return 0.0f;
    }

    public static float cos(float f10) {
        return 0.0f;
    }

    public static float tan(float f10) {
        return 0.0f;
    }

    public static float asin(float f10) {
        return 0.0f;
    }

    public static float acos(float f10) {
        return 0.0f;
    }

    public static float atan(float f10) {
        return 0.0f;
    }

    public static float atan2(float f10, float f11) {
        return 0.0f;
    }

    public static float sinRad(float f10) {
        return 0.0f;
    }

    public static float cosRad(float f10) {
        return 0.0f;
    }

    public static float tanRad(float f10) {
        return 0.0f;
    }

    public static float atan2Rad(float f10, float f11) {
        return 0.0f;
    }

    public static float asinRad(float f10) {
        return 0.0f;
    }

    public static float acosRad(float f10) {
        return 0.0f;
    }

    public static float atanRad(float f10) {
        return 0.0f;
    }

    public static float sqrt(float f10) {
        return 0.0f;
    }

    public static float cbrt(float f10) {
        return 0.0f;
    }

    public static float pow(float f10, float f11) {
        return 0.0f;
    }

    public static float abs(float f10) {
        return 0.0f;
    }

    public static int abs(int i10) {
        return 0;
    }

    public static double abs(double d10) {
        return 0.0d;
    }

    public static float ceil(float f10) {
        return 0.0f;
    }

    public static float floor(float f10) {
        return 0.0f;
    }

    public static int floorDiv(int i10, int i11) {
        int i12 = i10 / i11;
        if ((i10 ^ i11) < 0 && i12 * i11 != i10) {
            i12--;
        }
        return i12;
    }

    public static float round(float f10) {
        return 0.0f;
    }

    public static float exp(float f10) {
        return 0.0f;
    }

    public static float log(float f10) {
        return 0.0f;
    }

    public static float log10(float f10) {
        return 0.0f;
    }

    public static float toRadians(float f10) {
        return 0.0f;
    }

    public static float toDegrees(float f10) {
        return 0.0f;
    }

    public static int dptopx(int i10) {
        return 0;
    }

    public static float deadzone(float f10, float f11) {
        return 0.0f;
    }

    public static boolean isOnDeadzone(float f10, float f11) {
        return false;
    }

    public static float clamp(float f10, float f11, float f12) {
        return 0.0f;
    }

    public static float clamp(float f10, float f11) {
        return 0.0f;
    }

    public static float clampMin(float f10, float f11) {
        return 0.0f;
    }

    public static float clamp01(float f10) {
        return 0.0f;
    }

    public static float max(float f10, float f11) {
        return java.lang.Math.max(f10, f11);
    }

    public static float max(float... fArr) {
        float f10 = fArr[0];
        for (int i10 = 1; i10 < fArr.length; i10++) {
            if (fArr[i10] > f10) {
                f10 = fArr[i10];
            }
        }
        return f10;
    }

    public static int max(int i10, int i11) {
        return java.lang.Math.max(i10, i11);
    }

    public static int max(int... iArr) {
        int i10 = iArr[0];
        for (int i11 = 1; i11 < iArr.length; i11++) {
            if (iArr[i11] > i10) {
                i10 = iArr[i11];
            }
        }
        return i10;
    }

    public static double max(double d10, double d11) {
        return java.lang.Math.max(d10, d11);
    }

    public static double max(double... dArr) {
        double d10 = dArr[0];
        for (int i10 = 1; i10 < dArr.length; i10++) {
            if (dArr[i10] > d10) {
                d10 = dArr[i10];
            }
        }
        return d10;
    }

    public static long max(long j10, long j11) {
        return java.lang.Math.max(j10, j11);
    }

    public static long max(long... jArr) {
        long j10 = jArr[0];
        for (int i10 = 1; i10 < jArr.length; i10++) {
            if (jArr[i10] > j10) {
                j10 = jArr[i10];
            }
        }
        return j10;
    }

    public static float min(float f10, float f11) {
        return java.lang.Math.min(f10, f11);
    }

    public static float min(float... fArr) {
        float f10 = fArr[0];
        for (int i10 = 1; i10 < fArr.length; i10++) {
            if (fArr[i10] < f10) {
                f10 = fArr[i10];
            }
        }
        return f10;
    }

    public static int min(int i10, int i11) {
        return java.lang.Math.min(i10, i11);
    }

    public static int min(int... iArr) {
        int i10 = iArr[0];
        for (int i11 = 1; i11 < iArr.length; i11++) {
            if (iArr[i11] < i10) {
                i10 = iArr[i11];
            }
        }
        return i10;
    }

    public static double min(double d10, double d11) {
        return java.lang.Math.min(d10, d11);
    }

    public static double min(double... dArr) {
        double d10 = dArr[0];
        for (int i10 = 1; i10 < dArr.length; i10++) {
            if (dArr[i10] < d10) {
                d10 = dArr[i10];
            }
        }
        return d10;
    }

    public static long min(long j10, long j11) {
        return java.lang.Math.min(j10, j11);
    }

    public static long min(long... jArr) {
        long j10 = jArr[0];
        for (int i10 = 1; i10 < jArr.length; i10++) {
            if (jArr[i10] < j10) {
                j10 = jArr[i10];
            }
        }
        return j10;
    }

    public static float blend(float f10, float f11, float f12) {
        return 0.0f;
    }

    public static float lerp(float f10, float f11, float f12) {
        return 0.0f;
    }

    public static float lerpInSeconds(float f10, float f11, float f12) {
        return 0.0f;
    }

    public static boolean negative(boolean z10) {
        return false;
    }

    public static float negative(float f10) {
        return 0.0f;
    }

    public static int negative(int i10) {
        return 0;
    }

    public static float inverseSQRT(float f10) {
        return 0.0f;
    }

    public static float lerpAngle(float f10, float f11, float f12) {
        return 0.0f;
    }

    public static float lerpAngleInSeconds(float f10, float f11, float f12) {
        return 0.0f;
    }

    public static float clampAngleTo360(float f10) {
        return 0.0f;
    }

    public static float rangeConverter(float f10, float f11, float f12, float f13, float f14) {
        return 0.0f;
    }

    public static Vertex createSubdividedPlane(int i10) {
        return null;
    }

    public static Vertex createSubdividedPlane(int i10, Vector2 vector2) {
        return null;
    }

    public static float fixNaN(float f10) {
        return 0.0f;
    }

    public static float pitchDegrees(Vector3 vector3, Vector3 vector32) {
        return 0.0f;
    }

    public static float normalizeDeg(float f10) {
        return 0.0f;
    }

    public static float deltaPitchDegrees(float f10, Vector3 vector3, Vector3 vector32) {
        return 0.0f;
    }
}
