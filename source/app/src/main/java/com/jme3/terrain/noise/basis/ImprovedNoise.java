package com.jme3.terrain.noise.basis;

import com.jme3.terrain.noise.ShaderUtils;

public final class ImprovedNoise extends Noise {

    static final int[] f81640p = new int[512];
    static final int[] permutation = {151, 160, 137, 91, 90, 15, 131, 13, 201, 95, 96, 53, 194, 233, 7, 225, 140, 36, 103, 30, 69, 142, 8, 99, 37, 240, 21, 10, 23, 190, 6, 148, 247, 120, 234, 75, 0, 26, 197, 62, 94, 252, 219, 203, 117, 35, 11, 32, 57, 177, 33, 88, 237, 149, 56, 87, 174, 20, 125, 136, 171, 168, 68, 175, 74, 165, 71, 134, 139, 48, 27, 166, 77, 146, 158, 231, 83, 111, 229, 122, 60, 211, 133, 230, 220, 105, 92, 41, 55, 46, 245, 40, 244, 102, 143, 54, 65, 25, 63, 161, 1, 216, 80, 73, 209, 76, 132, 187, 208, 89, 18, 169, 200, 196, 135, 130, 116, 188, 159, 86, 164, 100, 109, 198, 173, 186, 3, 64, 52, 217, 226, 250, 124, 123, 5, 202, 38, 147, 118, 126, 255, 82, 85, 212, 207, 206, 59, 227, 47, 16, 58, 17, 182, 189, 28, 42, 223, 183, 170, 213, 119, 248, 152, 2, 44, 154, 163, 70, 221, 153, 101, 155, 167, 43, 172, 9, 129, 22, 39, 253, 19, 98, 108, 110, 79, 113, 224, 232, 178, 185, 112, 104, 218, 246, 97, 228, 251, 34, 242, 193, 238, 210, 144, 12, 191, 179, 162, 241, 81, 51, 145, 235, 249, 14, 239, 107, 49, 192, 214, 31, 181, 199, 106, 157, 184, 84, 204, 176, 115, 121, 50, 45, 127, 4, 150, 254, 138, 236, 205, 93, 222, 114, 67, 29, 24, 72, 243, 141, 128, 195, 78, 66, 215, 61, 156, 180};
    private static float[][] GRAD3 = {new float[]{1.0f, 1.0f, 0.0f}, new float[]{-1.0f, 1.0f, 0.0f}, new float[]{1.0f, -1.0f, 0.0f}, new float[]{-1.0f, -1.0f, 0.0f}, new float[]{1.0f, 0.0f, 1.0f}, new float[]{-1.0f, 0.0f, 1.0f}, new float[]{1.0f, 0.0f, -1.0f}, new float[]{-1.0f, 0.0f, -1.0f}, new float[]{0.0f, 1.0f, 1.0f}, new float[]{0.0f, -1.0f, 1.0f}, new float[]{0.0f, 1.0f, -1.0f}, new float[]{0.0f, -1.0f, -1.0f}, new float[]{1.0f, 0.0f, -1.0f}, new float[]{-1.0f, 0.0f, -1.0f}, new float[]{0.0f, -1.0f, 1.0f}, new float[]{0.0f, 1.0f, 1.0f}};

    static {
        for (int i10 = 0; i10 < 256; i10++) {
            int[] iArr = f81640p;
            int i11 = permutation[i10];
            iArr[i10] = i11;
            iArr[i10 + 256] = i11;
        }
    }

    public static final float fade(float f10) {
        return f10 * f10 * f10 * ((f10 * ((6.0f * f10) - 15.0f)) + 10.0f);
    }

    public static float grad(int i10, float f10, float f11, float f12) {
        int i11 = i10 & 15;
        float f13 = i11 < 8 ? f10 : f11;
        if (i11 < 4) {
            f10 = f11;
        } else if (i11 != 12 && i11 != 14) {
            f10 = f12;
        }
        if ((i10 & 1) != 0) {
            f13 = -f13;
        }
        if ((i10 & 2) != 0) {
            f10 = -f10;
        }
        return f13 + f10;
    }

    public static final float grad3(int i10, float f10, float f11, float f12) {
        float[] fArr = GRAD3[i10 & 15];
        return (f10 * fArr[0]) + (f11 * fArr[1]) + (f12 * fArr[2]);
    }

    public static final float lerp(float f10, float f11, float f12) {
        return f11 + (f10 * (f12 - f11));
    }

    public static float noise(float f10, float f11, float f12) {
        int floor = ShaderUtils.floor(f10);
        int floor2 = ShaderUtils.floor(f11);
        int floor3 = ShaderUtils.floor(f12);
        float f13 = f10 - floor;
        float f14 = f11 - floor2;
        float f15 = f12 - floor3;
        int i10 = floor & 255;
        int i11 = floor2 & 255;
        int i12 = floor3 & 255;
        float fade = fade(f13);
        float fade2 = fade(f14);
        float fade3 = fade(f15);
        int[] iArr = f81640p;
        int i13 = iArr[i10] + i11;
        int i14 = iArr[i13] + i12;
        int i15 = iArr[i13 + 1] + i12;
        int i16 = iArr[i10 + 1] + i11;
        int i17 = iArr[i16] + i12;
        int i18 = iArr[i16 + 1] + i12;
        float f16 = f13 - 1.0f;
        float f17 = f14 - 1.0f;
        float lerp = lerp(fade2, lerp(fade, grad3(iArr[i14], f13, f14, f15), grad3(iArr[i17], f16, f14, f15)), lerp(fade, grad3(iArr[i15], f13, f17, f15), grad3(iArr[i18], f16, f17, f15)));
        float f18 = f15 - 1.0f;
        return lerp(fade3, lerp, lerp(fade2, lerp(fade, grad3(iArr[i14 + 1], f13, f14, f18), grad3(iArr[i17 + 1], f16, f14, f18)), lerp(fade, grad3(iArr[i15 + 1], f13, f17, f18), grad3(iArr[i18 + 1], f16, f17, f18))));
    }

    @Override
    public void init() {
    }

    @Override
    public float value(float f10, float f11, float f12) {
        float f13 = this.scale;
        return noise(f10 * f13, f11 * f13, f13 * f12);
    }
}
