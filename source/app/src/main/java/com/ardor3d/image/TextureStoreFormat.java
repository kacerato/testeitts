package com.ardor3d.image;

public enum TextureStoreFormat {
    GuessCompressedFormat,
    GuessNoCompressedFormat,
    Alpha4,
    Alpha8,
    Alpha12,
    Alpha16,
    Luminance4,
    Luminance8,
    Luminance12,
    Luminance16,
    Luminance4Alpha4,
    Luminance6Alpha2,
    Luminance8Alpha8,
    Luminance12Alpha4,
    Luminance12Alpha12,
    Luminance16Alpha16,
    Intensity4,
    Intensity8,
    Intensity12,
    Intensity16,
    R3G3B2,
    RGB4,
    RGB5,
    RGB8,
    RGB10,
    RGB12,
    RGB16,
    RGBA2,
    RGBA4,
    RGB5A1,
    RGBA8,
    RGB10A2,
    RGBA12,
    RGBA16,
    CompressedRGB,
    CompressedRGBA,
    CompressedLuminance,
    CompressedLuminanceAlpha,
    NativeDXT1,
    NativeDXT1A,
    NativeDXT3,
    NativeDXT5,
    NativeLATC_L,
    NativeLATC_LA,
    Depth,
    Depth16,
    Depth24,
    Depth32,
    Depth32F,
    RGB16F,
    RGB32F,
    RGBA16F,
    RGBA32F,
    Alpha16F,
    Alpha32F,
    Luminance16F,
    Luminance32F,
    LuminanceAlpha16F,
    LuminanceAlpha32F,
    Intensity16F,
    Intensity32F;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$ardor3d$image$TextureStoreFormat;

        static {
            int[] iArr = new int[TextureStoreFormat.values().length];
            $SwitchMap$com$ardor3d$image$TextureStoreFormat = iArr;
            try {
                iArr[TextureStoreFormat.NativeDXT1.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$ardor3d$image$TextureStoreFormat[TextureStoreFormat.NativeDXT1A.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$ardor3d$image$TextureStoreFormat[TextureStoreFormat.NativeDXT3.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$ardor3d$image$TextureStoreFormat[TextureStoreFormat.NativeDXT5.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$ardor3d$image$TextureStoreFormat[TextureStoreFormat.NativeLATC_L.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$ardor3d$image$TextureStoreFormat[TextureStoreFormat.NativeLATC_LA.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public boolean isCompressed() {
        switch (AnonymousClass1.$SwitchMap$com$ardor3d$image$TextureStoreFormat[ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                return true;
            default:
                return false;
        }
    }

    public boolean isDepthFormat() {
        return this == Depth16 || this == Depth24 || this == Depth32;
    }
}
