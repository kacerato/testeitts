package com.jme3.terrain.noise;

public class Color {
    private final float[] rgba;

    public Color() {
        this.rgba = new float[4];
    }

    public Color toGrayscale() {
        float[] fArr = this.rgba;
        float f10 = ((fArr[0] + fArr[1]) + fArr[2]) / 3.0f;
        return new Color(f10, f10, f10, fArr[3]);
    }

    public int toInteger() {
        float[] fArr = this.rgba;
        return ((int) (fArr[2] * 256.0f)) | (((int) (fArr[3] * 256.0f)) << 24) | (((int) (fArr[0] * 256.0f)) << 16) | (((int) (fArr[1] * 256.0f)) << 8);
    }

    public Color toSepia() {
        float[] fArr = this.rgba;
        float clamp = ShaderUtils.clamp((fArr[0] * 0.393f) + (fArr[1] * 0.769f) + (fArr[2] * 0.189f), 0.0f, 1.0f);
        float[] fArr2 = this.rgba;
        float clamp2 = ShaderUtils.clamp((fArr2[0] * 0.349f) + (fArr2[1] * 0.686f) + (fArr2[2] * 0.168f), 0.0f, 1.0f);
        float[] fArr3 = this.rgba;
        return new Color(clamp, clamp2, ShaderUtils.clamp((fArr3[0] * 0.272f) + (fArr3[1] * 0.534f) + (fArr3[2] * 0.131f), 0.0f, 1.0f), this.rgba[3]);
    }

    public String toWeb() {
        return Integer.toHexString(toInteger());
    }

    public Color(int i10, int i11, int i12) {
        this(i10, i11, i12, 255);
    }

    public Color(int i10, int i11, int i12, int i13) {
        this.rgba = r0;
        float[] fArr = {(i10 & 255) / 256.0f, (i11 & 255) / 256.0f, (i12 & 255) / 256.0f, (i13 & 255) / 256.0f};
    }

    public Color(float f10, float f11, float f12) {
        this(f10, f11, f12, 1.0f);
    }

    public Color(float f10, float f11, float f12, float f13) {
        this.rgba = r0;
        float[] fArr = {ShaderUtils.clamp(f10, 0.0f, 1.0f), ShaderUtils.clamp(f11, 0.0f, 1.0f), ShaderUtils.clamp(f12, 0.0f, 1.0f), ShaderUtils.clamp(f13, 0.0f, 1.0f)};
    }

    public Color(int i10, float f10, float f11) {
        this(i10, f10, f11, 1.0f);
    }

    public Color(int i10, float f10, float f11, float f12) {
        float[] fArr = new float[4];
        this.rgba = fArr;
        fArr[3] = f12;
        if (f10 == 0.0f) {
            fArr[0] = f11;
            fArr[1] = f11;
            fArr[2] = f11;
            return;
        }
        float f13 = i10 / 60.0f;
        int floor = ShaderUtils.floor(f13);
        float f14 = f13 - floor;
        float f15 = (1.0f - f10) * f11;
        float f16 = (1.0f - (f10 * f14)) * f11;
        float f17 = (1.0f - (f10 * (1.0f - f14))) * f11;
        if (floor == 0) {
            fArr[0] = f11;
            fArr[1] = f17;
            fArr[2] = f15;
            return;
        }
        if (floor == 1) {
            fArr[0] = f16;
            fArr[1] = f11;
            fArr[2] = f15;
            return;
        }
        if (floor == 2) {
            fArr[0] = f15;
            fArr[1] = f11;
            fArr[2] = f17;
        } else if (floor == 3) {
            fArr[0] = f15;
            fArr[1] = f16;
            fArr[2] = f11;
        } else if (floor == 4) {
            fArr[0] = f17;
            fArr[1] = f15;
            fArr[2] = f11;
        } else {
            fArr[0] = f11;
            fArr[1] = f15;
            fArr[2] = f16;
        }
    }
}
