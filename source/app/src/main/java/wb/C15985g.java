package wb;

import com.google.android.filament.Engine;
import com.google.android.filament.Texture;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

@Deprecated
public final class C15985g {

    public static final Texture.c[] f127395a = {Texture.c.POSITIVE_X, Texture.c.NEGATIVE_X, Texture.c.POSITIVE_Y, Texture.c.NEGATIVE_Y, Texture.c.POSITIVE_Z, Texture.c.NEGATIVE_Z};

    public static final float f127396b = 3.1415927f;

    public static final float f127397c = 6.2831855f;

    public interface a {
        int a(int x10, int y10);
    }

    public static int a(int c00, int c10, int c01, int c11, float tx, float ty) {
        return i(i(c00, c10, tx), i(c01, c11, tx), ty);
    }

    public static float b(float x10, float a10, float b10) {
        return x10 < a10 ? a10 : x10 > b10 ? b10 : x10;
    }

    public static Texture c(int w10, int h10, int cubeSize, boolean flipV, a src) {
        Engine f10 = Qb.a.f();
        if (src == null) {
            throw new IllegalArgumentException("src == null");
        }
        if (w10 <= 0 || h10 <= 0 || cubeSize <= 0) {
            throw new IllegalArgumentException("Tamanhos inv\u00e1lidos");
        }
        Texture a10 = new Texture.a().h(Texture.i.SAMPLER_CUBEMAP).l(cubeSize).e(cubeSize).g(1).d(Texture.f.RGBA8).a(f10);
        for (int i10 = 0; i10 < 6; i10++) {
            ByteBuffer order = ByteBuffer.allocateDirect(cubeSize * cubeSize * 4).order(ByteOrder.nativeOrder());
            f(order, cubeSize, cubeSize, i10, src, w10, h10, flipV);
            a10.G(f10, 0, 0, 0, i10, cubeSize, cubeSize, 1, new Texture.g(order, Texture.e.RGBA, Texture.k.UBYTE));
        }
        return a10;
    }

    public static float[] d(int face, float u10, float v10) {
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
        } else if (face == 4) {
            f10 = 1.0f;
        } else if (face != 5) {
            u10 = 0.0f;
            f10 = 0.0f;
            v10 = 0.0f;
        } else {
            u10 = -u10;
            f10 = -1.0f;
        }
        float h10 = h((u10 * u10) + (v10 * v10) + (f10 * f10));
        return new float[]{u10 * h10, v10 * h10, f10 * h10};
    }

    public static float[] e(float x10, float y10, float z10) {
        float atan2 = (((float) Math.atan2(z10, x10)) * 0.15915494f) + 0.5f;
        float asin = 0.5f - (((float) Math.asin(b(y10, -1.0f, 1.0f))) / 3.1415927f);
        if (atan2 < 0.0f) {
            atan2 += 1.0f;
        } else if (atan2 >= 1.0f) {
            atan2 -= 1.0f;
        }
        return new float[]{atan2, b(asin, 0.0f, 1.0f)};
    }

    public static void f(ByteBuffer dst, int w10, int h10, int faceIndex, a src, int srcW, int srcH, boolean flipV) {
        int i10 = 0;
        int i11 = 0;
        while (i11 < h10) {
            float f10 = 0.5f;
            float f11 = (((i11 + 0.5f) / h10) * 2.0f) - 1.0f;
            if (flipV) {
                f11 = -f11;
            }
            int i12 = i10;
            while (i12 < w10) {
                float[] d10 = d(faceIndex, (((i12 + f10) / w10) * 2.0f) - 1.0f, f11);
                float[] e10 = e(d10[i10], d10[1], d10[2]);
                int j10 = j(src, srcW, srcH, e10[i10], e10[1]);
                dst.put((byte) ((j10 >>> 16) & 255));
                dst.put((byte) ((j10 >>> 8) & 255));
                dst.put((byte) (j10 & 255));
                dst.put((byte) ((j10 >>> 24) & 255));
                i12++;
                i10 = 0;
                f10 = 0.5f;
            }
            i11++;
            i10 = 0;
        }
        dst.flip();
    }

    public static int g(float x10) {
        int i10 = (int) x10;
        return x10 < ((float) i10) ? i10 - 1 : i10;
    }

    public static float h(float x10) {
        return 1.0f / ((float) Math.sqrt(x10));
    }

    public static int i(int a10, int b10, float t10) {
        return (int) (a10 + ((b10 - a10) * t10) + 0.5f);
    }

    public static int j(a src, int w10, int h10, float u10, float v10) {
        float f10 = u10 * (w10 - 1);
        int i10 = h10 - 1;
        float f11 = v10 * i10;
        int g10 = g(f10);
        int g11 = g(f11);
        int i11 = (g10 + 1) % w10;
        int min = Math.min(g11 + 1, i10);
        float f12 = f10 - g10;
        float f13 = f11 - g11;
        int a10 = src.a(g10, g11);
        int a11 = src.a(i11, g11);
        int a12 = src.a(g10, min);
        int a13 = src.a(i11, min);
        return a(a10 & 255, a11 & 255, a12 & 255, a13 & 255, f12, f13) | (a((a10 >>> 24) & 255, (a11 >>> 24) & 255, (a12 >>> 24) & 255, (a13 >>> 24) & 255, f12, f13) << 24) | (a((a10 >>> 16) & 255, (a11 >>> 16) & 255, (a12 >>> 16) & 255, (a13 >>> 16) & 255, f12, f13) << 16) | (a((a10 >>> 8) & 255, (a11 >>> 8) & 255, (a12 >>> 8) & 255, (a13 >>> 8) & 255, f12, f13) << 8);
    }
}
