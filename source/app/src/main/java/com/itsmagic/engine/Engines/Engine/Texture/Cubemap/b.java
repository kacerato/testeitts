package com.itsmagic.engine.Engines.Engine.Texture.Cubemap;

import android.graphics.Bitmap;
import android.graphics.Color;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;

public final class b {

    public static final float f79647a = 3.1415927f;

    public static final float f79648b = 6.2831855f;

    public enum a {
        POSITIVE_X,
        NEGATIVE_X,
        POSITIVE_Y,
        NEGATIVE_Y,
        POSITIVE_Z,
        NEGATIVE_Z
    }

    public static final class C1359b {

        public final a f79649a;

        public final Bitmap f79650b;

        public C1359b(a face, Bitmap bitmap) {
            this.f79649a = face;
            this.f79650b = bitmap;
        }
    }

    public static int a(int c00, int c10, int c01, int c11, float tx, float ty) {
        return j(j(c00, c10, tx), j(c01, c11, tx), ty);
    }

    public static float b(float x10, float a10, float b10) {
        return x10 < a10 ? a10 : x10 > b10 ? b10 : x10;
    }

    public static float[] c(int face, float u10, float v10) {
        float f10;
        if (face == 0) {
            f10 = -u10;
            u10 = 1.0f;
        } else if (face == 1) {
            f10 = u10;
            u10 = -1.0f;
        } else if (face == 2) {
            f10 = -v10;
            v10 = 1.0f;
        } else if (face == 3) {
            f10 = v10;
            v10 = -1.0f;
        } else if (face != 4) {
            u10 = -u10;
            f10 = -1.0f;
        } else {
            f10 = 1.0f;
        }
        float i10 = i((u10 * u10) + (v10 * v10) + (f10 * f10));
        return new float[]{u10 * i10, v10 * i10, f10 * i10};
    }

    public static float[] d(float x10, float y10, float z10) {
        float atan2 = (((float) Math.atan2(z10, x10)) * 0.15915494f) + 0.5f;
        float asin = 0.5f - (((float) Math.asin(b(y10, -1.0f, 1.0f))) / 3.1415927f);
        if (atan2 < 0.0f) {
            atan2 += 1.0f;
        } else if (atan2 >= 1.0f) {
            atan2 -= 1.0f;
        }
        return new float[]{atan2, b(asin, 0.0f, 1.0f)};
    }

    public static void e(int[] dst, int w10, int h10, int faceIndex, int[] src, int srcW, int srcH, boolean flipV) {
        int i10 = 0;
        for (int i11 = 0; i11 < h10; i11++) {
            float f10 = (((i11 + 0.5f) / h10) * 2.0f) - 1.0f;
            if (flipV) {
                f10 = -f10;
            }
            int i12 = 0;
            while (i12 < w10) {
                float[] c10 = c(faceIndex, (((i12 + 0.5f) / w10) * 2.0f) - 1.0f, f10);
                float[] d10 = d(c10[0], c10[1], c10[2]);
                dst[i10] = k(src, srcW, srcH, d10[0], d10[1]);
                i12++;
                i10++;
            }
        }
    }

    public static int f(float x10) {
        int i10 = (int) x10;
        return x10 < ((float) i10) ? i10 - 1 : i10;
    }

    public static List<C1359b> g(Bitmap equirect, int cubeSize, boolean flipV) {
        boolean z10 = !flipV;
        if (equirect == null) {
            throw new IllegalArgumentException("equirect == null");
        }
        if (equirect.getConfig() != Bitmap.Config.ARGB_8888) {
            throw new IllegalArgumentException("Bitmap deve ser ARGB_8888");
        }
        if (cubeSize <= 0) {
            throw new IllegalArgumentException("cubeSize inv\u00e1lido");
        }
        int width = equirect.getWidth();
        int height = equirect.getHeight();
        int[] iArr = new int[width * height];
        equirect.getPixels(iArr, 0, width, 0, 0, width, height);
        SteppedArrayList steppedArrayList = new SteppedArrayList(6);
        int i10 = 0;
        for (int i11 = 6; i10 < i11; i11 = 6) {
            int[] iArr2 = new int[cubeSize * cubeSize];
            e(iArr2, cubeSize, cubeSize, i10, iArr, width, height, z10);
            Bitmap createBitmap = Bitmap.createBitmap(cubeSize, cubeSize, Bitmap.Config.ARGB_8888);
            createBitmap.setPixels(iArr2, 0, cubeSize, 0, 0, cubeSize, cubeSize);
            steppedArrayList.add(new C1359b(h(i10), createBitmap));
            i10++;
        }
        return steppedArrayList;
    }

    public static a h(int f10) {
        return f10 != 0 ? f10 != 1 ? f10 != 2 ? f10 != 3 ? f10 != 4 ? a.NEGATIVE_Z : a.POSITIVE_Z : a.NEGATIVE_Y : a.POSITIVE_Y : a.NEGATIVE_X : a.POSITIVE_X;
    }

    public static float i(float x10) {
        return 1.0f / ((float) Math.sqrt(x10));
    }

    public static int j(int a10, int b10, float t10) {
        return (int) (a10 + ((b10 - a10) * t10) + 0.5f);
    }

    public static int k(int[] src, int w10, int h10, float u10, float v10) {
        float f10 = (w10 - 1) * u10;
        int i10 = h10 - 1;
        float f11 = i10 * v10;
        int f12 = f(f10);
        int f13 = f(f11);
        int i11 = (f12 + 1) % w10;
        int min = Math.min(f13 + 1, i10);
        float f14 = f10 - f12;
        float f15 = f11 - f13;
        int i12 = f13 * w10;
        int i13 = src[i12 + f12];
        int i14 = src[i12 + i11];
        int i15 = min * w10;
        int i16 = src[f12 + i15];
        int i17 = src[i15 + i11];
        return Color.argb(a((i13 >>> 24) & 255, (i14 >>> 24) & 255, (i16 >>> 24) & 255, (i17 >>> 24) & 255, f14, f15), a((i13 >>> 16) & 255, (i14 >>> 16) & 255, (i16 >>> 16) & 255, (i17 >>> 16) & 255, f14, f15), a((i13 >>> 8) & 255, (i14 >>> 8) & 255, (i16 >>> 8) & 255, (i17 >>> 8) & 255, f14, f15), a(i13 & 255, i14 & 255, i16 & 255, i17 & 255, f14, f15));
    }
}
