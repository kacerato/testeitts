package Nc;

import java.util.Random;
import kotlin.jvm.internal.r0;

public final class a {

    public static final double f15875a = 2.220446049250313E-16d;

    public static final float f15876b = 1.1920929E-7f;

    public static final float f15877c = 1.0E-4f;

    public static final float f15878d = 0.33333334f;

    public static final float f15879e = 3.1415927f;

    public static final float f15880f = 6.2831855f;

    public static final float f15881g = 1.5707964f;

    public static final float f15882h = 0.7853982f;

    public static final float f15883i = 0.31830987f;

    public static final float f15884j = 0.15915494f;

    public static final float f15885k = 0.017453292f;

    public static final float f15886l = 57.295776f;

    public static final Random f15887m = new Random(System.currentTimeMillis());

    public static float A(float fBase, float fExponent) {
        return (float) Math.pow(fBase, fExponent);
    }

    public static float B(float input) {
        return h(input, 0.0f, 1.0f);
    }

    public static float C(float fValue) {
        return Math.signum(fValue);
    }

    public static int D(int iValue) {
        if (iValue > 0) {
            return 1;
        }
        return iValue < 0 ? -1 : 0;
    }

    public static float E(float v10) {
        return (float) Math.sin(v10);
    }

    public static float F(float fValue) {
        return fValue * fValue;
    }

    public static float G(float fValue) {
        return (float) Math.sqrt(fValue);
    }

    public static float H(float fValue) {
        return (float) Math.tan(fValue);
    }

    public static float I(float value, float min, float max) {
        return (value - min) / (max - min);
    }

    public static float a(float fValue) {
        return fValue < 0.0f ? -fValue : fValue;
    }

    public static float b(float fValue) {
        if (-1.0f >= fValue) {
            return 3.1415927f;
        }
        if (fValue < 1.0f) {
            return (float) Math.acos(fValue);
        }
        return 0.0f;
    }

    public static boolean c(float a10, float b10) {
        return a10 == b10 || a(a10 - b10) / Math.max(a(a10), a(b10)) <= 1.0E-5f;
    }

    public static float d(float fValue) {
        if (-1.0f >= fValue) {
            return -1.5707964f;
        }
        if (fValue < 1.0f) {
            return (float) Math.asin(fValue);
        }
        return 1.5707964f;
    }

    public static float e(float fValue) {
        return (float) Math.atan(fValue);
    }

    public static float f(float fY, float fX) {
        return (float) Math.atan2(fY, fX);
    }

    public static float g(float fValue) {
        return (float) Math.ceil(fValue);
    }

    public static float h(float input, float min, float max) {
        return input < min ? min : input > max ? max : input;
    }

    public static short i(float flt) {
        if (Float.isNaN(flt)) {
            throw new UnsupportedOperationException("NaN to half conversion not supported!");
        }
        if (flt == Float.POSITIVE_INFINITY) {
            return (short) 31744;
        }
        if (flt == Float.NEGATIVE_INFINITY) {
            return (short) -1024;
        }
        if (flt == 0.0f) {
            return (short) 0;
        }
        if (flt == -0.0f) {
            return r0.f95769b;
        }
        if (flt > 65504.0f) {
            return (short) 31743;
        }
        if (flt < -65504.0f) {
            return (short) -1025;
        }
        if (flt > 0.0f && flt < 3.054738E-5f) {
            return (short) 1;
        }
        if (flt < 0.0f && flt > -3.054738E-5f) {
            return (short) -32767;
        }
        int floatToIntBits = Float.floatToIntBits(flt);
        return (short) (((floatToIntBits >> 13) & 1023) | ((floatToIntBits >> 16) & 32768) | (31744 & (((2139095040 & floatToIntBits) - 939524096) >> 13)));
    }

    public static float j(short half) {
        if (half == 0) {
            return 0.0f;
        }
        if (half == 31744) {
            return Float.POSITIVE_INFINITY;
        }
        if (half == 32768) {
            return -0.0f;
        }
        if (half == 64512) {
            return Float.NEGATIVE_INFINITY;
        }
        return Float.intBitsToFloat(((half & 1023) << 13) | ((32768 & half) << 16) | (((half & 31744) + 114688) << 13));
    }

    public static float k(float x10, float y10) {
        return (y10 < 0.0f || x10 > 0.0f) ? (y10 >= 0.0f || x10 < 0.0f) ? x10 : -x10 : -x10;
    }

    public static float l(float v10) {
        return (float) Math.cos(v10);
    }

    public static float m(double m00, double m01, double m02, double m03, double m10, double m11, double m12, double m13, double m20, double m21, double m22, double m23, double m30, double m31, double m32, double m33) {
        double d10 = (m20 * m31) - (m21 * m30);
        double d11 = (m20 * m32) - (m22 * m30);
        double d12 = (m20 * m33) - (m23 * m30);
        double d13 = (m21 * m32) - (m22 * m31);
        double d14 = (m21 * m33) - (m23 * m31);
        double d15 = (m22 * m33) - (m23 * m32);
        return (float) (((((((m11 * d15) - (m12 * d14)) + (m13 * d13)) * m00) - ((((d15 * m10) - (m12 * d12)) + (m13 * d11)) * m01)) + (m02 * (((d14 * m10) - (d12 * m11)) + (m13 * d10)))) - (m03 * (((m10 * d13) - (d11 * m11)) + (d10 * m12))));
    }

    public static float n(float fValue) {
        return (float) Math.exp(fValue);
    }

    public static float o(float x10) {
        float f10 = 0.5f * x10;
        float intBitsToFloat = Float.intBitsToFloat(1597463174 - (Float.floatToIntBits(x10) >> 1));
        return intBitsToFloat * (1.5f - ((f10 * intBitsToFloat) * intBitsToFloat));
    }

    public static float p(float fValue) {
        return (float) Math.floor(fValue);
    }

    public static float q(float scale, float startValue, float endValue) {
        return (startValue != endValue && scale > 0.0f) ? scale >= 1.0f ? endValue : ((1.0f - scale) * startValue) + (scale * endValue) : startValue;
    }

    public static float r(float fValue) {
        return (float) (1.0d / Math.sqrt(fValue));
    }

    public static boolean s(int number) {
        return number > 0 && (number & (number + (-1))) == 0;
    }

    public static float t(float fValue) {
        return (float) Math.log(fValue);
    }

    public static float u(float value, float base) {
        return (float) (Math.log(value) / Math.log(base));
    }

    public static int v(int number) {
        int i10 = number - 1;
        int i11 = i10 | (i10 >> 1);
        int i12 = i11 | (i11 >> 2);
        int i13 = i12 | (i12 >> 4);
        int i14 = i13 | (i13 >> 8);
        int i15 = (i14 | (i14 >> 16)) + 1;
        return i15 + (i15 != 0 ? 0 : 1);
    }

    public static float w() {
        return f15887m.nextFloat();
    }

    public static int x() {
        return f15887m.nextInt();
    }

    public static int y(int min, int max) {
        return ((int) (w() * ((max - min) + 1))) + min;
    }

    public static float z(float val, float min, float max) {
        if (Float.isInfinite(val) || Float.isNaN(val)) {
            return 0.0f;
        }
        float f10 = max - min;
        while (val > max) {
            val -= f10;
        }
        while (val < min) {
            val += f10;
        }
        return val;
    }
}
