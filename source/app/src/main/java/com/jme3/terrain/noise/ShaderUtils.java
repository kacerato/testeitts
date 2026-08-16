package com.jme3.terrain.noise;

import java.awt.geom.AffineTransform;
import java.awt.image.BufferedImage;
import java.awt.image.ImageObserver;
import java.lang.reflect.Array;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public class ShaderUtils {
    private ShaderUtils() {
    }

    public static final float abs(float f10) {
        return f10 < 0.0f ? -f10 : f10;
    }

    public static final float bias(float f10, float f11) {
        return (float) Math.pow(f11, Math.log(f10) / Math.log(0.5d));
    }

    public static final float boxstep(float f10, float f11, float f12) {
        return clamp((f12 - f10) / (f11 - f10), 0.0f, 1.0f);
    }

    public static final int c2i(float[] fArr) {
        return ((int) (fArr[2] * 256.0f)) | (fArr.length == 4 ? (int) (fArr[3] * 256.0f) : -16777216) | (((int) (fArr[0] * 256.0f)) << 16) | (((int) (fArr[1] * 256.0f)) << 8);
    }

    public static final float[][] calcRotationMatrix(float f10, float f11, float f12) {
        float[][] fArr = (float[][]) Array.newInstance(Float.TYPE, 3, 3);
        double d10 = f10;
        float cos = (float) Math.cos(d10);
        float sin = (float) Math.sin(d10);
        double d11 = f11;
        float cos2 = (float) Math.cos(d11);
        float sin2 = (float) Math.sin(d11);
        double d12 = f12;
        float cos3 = (float) Math.cos(d12);
        float sin3 = (float) Math.sin(d12);
        float[] fArr2 = fArr[0];
        fArr2[0] = cos2 * cos3;
        fArr2[1] = (-cos2) * sin3;
        fArr2[2] = sin2;
        float[] fArr3 = fArr[1];
        fArr3[0] = (sin * sin2 * cos3) + (cos * sin3);
        float f13 = -sin;
        fArr3[1] = (f13 * sin2 * sin3) + (cos * cos3);
        fArr3[2] = f13 * cos2;
        float[] fArr4 = fArr[2];
        fArr4[0] = ((-cos) * sin2 * cos3) + (sin * sin3);
        fArr4[1] = (sin2 * cos * sin3) + (sin * cos3);
        fArr4[2] = cos * cos2;
        return fArr;
    }

    public static final float ceil(float f10) {
        return r0 + ((f10 <= 0.0f || f10 == ((float) ((int) f10))) ? 0 : 1);
    }

    public static final float clamp(float f10, float f11, float f12) {
        return f10 < f11 ? f11 : f10 > f12 ? f12 : f10;
    }

    public static final int floor(float f10) {
        int i10 = (int) f10;
        return f10 > 0.0f ? i10 : i10 - 1;
    }

    public static float frac(float f10) {
        return f10 - floor(f10);
    }

    public static final float gain(float f10, float f11) {
        return ((double) f11) < 0.5d ? bias(1.0f - f10, f11 * 2.0f) / 2.0f : 1.0f - (bias(1.0f - f10, 2.0f - (f11 * 2.0f)) / 2.0f);
    }

    public static final float gammaCorrection(float f10, float f11) {
        return (float) Math.pow(f11, 1.0f / f10);
    }

    public static final ByteBuffer getImageDataFromImage(BufferedImage bufferedImage) {
        BufferedImage bufferedImage2 = new BufferedImage(128, 64, 2);
        bufferedImage2.createGraphics().drawImage(bufferedImage, (AffineTransform) null, (ImageObserver) null);
        int[] data = bufferedImage2.getRaster().getDataBuffer().getData();
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(data.length * 4);
        allocateDirect.order(ByteOrder.LITTLE_ENDIAN);
        allocateDirect.asIntBuffer().put(data);
        allocateDirect.flip();
        return allocateDirect;
    }

    public static final float[] i2c(int i10) {
        return new float[]{(16711680 & i10) / 256.0f, (65280 & i10) / 256.0f, (i10 & 255) / 256.0f, (i10 & (-16777216)) / 256.0f};
    }

    public static final float length(float f10, float f11, float f12) {
        return (float) Math.sqrt((f10 * f10) + (f11 * f11) + (f12 * f12));
    }

    public static final float max(float f10, float f11) {
        return f10 > f11 ? f10 : f11;
    }

    public static final float min(float f10, float f11) {
        return f10 < f11 ? f10 : f11;
    }

    public static final float mix(float f10, float f11, float f12) {
        return ((1.0f - f12) * f10) + (f12 * f11);
    }

    public static final float mod(float f10, float f11) {
        float f12 = f10 - (((int) (f10 / f11)) * f11);
        return f12 < 0.0f ? f12 + f11 : f12;
    }

    public static final float[] normalize(float[] fArr) {
        float length = length(fArr);
        float[] fArr2 = new float[fArr.length];
        int length2 = fArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length2) {
            fArr2[i11] = fArr[i10] / length;
            i10++;
            i11++;
        }
        return fArr2;
    }

    public static final float pulse(float f10, float f11, float f12) {
        return step(f10, f12) - step(f11, f12);
    }

    public static final float[] rotate(float[] fArr, float[][] fArr2) {
        float f10 = fArr[0];
        float[] fArr3 = fArr2[0];
        float f11 = fArr3[0] * f10;
        float f12 = fArr[1];
        float f13 = f11 + (fArr3[1] * f12);
        float f14 = fArr[2];
        float f15 = f13 + (fArr3[2] * f14);
        float[] fArr4 = fArr2[1];
        float f16 = (fArr4[0] * f10) + (fArr4[1] * f12) + (fArr4[2] * f14);
        float[] fArr5 = fArr2[2];
        return new float[]{f15, f16, (f10 * fArr5[0]) + (f12 * fArr5[1]) + (f14 * fArr5[2])};
    }

    public static final float sinValue(float f10, float f11, float f12, float f13) {
        float clamp = clamp(0.5f / f13, 0.0f, f12);
        float f14 = 0.0f;
        while (true) {
            double d10 = f11;
            if (d10 >= clamp * 0.5d) {
                return (float) (f14 + ((clamp(((clamp - f11) * 2.0f) / clamp, 0.0f, 1.0f) * Math.sin((6.283185307179586d * d10) * f10)) / d10));
            }
            f14 = (float) (f14 + (Math.sin((6.283185307179586d * d10) * f10) / d10));
            f11 *= 2.0f;
        }
    }

    public static final float smoothstep(float f10, float f11, float f12) {
        if (f12 < f10) {
            return 0.0f;
        }
        if (f12 > f11) {
            return 1.0f;
        }
        float f13 = (f12 - f10) / (f11 - f10);
        return f13 * f13 * (3.0f - (f13 * 2.0f));
    }

    public static final float spline(float f10, float[] fArr) {
        int length = fArr.length - 3;
        if (length >= 1) {
            float clamp = clamp(f10, 0.0f, 1.0f) * length;
            int i10 = (int) clamp;
            if (i10 >= fArr.length - 3) {
                i10 = fArr.length - 3;
            }
            float f11 = clamp - i10;
            float f12 = fArr[i10];
            float f13 = fArr[i10 + 1];
            float f14 = fArr[i10 + 2];
            float f15 = fArr[i10 + 3];
            return ((((((((-0.5f) * f12) + (1.5f * f13) + ((-1.5f) * f14) + (0.5f * f15)) * f11) + (1.0f * f12) + ((-2.5f) * f13) + (2.0f * f14) + ((-0.5f) * f15)) * f11) + ((-0.5f) * f12) + (0.0f * f13) + (0.5f * f14) + (0.0f * f15)) * f11) + (f12 * 0.0f) + (1.0f * f13) + (f14 * 0.0f) + (0.0f * f15);
        }
        throw new RuntimeException("Spline has too few knots.");
    }

    public static final float step(float f10, float f11) {
        return f11 < f10 ? 0.0f : 1.0f;
    }

    public static float[] floor(float[] fArr) {
        float[] fArr2 = new float[fArr.length];
        for (int i10 = 0; i10 < fArr.length; i10++) {
            fArr2[i10] = floor(fArr[i10]);
        }
        return fArr2;
    }

    public static final float length(float[] fArr) {
        float f10 = 0.0f;
        for (float f11 : fArr) {
            f10 += f11 * f11;
        }
        return (float) Math.sqrt(f10);
    }

    public static final int mix(int i10, int i11, float f10) {
        return (int) (((1.0f - f10) * i10) + (f10 * i11));
    }

    public static final java.awt.Color mix(java.awt.Color color, java.awt.Color color2, float f10) {
        return new java.awt.Color((int) clamp(mix(color.getRed(), color2.getRed(), f10), 0.0f, 255.0f), (int) clamp(mix(color.getGreen(), color2.getGreen(), f10), 0.0f, 255.0f), (int) clamp(mix(color.getBlue(), color2.getBlue(), f10), 0.0f, 255.0f));
    }

    public static final float[] spline(float f10, float[][] fArr) {
        float[] fArr2 = new float[fArr.length];
        for (int i10 = 0; i10 < fArr.length; i10++) {
            fArr2[i10] = spline(f10, fArr[i10]);
        }
        return fArr2;
    }

    public static final float[] mix(float[] fArr, float[] fArr2, float f10) {
        return new float[]{mix(fArr[0], fArr2[0], f10), mix(fArr[1], fArr2[1], f10), mix(fArr[2], fArr2[2], f10)};
    }
}
