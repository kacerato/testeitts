package com.ardor3d.image.util;

import com.ardor3d.image.Image;
import com.ardor3d.image.ImageDataFormat;
import com.ardor3d.image.ImageDataType;
import com.ardor3d.image.TextureStoreFormat;

public abstract class ImageUtils {

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$ardor3d$image$ImageDataFormat;
        static final int[] $SwitchMap$com$ardor3d$image$ImageDataType;

        static {
            int[] iArr = new int[ImageDataFormat.values().length];
            $SwitchMap$com$ardor3d$image$ImageDataFormat = iArr;
            try {
                iArr[ImageDataFormat.ColorIndex.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$ardor3d$image$ImageDataFormat[ImageDataFormat.BGRA.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$ardor3d$image$ImageDataFormat[ImageDataFormat.RGBA.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$ardor3d$image$ImageDataFormat[ImageDataFormat.BGR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$ardor3d$image$ImageDataFormat[ImageDataFormat.RGB.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$ardor3d$image$ImageDataFormat[ImageDataFormat.Luminance.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$ardor3d$image$ImageDataFormat[ImageDataFormat.LuminanceAlpha.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$ardor3d$image$ImageDataFormat[ImageDataFormat.Alpha.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$ardor3d$image$ImageDataFormat[ImageDataFormat.Intensity.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$ardor3d$image$ImageDataFormat[ImageDataFormat.Red.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$ardor3d$image$ImageDataFormat[ImageDataFormat.Green.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$ardor3d$image$ImageDataFormat[ImageDataFormat.Blue.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$ardor3d$image$ImageDataFormat[ImageDataFormat.StencilIndex.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$ardor3d$image$ImageDataFormat[ImageDataFormat.Depth.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$ardor3d$image$ImageDataFormat[ImageDataFormat.PrecompressedDXT1.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$ardor3d$image$ImageDataFormat[ImageDataFormat.PrecompressedDXT1A.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$ardor3d$image$ImageDataFormat[ImageDataFormat.PrecompressedDXT3.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$ardor3d$image$ImageDataFormat[ImageDataFormat.PrecompressedDXT5.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$com$ardor3d$image$ImageDataFormat[ImageDataFormat.PrecompressedLATC_L.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                $SwitchMap$com$ardor3d$image$ImageDataFormat[ImageDataFormat.PrecompressedLATC_LA.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            int[] iArr2 = new int[ImageDataType.values().length];
            $SwitchMap$com$ardor3d$image$ImageDataType = iArr2;
            try {
                iArr2[ImageDataType.Byte.ordinal()] = 1;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                $SwitchMap$com$ardor3d$image$ImageDataType[ImageDataType.UnsignedByte.ordinal()] = 2;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                $SwitchMap$com$ardor3d$image$ImageDataType[ImageDataType.Short.ordinal()] = 3;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                $SwitchMap$com$ardor3d$image$ImageDataType[ImageDataType.UnsignedShort.ordinal()] = 4;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                $SwitchMap$com$ardor3d$image$ImageDataType[ImageDataType.Int.ordinal()] = 5;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                $SwitchMap$com$ardor3d$image$ImageDataType[ImageDataType.UnsignedInt.ordinal()] = 6;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                $SwitchMap$com$ardor3d$image$ImageDataType[ImageDataType.HalfFloat.ordinal()] = 7;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                $SwitchMap$com$ardor3d$image$ImageDataType[ImageDataType.Float.ordinal()] = 8;
            } catch (NoSuchFieldError unused28) {
            }
        }
    }

    public static final int getPixelByteSize(ImageDataFormat imageDataFormat, ImageDataType imageDataType) {
        return Math.round(imageDataFormat.getComponents() * imageDataType.getBytesPerComponent());
    }

    public static final TextureStoreFormat getTextureStoreFormat(TextureStoreFormat textureStoreFormat, Image image) {
        TextureStoreFormat textureStoreFormat2 = TextureStoreFormat.GuessCompressedFormat;
        if (textureStoreFormat != textureStoreFormat2 && textureStoreFormat != TextureStoreFormat.GuessNoCompressedFormat) {
            return textureStoreFormat;
        }
        if (image == null) {
            throw new Error("Unable to guess format type... Image is null.");
        }
        ImageDataType dataType = image.getDataType();
        ImageDataFormat dataFormat = image.getDataFormat();
        switch (AnonymousClass1.$SwitchMap$com$ardor3d$image$ImageDataFormat[dataFormat.ordinal()]) {
            case 1:
            case 2:
            case 3:
                if (textureStoreFormat == textureStoreFormat2) {
                    return TextureStoreFormat.CompressedRGBA;
                }
                switch (AnonymousClass1.$SwitchMap$com$ardor3d$image$ImageDataType[dataType.ordinal()]) {
                    case 1:
                    case 2:
                        return TextureStoreFormat.RGBA8;
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                        return TextureStoreFormat.RGBA16;
                    case 7:
                        return TextureStoreFormat.RGBA16F;
                    case 8:
                        return TextureStoreFormat.RGBA32F;
                }
            case 4:
            case 5:
                if (textureStoreFormat == textureStoreFormat2) {
                    return TextureStoreFormat.CompressedRGB;
                }
                switch (AnonymousClass1.$SwitchMap$com$ardor3d$image$ImageDataType[dataType.ordinal()]) {
                    case 1:
                    case 2:
                        return TextureStoreFormat.RGB8;
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                        return TextureStoreFormat.RGB16;
                    case 7:
                        return TextureStoreFormat.RGB16F;
                    case 8:
                        return TextureStoreFormat.RGB32F;
                }
            case 6:
                if (textureStoreFormat == textureStoreFormat2) {
                    return TextureStoreFormat.CompressedLuminance;
                }
                switch (AnonymousClass1.$SwitchMap$com$ardor3d$image$ImageDataType[dataType.ordinal()]) {
                    case 1:
                    case 2:
                        return TextureStoreFormat.Luminance8;
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                        return TextureStoreFormat.Luminance16;
                    case 7:
                        return TextureStoreFormat.Luminance16F;
                    case 8:
                        return TextureStoreFormat.Luminance32F;
                }
            case 7:
                if (textureStoreFormat == textureStoreFormat2) {
                    return TextureStoreFormat.CompressedLuminanceAlpha;
                }
                switch (AnonymousClass1.$SwitchMap$com$ardor3d$image$ImageDataType[dataType.ordinal()]) {
                    case 1:
                    case 2:
                        return TextureStoreFormat.Luminance4Alpha4;
                    case 3:
                    case 4:
                        return TextureStoreFormat.Luminance8Alpha8;
                    case 5:
                    case 6:
                        return TextureStoreFormat.Luminance16Alpha16;
                    case 7:
                        return TextureStoreFormat.LuminanceAlpha16F;
                    case 8:
                        return TextureStoreFormat.LuminanceAlpha32F;
                }
            case 8:
                switch (AnonymousClass1.$SwitchMap$com$ardor3d$image$ImageDataType[dataType.ordinal()]) {
                    case 1:
                    case 2:
                        return TextureStoreFormat.Alpha8;
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                        return TextureStoreFormat.Alpha16;
                    case 7:
                        return TextureStoreFormat.Alpha16F;
                    case 8:
                        return TextureStoreFormat.Alpha32F;
                }
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
                switch (AnonymousClass1.$SwitchMap$com$ardor3d$image$ImageDataType[dataType.ordinal()]) {
                    case 1:
                    case 2:
                        return TextureStoreFormat.Intensity8;
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                        return TextureStoreFormat.Intensity16;
                    case 7:
                        return TextureStoreFormat.Intensity16F;
                    case 8:
                        return TextureStoreFormat.Intensity32F;
                }
            case 14:
                return TextureStoreFormat.Depth;
            case 15:
                return TextureStoreFormat.NativeDXT1;
            case 16:
                return TextureStoreFormat.NativeDXT1A;
            case 17:
                return TextureStoreFormat.NativeDXT3;
            case 18:
                return TextureStoreFormat.NativeDXT5;
            case 19:
                return TextureStoreFormat.NativeLATC_L;
            case 20:
                return TextureStoreFormat.NativeLATC_LA;
        }
        throw new Error("Unhandled type / format combination: " + ((Object) dataType) + " / " + ((Object) dataFormat));
    }
}
