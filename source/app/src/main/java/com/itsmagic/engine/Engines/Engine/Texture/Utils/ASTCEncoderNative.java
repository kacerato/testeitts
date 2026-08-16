package com.itsmagic.engine.Engines.Engine.Texture.Utils;

import android.graphics.Bitmap;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine.Engines.Native.Base.NativeByteBuffer;

public class ASTCEncoderNative {

    public static class a {

        public static final int[] f79775a;

        static {
            int[] iArr = new int[TextureConfig.b.values().length];
            f79775a = iArr;
            try {
                iArr[TextureConfig.b.ASTC_4.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f79775a[TextureConfig.b.ASTC_NORMAL_MAP_4.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f79775a[TextureConfig.b.ASTC_6.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f79775a[TextureConfig.b.ASTC_NORMAL_MAP_6.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f79775a[TextureConfig.b.ASTC_8.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f79775a[TextureConfig.b.ASTC_NORMAL_MAP_8.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f79775a[TextureConfig.b.ASTC_10.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f79775a[TextureConfig.b.ASTC_NORMAL_MAP_10.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f79775a[TextureConfig.b.ASTC_12.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f79775a[TextureConfig.b.ASTC_NORMAL_MAP_12.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f79775a[TextureConfig.b.UNCOMPRESSED.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    static {
        System.loadLibrary("native-astcenc");
    }

    public static NativeByteBuffer a(Bitmap bitmap, TextureConfig config) {
        Bitmap bitmap2;
        if (bitmap == null) {
            throw new IllegalArgumentException("bitmap can't be null");
        }
        if (config == null) {
            throw new IllegalArgumentException("config can't be null");
        }
        int d10 = d(config.compressionFormat);
        int j10 = config.j();
        Bitmap.Config config2 = bitmap.getConfig();
        Bitmap.Config config3 = Bitmap.Config.ARGB_8888;
        boolean z10 = false;
        if (config2 != config3) {
            bitmap2 = bitmap.copy(config3, false);
            if (bitmap2 == null) {
                throw new IllegalStateException("Failed to convert bitmap to ARGB_8888");
            }
            z10 = true;
        } else {
            bitmap2 = bitmap;
        }
        boolean z11 = z10;
        try {
            NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(f(bitmap2.getWidth(), bitmap2.getHeight(), d10, d10, j10));
            if (nativeEncodeRGBA(bitmap2, bitmap2.getWidth(), bitmap2.getHeight(), d10, d10, g(config.compressionFormat), e(config), config.gammaCorrection, j10, nativeByteBuffer) && nativeByteBuffer.capacity() > 0) {
                return nativeByteBuffer;
            }
            if (!nativeByteBuffer.isGarbage()) {
                nativeByteBuffer.destroyImmediate();
            }
            throw new IllegalStateException("ASTC encoding failed");
        } finally {
            if (z11 && bitmap2 != bitmap && !bitmap2.isRecycled()) {
                bitmap2.recycle();
            }
        }
    }

    public static NativeByteBuffer b(NativeByteBuffer rgbaBuffer, int sourceWidth, int sourceHeight, int targetWidth, int targetHeight, TextureConfig config) {
        if (rgbaBuffer == null) {
            throw new IllegalArgumentException("rgbaBuffer can't be null");
        }
        if (config == null) {
            throw new IllegalArgumentException("config can't be null");
        }
        if (sourceWidth <= 0 || sourceHeight <= 0) {
            throw new IllegalArgumentException("sourceWidth and sourceHeight must be greater than zero");
        }
        if (targetWidth <= 0 || targetHeight <= 0) {
            throw new IllegalArgumentException("targetWidth and targetHeight must be greater than zero");
        }
        int d10 = d(config.compressionFormat);
        int j10 = config.j();
        NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(f(targetWidth, targetHeight, d10, d10, j10));
        if (nativeEncodeRGBAFromBuffer(rgbaBuffer, sourceWidth, sourceHeight, targetWidth, targetHeight, d10, d10, g(config.compressionFormat), e(config), config.gammaCorrection, j10, nativeByteBuffer) && nativeByteBuffer.capacity() > 0) {
            return nativeByteBuffer;
        }
        if (!nativeByteBuffer.isGarbage()) {
            nativeByteBuffer.destroyImmediate();
        }
        throw new IllegalStateException("ASTC encoding failed");
    }

    public static NativeByteBuffer c(NativeByteBuffer rgbaBuffer, int width, int height, TextureConfig config) {
        return b(rgbaBuffer, width, height, width, height, config);
    }

    public static int d(TextureConfig.b compressionFormat) {
        if (compressionFormat == null) {
            return 6;
        }
        int i10 = a.f79775a[compressionFormat.ordinal()];
        if (i10 == 1 || i10 == 2) {
            return 4;
        }
        switch (i10) {
            case 5:
            case 6:
                return 8;
            case 7:
            case 8:
                return 10;
            case 9:
            case 10:
                return 12;
            default:
                return 6;
        }
    }

    public static float e(TextureConfig config) {
        return config.compressionEffort == null ? TextureConfig.a.Fast.b() : r0.b();
    }

    public static int f(int width, int height, int blockX, int blockY, int mipmapLevels) {
        int max = (Math.max(1, mipmapLevels + 1) * 16) + 32;
        int max2 = Math.max(0, mipmapLevels);
        for (int i10 = 0; i10 <= max2; i10++) {
            max += (((width + blockX) - 1) / blockX) * (((height + blockY) - 1) / blockY) * 16;
            if (width == 1 && height == 1) {
                break;
            }
            width = Math.max(1, width / 2);
            height = Math.max(1, height / 2);
        }
        return max;
    }

    public static boolean g(TextureConfig.b compressionFormat) {
        if (compressionFormat == null) {
            return false;
        }
        int i10 = a.f79775a[compressionFormat.ordinal()];
        return i10 == 2 || i10 == 4 || i10 == 6 || i10 == 8 || i10 == 10;
    }

    private static native boolean nativeEncodeRGBA(Bitmap bitmap, int width, int height, int blockX, int blockY, boolean normalMap, float quality, boolean srgb, int mipmapLevels, NativeByteBuffer outputBuffer);

    private static native boolean nativeEncodeRGBAFromBuffer(NativeByteBuffer rgbaBuffer, int sourceWidth, int sourceHeight, int targetWidth, int targetHeight, int blockX, int blockY, boolean normalMap, float quality, boolean srgb, int mipmapLevels, NativeByteBuffer outputBuffer);
}
