package cb;

import java.util.Random;
import org.luaj.vm2.Lua;

public final class h {

    public static final float f34593a = 1.0E-9f;

    public static final float f34594b = 1.0E-6f;

    public static final float f34595c = 3.1415927f;

    public static final float f34596d = 6.2831855f;

    public static final float f34597e = 1.5707964f;

    public static final float f34598f = 2.7182817f;

    public static final int f34599g = 14;

    public static final int f34600h = 16383;

    public static final int f34601i = 16384;

    public static final float f34602j = 6.2831855f;

    public static final float f34603k = 360.0f;

    public static final float f34604l = 2607.5945f;

    public static final float f34605m = 45.511112f;

    public static final float f34606n = 57.295776f;

    public static final float f34607o = 57.295776f;

    public static final float f34608p = 0.017453292f;

    public static final float f34609q = 0.017453292f;

    public static Random f34610r = new r();

    public static final int f34611s = 16384;

    public static final double f34612t = 16384.0d;

    public static final double f34613u = 0.9999999d;

    public static final double f34614v = 16384.999999999996d;

    public static final double f34615w = 16384.5d;

    public static class a {

        public static final float[] f34616a = new float[16384];

        static {
            for (int i10 = 0; i10 < 16384; i10++) {
                f34616a[i10] = (float) Math.sin(((i10 + 0.5f) / 16384.0f) * 6.2831855f);
            }
            float[] fArr = f34616a;
            fArr[0] = 0.0f;
            fArr[4096] = 1.0f;
            fArr[8192] = 0.0f;
            fArr[12288] = -1.0f;
        }
    }

    public static float A(float inRangeStart, float inRangeEnd, float outRangeStart, float outRangeEnd, float value) {
        return outRangeStart + (((value - inRangeStart) * (outRangeEnd - outRangeStart)) / (inRangeEnd - inRangeStart));
    }

    public static int B(int value) {
        if (value == 0) {
            return 1;
        }
        int i10 = value - 1;
        int i11 = i10 | (i10 >> 1);
        int i12 = i11 | (i11 >> 2);
        int i13 = i12 | (i12 >> 4);
        int i14 = i13 | (i13 >> 8);
        return (i14 | (i14 >> 16)) + 1;
    }

    public static float C(float rangeStart, float rangeEnd, float value) {
        return (value - rangeStart) / (rangeEnd - rangeStart);
    }

    public static float D() {
        return f34610r.nextFloat();
    }

    public static float E(float range) {
        return f34610r.nextFloat() * range;
    }

    public static float F(float start, float end) {
        return start + (f34610r.nextFloat() * (end - start));
    }

    public static int G(int range) {
        return f34610r.nextInt(range + 1);
    }

    public static int H(int start, int end) {
        return start + f34610r.nextInt((end - start) + 1);
    }

    public static long I(long range) {
        return J(0L, range);
    }

    public static long J(long start, long end) {
        long nextLong = f34610r.nextLong();
        if (end >= start) {
            start = end;
            end = start;
        }
        long j10 = (start - end) + 1;
        long j11 = nextLong & 4294967295L;
        long j12 = 4294967295L & j10;
        long j13 = nextLong >>> 32;
        long j14 = j10 >>> 32;
        return end + ((j12 * j13) >>> 32) + ((j11 * j14) >>> 32) + (j13 * j14);
    }

    public static boolean K() {
        return f34610r.nextBoolean();
    }

    public static boolean L(float chance) {
        return D() < chance;
    }

    public static int M() {
        return (f34610r.nextInt() >> 31) | 1;
    }

    public static float N() {
        return f34610r.nextFloat() - f34610r.nextFloat();
    }

    public static float O(float max) {
        return (f34610r.nextFloat() - f34610r.nextFloat()) * max;
    }

    public static float P(float min, float max) {
        return Q(min, max, (min + max) * 0.5f);
    }

    public static float Q(float min, float max, float mode) {
        return f34610r.nextFloat() <= (mode - min) / (max - min) ? min + ((float) Math.sqrt(r0 * r1 * r2)) : max - ((float) Math.sqrt(((1.0f - r0) * r1) * (max - mode)));
    }

    public static int R(float value) {
        return ((int) (value + 16384.5d)) + Lua.MASK_Bx;
    }

    public static int S(float value) {
        return (int) (value + 0.5f);
    }

    public static float T(float radians) {
        return a.f34616a[((int) (radians * 2607.5945f)) & 16383];
    }

    public static float U(float degrees) {
        return a.f34616a[((int) (degrees * 45.511112f)) & 16383];
    }

    public static float a(float a10) {
        float f10 = a10 * a10;
        float f11 = a10 * f10;
        return a10 >= 0.0f ? ((float) Math.sqrt(1.0f - a10)) * (((1.5707288f - (a10 * 0.2121144f)) + (f10 * 0.074261f)) - (f11 * 0.0187293f)) : 3.1415927f - (((float) Math.sqrt(1.0f + a10)) * ((((a10 * 0.2121144f) + 1.5707288f) + (f10 * 0.074261f)) + (f11 * 0.0187293f)));
    }

    public static float b(float a10) {
        float f10 = a10 * a10;
        return a10 >= 0.0f ? 1.5707964f - (((float) Math.sqrt(1.0f - a10)) * (((1.5707288f - (a10 * 0.2121144f)) + (f10 * 0.074261f)) - ((a10 * f10) * 0.0187293f))) : (((float) Math.sqrt(1.0f + a10)) * ((((a10 * 0.2121144f) + 1.5707288f) + (f10 * 0.074261f)) + (r1 * 0.0187293f))) - 1.5707964f;
    }

    public static float c(float i10) {
        double min = Math.min(Math.abs(i10), Double.MAX_VALUE);
        double d10 = (min - 1.0d) / (min + 1.0d);
        double d11 = d10 * d10;
        double d12 = d10 * d11;
        double d13 = d12 * d11;
        double d14 = d13 * d11;
        double d15 = d14 * d11;
        return (float) Math.copySign(((((((d10 * 0.99997726d) - (d12 * 0.33262347d)) + (d13 * 0.19354346d)) - (d14 * 0.11643287d)) + (d15 * 0.05265332d)) - ((d11 * d15) * 0.0117212d)) + 0.7853981633974483d, i10);
    }

    public static float d(final float y10, float x10) {
        float f10 = y10 / x10;
        if (f10 != f10) {
            f10 = y10 == x10 ? 1.0f : -1.0f;
        } else {
            float f11 = f10 - f10;
            if (f11 != f11) {
                x10 = 0.0f;
            }
        }
        return x10 > 0.0f ? e(f10) : x10 < 0.0f ? y10 >= 0.0f ? e(f10) + 3.1415927f : e(f10) - 3.1415927f : y10 > 0.0f ? x10 + 1.5707964f : y10 < 0.0f ? x10 - 1.5707964f : x10 + y10;
    }

    public static float e(double i10) {
        double abs = Math.abs(i10);
        double d10 = (abs - 1.0d) / (abs + 1.0d);
        double d11 = d10 * d10;
        double d12 = d10 * d11;
        double d13 = d12 * d11;
        double d14 = d13 * d11;
        double d15 = d14 * d11;
        return (float) Math.copySign(((((((d10 * 0.99997726d) - (d12 * 0.33262347d)) + (d13 * 0.19354346d)) - (d14 * 0.11643287d)) + (d15 * 0.05265332d)) - ((d11 * d15) * 0.0117212d)) + 0.7853981633974483d, i10);
    }

    public static int f(float value) {
        return 16384 - ((int) (16384.0d - value));
    }

    public static int g(float value) {
        return (int) (value + 0.9999999d);
    }

    public static double h(double value, double min, double max) {
        return value < min ? min : value > max ? max : value;
    }

    public static float i(float value, float min, float max) {
        return value < min ? min : value > max ? max : value;
    }

    public static int j(int value, int min, int max) {
        return value < min ? min : value > max ? max : value;
    }

    public static long k(long value, long min, long max) {
        return value < min ? min : value > max ? max : value;
    }

    public static short l(short value, short min, short max) {
        return value < min ? min : value > max ? max : value;
    }

    public static float m(float radians) {
        return a.f34616a[((int) ((radians + 1.5707964f) * 2607.5945f)) & 16383];
    }

    public static float n(float degrees) {
        return a.f34616a[((int) ((degrees + 90.0f) * 45.511112f)) & 16383];
    }

    public static int o(float value) {
        return ((int) (value + 16384.0d)) + Lua.MASK_Bx;
    }

    public static int p(float value) {
        return (int) value;
    }

    public static boolean q(float a10, float b10) {
        return Math.abs(a10 - b10) <= 1.0E-6f;
    }

    public static boolean r(float a10, float b10, float tolerance) {
        return Math.abs(a10 - b10) <= tolerance;
    }

    public static boolean s(int value) {
        return value != 0 && (value & (value + (-1))) == 0;
    }

    public static boolean t(float value) {
        return Math.abs(value) <= 1.0E-6f;
    }

    public static boolean u(float value, float tolerance) {
        return Math.abs(value) <= tolerance;
    }

    public static float v(float fromValue, float toValue, float progress) {
        return fromValue + ((toValue - fromValue) * progress);
    }

    public static float w(float fromRadians, float toRadians, float progress) {
        return ((fromRadians + ((((((toRadians - fromRadians) + 6.2831855f) + 3.1415927f) % 6.2831855f) - 3.1415927f) * progress)) + 6.2831855f) % 6.2831855f;
    }

    public static float x(float fromDegrees, float toDegrees, float progress) {
        return ((fromDegrees + ((((((toDegrees - fromDegrees) + 360.0f) + 180.0f) % 360.0f) - 180.0f) * progress)) + 360.0f) % 360.0f;
    }

    public static float y(float a10, float value) {
        return (float) (Math.log(value) / Math.log(a10));
    }

    public static float z(float value) {
        return y(2.0f, value);
    }
}
