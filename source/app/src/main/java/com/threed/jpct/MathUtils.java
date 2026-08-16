package com.threed.jpct;

class MathUtils {
    public static final void calcCross(float[] fArr, float[] fArr2, float[] fArr3) {
        float f10 = fArr2[1];
        float f11 = fArr3[2];
        float f12 = fArr2[2];
        fArr[0] = (f10 * f11) - (fArr3[1] * f12);
        float f13 = fArr3[0];
        float f14 = fArr2[0];
        fArr[1] = (f12 * f13) - (f11 * f14);
        fArr[2] = (f14 * fArr3[1]) - (fArr2[1] * f13);
    }

    public static final float calcDot(float f10, float f11, float f12, float f13, float f14, float f15) {
        return (f10 * f13) + (f11 * f14) + (f12 * f15);
    }

    public static final float calcDot(float[] fArr, float[] fArr2) {
        return (fArr[0] * fArr2[0]) + (fArr[1] * fArr2[1]) + (fArr[2] * fArr2[2]);
    }

    public static final float calcDot(float f10, float f11, float f12, float[] fArr) {
        return (f10 * fArr[0]) + (f11 * fArr[1]) + (f12 * fArr[2]);
    }

    public static final void calcCross(float[] fArr, float f10, float f11, float f12, float f13, float f14, float f15) {
        fArr[0] = (f11 * f15) - (f12 * f14);
        fArr[1] = (f12 * f13) - (f15 * f10);
        fArr[2] = (f10 * f14) - (f11 * f13);
    }
}
