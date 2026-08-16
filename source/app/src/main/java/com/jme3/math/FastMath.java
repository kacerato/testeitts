package com.jme3.math;

import java.util.Random;
import kotlin.jvm.internal.r0;

public final class FastMath {
    public static final double DBL_EPSILON = 2.220446049250313E-16d;
    public static final float DEG_TO_RAD = 0.017453292f;
    public static final float FLT_EPSILON = 1.1920929E-7f;
    public static final float HALF_PI = 1.5707964f;
    public static final float INV_PI = 0.31830987f;
    public static final float INV_TWO_PI = 0.15915494f;
    public static final float ONE_THIRD = 0.33333334f;
    public static final float PI = 3.1415927f;
    public static final float QUARTER_PI = 0.7853982f;
    public static final float RAD_TO_DEG = 57.295776f;
    public static final float TWO_PI = 6.2831855f;
    public static final float ZERO_TOLERANCE = 1.0E-4f;
    public static final Random rand = new Random(System.currentTimeMillis());

    private FastMath() {
    }

    public static float abs(float f10) {
        return f10 < 0.0f ? -f10 : f10;
    }

    public static float acos(float f10) {
        if (-1.0f >= f10) {
            return 3.1415927f;
        }
        if (f10 < 1.0f) {
            return (float) Math.acos(f10);
        }
        return 0.0f;
    }

    public static int alignToPowerOfTwo(int i10, int i11) {
        if (isPowerOfTwo(i11)) {
            return ((i10 - 1) | (i11 - 1)) + 1;
        }
        throw new IllegalArgumentException("p must be a power of two, got: " + i11);
    }

    public static boolean approximateEquals(float f10, float f11) {
        return f10 == f11 || abs(f10 - f11) / Math.max(abs(f10), abs(f11)) <= 1.0E-5f;
    }

    public static float asin(float f10) {
        if (-1.0f >= f10) {
            return -1.5707964f;
        }
        if (f10 < 1.0f) {
            return (float) Math.asin(f10);
        }
        return 1.5707964f;
    }

    public static float atan(float f10) {
        return (float) Math.atan(f10);
    }

    public static float atan2(float f10, float f11) {
        return (float) Math.atan2(f10, f11);
    }

    public static Vector3f cartesianToSpherical(Vector3f vector3f, Vector3f vector3f2) {
        if (vector3f2 == null) {
            vector3f2 = new Vector3f();
        }
        float f10 = vector3f.f81611x;
        if (f10 == 0.0f) {
            f10 = 1.1920929E-7f;
        }
        float f11 = vector3f.f81612y;
        float f12 = (f10 * f10) + (f11 * f11);
        float f13 = vector3f.f81613z;
        vector3f2.f81611x = sqrt(f12 + (f13 * f13));
        float atan = atan(vector3f.f81613z / f10);
        vector3f2.f81612y = atan;
        if (f10 < 0.0f) {
            vector3f2.f81612y = atan + 3.1415927f;
        }
        vector3f2.f81613z = asin(vector3f.f81612y / vector3f2.f81611x);
        return vector3f2;
    }

    public static Vector3f cartesianZToSpherical(Vector3f vector3f, Vector3f vector3f2) {
        if (vector3f2 == null) {
            vector3f2 = new Vector3f();
        }
        float f10 = vector3f.f81611x;
        if (f10 == 0.0f) {
            f10 = 1.1920929E-7f;
        }
        float f11 = vector3f.f81612y;
        float f12 = (f10 * f10) + (f11 * f11);
        float f13 = vector3f.f81613z;
        vector3f2.f81611x = sqrt(f12 + (f13 * f13));
        float atan = atan(vector3f.f81613z / f10);
        vector3f2.f81613z = atan;
        if (f10 < 0.0f) {
            vector3f2.f81613z = atan + 3.1415927f;
        }
        vector3f2.f81612y = asin(vector3f.f81612y / vector3f2.f81611x);
        return vector3f2;
    }

    public static float ceil(float f10) {
        return (float) Math.ceil(f10);
    }

    public static float clamp(float f10, float f11, float f12) {
        return f10 < f11 ? f11 : f10 > f12 ? f12 : f10;
    }

    public static Vector3f computeNormal(Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3) {
        return vector3f3.subtract(vector3f2).crossLocal(vector3f.subtract(vector3f2)).normalizeLocal();
    }

    public static short convertFloatToHalf(float f10) {
        if (Float.isNaN(f10)) {
            throw new UnsupportedOperationException("NaN to half conversion not supported!");
        }
        if (f10 == Float.POSITIVE_INFINITY) {
            return (short) 31744;
        }
        if (f10 == Float.NEGATIVE_INFINITY) {
            return (short) -1024;
        }
        if (f10 == 0.0f) {
            return (short) 0;
        }
        if (f10 == -0.0f) {
            return r0.f95769b;
        }
        if (f10 > 65504.0f) {
            return (short) 31743;
        }
        if (f10 < -65504.0f) {
            return (short) -1025;
        }
        if (f10 > 0.0f && f10 < 3.054738E-5f) {
            return (short) 1;
        }
        if (f10 < 0.0f && f10 > -3.054738E-5f) {
            return (short) -32767;
        }
        int floatToIntBits = Float.floatToIntBits(f10);
        return (short) (((floatToIntBits >> 13) & 1023) | ((floatToIntBits >> 16) & 32768) | (31744 & (((2139095040 & floatToIntBits) - 939524096) >> 13)));
    }

    public static float convertHalfToFloat(short s10) {
        if (s10 == 0) {
            return 0.0f;
        }
        if (s10 == 31744) {
            return Float.POSITIVE_INFINITY;
        }
        if (s10 == 32768) {
            return -0.0f;
        }
        if (s10 == 64512) {
            return Float.NEGATIVE_INFINITY;
        }
        return Float.intBitsToFloat(((s10 & 1023) << 13) | ((32768 & s10) << 16) | (((s10 & 31744) + 114688) << 13));
    }

    public static float copysign(float f10, float f11) {
        return (f11 < 0.0f || f10 > 0.0f) ? (f11 >= 0.0f || f10 < 0.0f) ? f10 : -f10 : -f10;
    }

    public static float cos(float f10) {
        return (float) Math.cos(f10);
    }

    public static int counterClockwise(Vector2f vector2f, Vector2f vector2f2, Vector2f vector2f3) {
        float f10 = vector2f2.f81609x;
        float f11 = vector2f.f81609x;
        float f12 = f10 - f11;
        float f13 = vector2f2.f81610y;
        float f14 = vector2f.f81610y;
        float f15 = f13 - f14;
        float f16 = vector2f3.f81609x - f11;
        float f17 = vector2f3.f81610y - f14;
        float f18 = f12 * f17;
        float f19 = f15 * f16;
        if (f18 > f19) {
            return 1;
        }
        if (f18 >= f19 && f12 * f16 >= 0.0f && f15 * f17 >= 0.0f) {
            return (f12 * f12) + (f15 * f15) < (f16 * f16) + (f17 * f17) ? 1 : 0;
        }
        return -1;
    }

    public static float determinant(double d10, double d11, double d12, double d13, double d14, double d15, double d16, double d17, double d18, double d19, double d20, double d21, double d22, double d23, double d24, double d25) {
        double d26 = (d18 * d23) - (d19 * d22);
        double d27 = (d18 * d24) - (d20 * d22);
        double d28 = (d18 * d25) - (d21 * d22);
        double d29 = (d19 * d24) - (d20 * d23);
        double d30 = (d19 * d25) - (d21 * d23);
        double d31 = (d20 * d25) - (d21 * d24);
        return (float) (((((((d15 * d31) - (d16 * d30)) + (d17 * d29)) * d10) - ((((d31 * d14) - (d16 * d28)) + (d17 * d27)) * d11)) + (d12 * (((d30 * d14) - (d28 * d15)) + (d17 * d26)))) - (d13 * (((d14 * d29) - (d27 * d15)) + (d26 * d16))));
    }

    public static float exp(float f10) {
        return (float) Math.exp(f10);
    }

    public static float extrapolateLinear(float f10, float f11, float f12) {
        return ((1.0f - f10) * f11) + (f10 * f12);
    }

    public static float fastInvSqrt(float f10) {
        float f11 = 0.5f * f10;
        float intBitsToFloat = Float.intBitsToFloat(1597463174 - (Float.floatToIntBits(f10) >> 1));
        return intBitsToFloat * (1.5f - ((f11 * intBitsToFloat) * intBitsToFloat));
    }

    public static float floor(float f10) {
        return (float) Math.floor(f10);
    }

    public static float getBezierP1toP2Length(Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3, Vector3f vector3f4) {
        Vector3f m1292clone = vector3f.m1292clone();
        Vector3f vector3f5 = new Vector3f();
        float f10 = 0.0f;
        for (float f11 = 0.0f; f11 <= 1.0f; f11 += 0.02f) {
            interpolateBezier(f11, vector3f, vector3f2, vector3f3, vector3f4, vector3f5);
            f10 += m1292clone.subtractLocal(vector3f5).length();
            m1292clone.set(vector3f5);
        }
        return f10;
    }

    public static float getCatmullRomP1toP2Length(Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3, Vector3f vector3f4, float f10, float f11, float f12) {
        float f13 = (f10 + f11) * 0.5f;
        Vector3f m1292clone = vector3f2.m1292clone();
        if (f10 != 0.0f) {
            interpolateCatmullRom(f10, f12, vector3f, vector3f2, vector3f3, vector3f4, m1292clone);
        }
        Vector3f m1292clone2 = vector3f3.m1292clone();
        if (f11 != 1.0f) {
            interpolateCatmullRom(f11, f12, vector3f, vector3f2, vector3f3, vector3f4, m1292clone2);
        }
        Vector3f interpolateCatmullRom = interpolateCatmullRom(f13, f12, vector3f, vector3f2, vector3f3, vector3f4);
        float length = m1292clone2.subtract(m1292clone).length();
        float length2 = interpolateCatmullRom.subtract(m1292clone).length();
        float length3 = m1292clone2.subtract(interpolateCatmullRom).length();
        if (length + 0.001f < length2 + length3) {
            float catmullRomP1toP2Length = getCatmullRomP1toP2Length(vector3f, vector3f2, vector3f3, vector3f4, f10, f13, f12);
            length3 = getCatmullRomP1toP2Length(vector3f, vector3f2, vector3f3, vector3f4, f13, f11, f12);
            length2 = catmullRomP1toP2Length;
        }
        return length2 + length3;
    }

    public static Vector2f insideUnitCircle() {
        float nextRandomFloat = nextRandomFloat() * 6.2831855f;
        float sqrt = sqrt(nextRandomFloat());
        return new Vector2f(cos(nextRandomFloat) * sqrt, sqrt * sin(nextRandomFloat));
    }

    public static Vector3f insideUnitSphere() {
        float nextRandomFloat = nextRandomFloat();
        float nextRandomFloat2 = nextRandomFloat() * 6.2831855f;
        float acos = acos((nextRandomFloat() * 2.0f) - 1.0f);
        float cbrt = (float) Math.cbrt(nextRandomFloat);
        float sin = sin(acos) * cbrt;
        return new Vector3f(cos(nextRandomFloat2) * sin, sin * sin(nextRandomFloat2), cbrt * cos(acos));
    }

    public static float interpolateBezier(float f10, float f11, float f12, float f13, float f14) {
        float f15 = 1.0f - f10;
        float f16 = f15 * f15;
        float f17 = f10 * f10;
        return (f11 * f16 * f15) + (f12 * 3.0f * f10 * f16) + (f13 * 3.0f * f17 * f15) + (f14 * f17 * f10);
    }

    public static float interpolateCatmullRom(float f10, float f11, float f12, float f13, float f14, float f15) {
        float f16 = f11 * 2.0f;
        float f17 = (f16 * f12) + ((f11 - 3.0f) * f13) + ((3.0f - f16) * f14);
        float f18 = -f11;
        return (((((((f18 * f12) + ((2.0f - f11) * f13) + ((f11 - 2.0f) * f14) + (f11 * f15)) * f10) + f17 + (f18 * f15)) * f10) + ((-1.0f) * f11 * f12) + (f11 * f14)) * f10) + f13;
    }

    public static float interpolateLinear(float f10, float f11, float f12) {
        return (f11 != f12 && f10 > 0.0f) ? f10 >= 1.0f ? f12 : ((1.0f - f10) * f11) + (f10 * f12) : f11;
    }

    public static float invSqrt(float f10) {
        return (float) (1.0d / Math.sqrt(f10));
    }

    public static boolean isPowerOfTwo(int i10) {
        return i10 > 0 && (i10 & (i10 + (-1))) == 0;
    }

    public static float log(float f10) {
        return (float) Math.log(f10);
    }

    public static int nearestPowerOfTwo(int i10) {
        int i11 = i10 - 1;
        int i12 = i11 | (i11 >> 1);
        int i13 = i12 | (i12 >> 2);
        int i14 = i13 | (i13 >> 4);
        int i15 = i14 | (i14 >> 8);
        int i16 = (i15 | (i15 >> 16)) + 1;
        return i16 + (i16 != 0 ? 0 : 1);
    }

    public static float nextRandomFloat() {
        return rand.nextFloat();
    }

    public static int nextRandomInt() {
        return rand.nextInt();
    }

    public static float normalize(float f10, float f11, float f12) {
        if (Float.isInfinite(f10) || Float.isNaN(f10)) {
            return 0.0f;
        }
        float f13 = f12 - f11;
        while (f10 > f12) {
            f10 -= f13;
        }
        while (f10 < f11) {
            f10 += f13;
        }
        return f10;
    }

    public static Vector3f onUnitSphere() {
        float nextRandomFloat = nextRandomFloat() * 6.2831855f;
        float acos = (float) Math.acos((nextRandomFloat() * 2.0f) - 1.0f);
        float cos = cos(acos);
        float sin = sin(acos);
        return new Vector3f(cos(nextRandomFloat) * sin, sin(nextRandomFloat) * sin, cos);
    }

    public static int pointInsideTriangle(Vector2f vector2f, Vector2f vector2f2, Vector2f vector2f3, Vector2f vector2f4) {
        int counterClockwise;
        int counterClockwise2 = counterClockwise(vector2f, vector2f2, vector2f4);
        if (counterClockwise2 == 0 || (counterClockwise = counterClockwise(vector2f2, vector2f3, vector2f4)) == 0) {
            return 1;
        }
        if (counterClockwise != counterClockwise2) {
            return 0;
        }
        int counterClockwise3 = counterClockwise(vector2f3, vector2f, vector2f4);
        if (counterClockwise3 == 0) {
            return 1;
        }
        if (counterClockwise3 != counterClockwise2) {
            return 0;
        }
        return counterClockwise3;
    }

    public static float pow(float f10, float f11) {
        return (float) Math.pow(f10, f11);
    }

    public static float saturate(float f10) {
        return clamp(f10, 0.0f, 1.0f);
    }

    public static int sign(int i10) {
        if (i10 > 0) {
            return 1;
        }
        return i10 < 0 ? -1 : 0;
    }

    public static float sin(float f10) {
        return (float) Math.sin(f10);
    }

    public static Vector3f sphericalToCartesian(Vector3f vector3f, Vector3f vector3f2) {
        if (vector3f2 == null) {
            vector3f2 = new Vector3f();
        }
        vector3f2.f81612y = vector3f.f81611x * sin(vector3f.f81613z);
        float cos = vector3f.f81611x * cos(vector3f.f81613z);
        vector3f2.f81611x = cos(vector3f.f81612y) * cos;
        vector3f2.f81613z = cos * sin(vector3f.f81612y);
        return vector3f2;
    }

    public static Vector3f sphericalToCartesianZ(Vector3f vector3f, Vector3f vector3f2) {
        if (vector3f2 == null) {
            vector3f2 = new Vector3f();
        }
        vector3f2.f81612y = vector3f.f81611x * sin(vector3f.f81612y);
        float cos = vector3f.f81611x * cos(vector3f.f81612y);
        vector3f2.f81611x = cos(vector3f.f81613z) * cos;
        vector3f2.f81613z = cos * sin(vector3f.f81613z);
        return vector3f2;
    }

    public static float sqr(float f10) {
        return f10 * f10;
    }

    public static float sqrt(float f10) {
        return (float) Math.sqrt(f10);
    }

    public static float tan(float f10) {
        return (float) Math.tan(f10);
    }

    public static int toMultipleOf(int i10, int i11) {
        if (i11 > 0) {
            if (isPowerOfTwo(i11)) {
                return ((i10 - 1) | (i11 - 1)) + 1;
            }
            int i12 = i10 % i11;
            return i12 == 0 ? i10 : i10 + (i11 - i12);
        }
        throw new IllegalArgumentException("p must be positive, got: " + i11);
    }

    public static float unInterpolateLinear(float f10, float f11, float f12) {
        return (f10 - f11) / (f12 - f11);
    }

    public static Vector3f extrapolateLinear(float f10, Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3) {
        if (vector3f3 == null) {
            vector3f3 = new Vector3f();
        }
        vector3f3.f81611x = extrapolateLinear(f10, vector3f.f81611x, vector3f2.f81611x);
        vector3f3.f81612y = extrapolateLinear(f10, vector3f.f81612y, vector3f2.f81612y);
        vector3f3.f81613z = extrapolateLinear(f10, vector3f.f81613z, vector3f2.f81613z);
        return vector3f3;
    }

    public static Vector3f interpolateBezier(float f10, Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3, Vector3f vector3f4, Vector3f vector3f5) {
        if (vector3f5 == null) {
            vector3f5 = new Vector3f();
        }
        vector3f5.f81611x = interpolateBezier(f10, vector3f.f81611x, vector3f2.f81611x, vector3f3.f81611x, vector3f4.f81611x);
        vector3f5.f81612y = interpolateBezier(f10, vector3f.f81612y, vector3f2.f81612y, vector3f3.f81612y, vector3f4.f81612y);
        vector3f5.f81613z = interpolateBezier(f10, vector3f.f81613z, vector3f2.f81613z, vector3f3.f81613z, vector3f4.f81613z);
        return vector3f5;
    }

    public static Vector3f interpolateCatmullRom(float f10, float f11, Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3, Vector3f vector3f4, Vector3f vector3f5) {
        if (vector3f5 == null) {
            vector3f5 = new Vector3f();
        }
        vector3f5.f81611x = interpolateCatmullRom(f10, f11, vector3f.f81611x, vector3f2.f81611x, vector3f3.f81611x, vector3f4.f81611x);
        vector3f5.f81612y = interpolateCatmullRom(f10, f11, vector3f.f81612y, vector3f2.f81612y, vector3f3.f81612y, vector3f4.f81612y);
        vector3f5.f81613z = interpolateCatmullRom(f10, f11, vector3f.f81613z, vector3f2.f81613z, vector3f3.f81613z, vector3f4.f81613z);
        return vector3f5;
    }

    public static Vector3f interpolateLinear(float f10, Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3) {
        if (vector3f3 == null) {
            vector3f3 = new Vector3f();
        }
        vector3f3.f81611x = interpolateLinear(f10, vector3f.f81611x, vector3f2.f81611x);
        vector3f3.f81612y = interpolateLinear(f10, vector3f.f81612y, vector3f2.f81612y);
        vector3f3.f81613z = interpolateLinear(f10, vector3f.f81613z, vector3f2.f81613z);
        return vector3f3;
    }

    public static float log(float f10, float f11) {
        return (float) (Math.log(f10) / Math.log(f11));
    }

    public static float nextRandomFloat(float f10, float f11) {
        return f10 + ((f11 - f10) * nextRandomFloat());
    }

    public static int nextRandomInt(int i10, int i11) {
        return ((int) (nextRandomFloat() * ((i11 - i10) + 1))) + i10;
    }

    public static float sign(float f10) {
        return Math.signum(f10);
    }

    public static Vector3f extrapolateLinear(float f10, Vector3f vector3f, Vector3f vector3f2) {
        return extrapolateLinear(f10, vector3f, vector3f2, null);
    }

    public static Vector3f interpolateBezier(float f10, Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3, Vector3f vector3f4) {
        return interpolateBezier(f10, vector3f, vector3f2, vector3f3, vector3f4, null);
    }

    public static Vector3f interpolateCatmullRom(float f10, float f11, Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3, Vector3f vector3f4) {
        return interpolateCatmullRom(f10, f11, vector3f, vector3f2, vector3f3, vector3f4, null);
    }

    public static Vector3f interpolateLinear(float f10, Vector3f vector3f, Vector3f vector3f2) {
        return interpolateLinear(f10, vector3f, vector3f2, null);
    }
}
