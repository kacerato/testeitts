package Ib;

public class d {
    public static void a(float[] N10, float[] T10, float[] B10) {
        b(Math.abs(N10[2]) < 0.999f ? new float[]{0.0f, 0.0f, 1.0f} : new float[]{0.0f, 1.0f, 0.0f}, N10, T10);
        d(T10);
        b(N10, T10, B10);
        d(B10);
    }

    public static void b(float[] a10, float[] b10, float[] out) {
        float f10 = a10[1];
        float f11 = b10[2];
        float f12 = a10[2];
        float f13 = b10[1];
        float f14 = (f10 * f11) - (f12 * f13);
        float f15 = b10[0];
        float f16 = a10[0];
        out[0] = f14;
        out[1] = (f12 * f15) - (f11 * f16);
        out[2] = (f16 * f13) - (f10 * f15);
    }

    public static void c(float[] m10, float[] q10) {
        float f10 = m10[0];
        float f11 = m10[3];
        float f12 = m10[6];
        float f13 = m10[1];
        float f14 = m10[4];
        float f15 = m10[7];
        float f16 = m10[2];
        float f17 = m10[5];
        float f18 = m10[8];
        if (f10 + f14 + f18 > 0.0f) {
            float sqrt = ((float) Math.sqrt(r13 + 1.0f)) * 2.0f;
            q10[3] = 0.25f * sqrt;
            q10[0] = (f17 - f15) / sqrt;
            q10[1] = (f12 - f16) / sqrt;
            q10[2] = (f13 - f11) / sqrt;
        } else if (f10 > f14 && f10 > f18) {
            float sqrt2 = ((float) Math.sqrt(((f10 + 1.0f) - f14) - f18)) * 2.0f;
            q10[3] = (f17 - f15) / sqrt2;
            q10[0] = 0.25f * sqrt2;
            q10[1] = (f11 + f13) / sqrt2;
            q10[2] = (f12 + f16) / sqrt2;
        } else if (f14 > f18) {
            float sqrt3 = ((float) Math.sqrt(((f14 + 1.0f) - f10) - f18)) * 2.0f;
            q10[3] = (f12 - f16) / sqrt3;
            q10[0] = (f11 + f13) / sqrt3;
            q10[1] = 0.25f * sqrt3;
            q10[2] = (f15 + f17) / sqrt3;
        } else {
            float sqrt4 = ((float) Math.sqrt(((f18 + 1.0f) - f10) - f14)) * 2.0f;
            q10[3] = (f13 - f11) / sqrt4;
            q10[0] = (f12 + f16) / sqrt4;
            q10[1] = (f15 + f17) / sqrt4;
            q10[2] = sqrt4 * 0.25f;
        }
        float f19 = q10[0];
        float f20 = q10[1];
        float f21 = (f19 * f19) + (f20 * f20);
        float f22 = q10[2];
        float f23 = f21 + (f22 * f22);
        float f24 = q10[3];
        float sqrt5 = (float) Math.sqrt(f23 + (f24 * f24));
        q10[0] = q10[0] / sqrt5;
        q10[1] = q10[1] / sqrt5;
        q10[2] = q10[2] / sqrt5;
        q10[3] = q10[3] / sqrt5;
    }

    public static void d(float[] v10) {
        float f10 = v10[0];
        float f11 = v10[1];
        float f12 = v10[2];
        float sqrt = (float) Math.sqrt((f10 * f10) + (f11 * f11) + (f12 * f12));
        if (sqrt > 1.0E-20f) {
            v10[0] = v10[0] / sqrt;
            v10[1] = v10[1] / sqrt;
            v10[2] = v10[2] / sqrt;
        } else {
            v10[0] = 0.0f;
            v10[1] = 0.0f;
            v10[2] = 1.0f;
        }
    }

    public static short e(float x10) {
        int round = Math.round(Math.max(-1.0f, Math.min(1.0f, x10)) * 32767.0f);
        if (round < -32768) {
            round = -32768;
        }
        if (round > 32767) {
            round = 32767;
        }
        return (short) round;
    }
}
