package com.jme3.texture.image;

import com.jme3.texture.Image;
import java.nio.ByteBuffer;
import java.util.EnumMap;

public abstract class ImageCodec {
    public static final int FLAG_F16 = 1;
    public static final int FLAG_F32 = 2;
    public static final int FLAG_GRAY = 4;
    private static final EnumMap<Image.Format, ImageCodec> params;
    protected final int bpp;
    protected final boolean isGray;
    protected final int maxAlpha;
    protected final int maxBlue;
    protected final int maxGreen;
    protected final int maxRed;
    protected final int type;

    static {
        EnumMap<Image.Format, ImageCodec> enumMap = new EnumMap<>((Class<Image.Format>) Image.Format.class);
        params = enumMap;
        enumMap.put((EnumMap<Image.Format, ImageCodec>) Image.Format.Alpha8, (Image.Format) new ByteOffsetImageCodec(1, 0, 0, -1, -1, -1));
        enumMap.put((EnumMap<Image.Format, ImageCodec>) Image.Format.Luminance8, (Image.Format) new ByteOffsetImageCodec(1, 4, -1, 0, -1, -1));
        enumMap.put((EnumMap<Image.Format, ImageCodec>) Image.Format.Luminance16F, (Image.Format) new BitMaskImageCodec(2, 5, 0, 16, 0, 0, 0, 0, 0, 0));
        enumMap.put((EnumMap<Image.Format, ImageCodec>) Image.Format.Luminance32F, (Image.Format) new BitMaskImageCodec(4, 6, 0, 32, 0, 0, 0, 0, 0, 0));
        enumMap.put((EnumMap<Image.Format, ImageCodec>) Image.Format.Luminance8Alpha8, (Image.Format) new ByteOffsetImageCodec(2, 4, 1, 0, -1, -1));
        enumMap.put((EnumMap<Image.Format, ImageCodec>) Image.Format.Luminance16FAlpha16F, (Image.Format) new BitMaskImageCodec(4, 5, 16, 16, 0, 0, 16, 0, 0, 0));
        enumMap.put((EnumMap<Image.Format, ImageCodec>) Image.Format.BGR8, (Image.Format) new ByteOffsetImageCodec(3, 0, -1, 2, 1, 0));
        enumMap.put((EnumMap<Image.Format, ImageCodec>) Image.Format.RGB565, (Image.Format) new BitMaskImageCodec(2, 0, 0, 5, 6, 5, 0, 11, 5, 0));
        enumMap.put((EnumMap<Image.Format, ImageCodec>) Image.Format.RGB8, (Image.Format) new ByteOffsetImageCodec(3, 0, -1, 0, 1, 2));
        enumMap.put((EnumMap<Image.Format, ImageCodec>) Image.Format.RGB32F, (Image.Format) new ByteAlignedImageCodec(12, 2, 0, 4, 4, 4, 0, 0, 4, 8));
        enumMap.put((EnumMap<Image.Format, ImageCodec>) Image.Format.R16F, (Image.Format) new ByteAlignedImageCodec(2, 1, 0, 2, 0, 0, 0, 0, 0, 0));
        enumMap.put((EnumMap<Image.Format, ImageCodec>) Image.Format.RG16F, (Image.Format) new ByteAlignedImageCodec(4, 1, 0, 2, 2, 0, 0, 0, 2, 0));
        ByteAlignedImageCodec byteAlignedImageCodec = new ByteAlignedImageCodec(6, 1, 0, 2, 2, 2, 0, 0, 2, 4);
        enumMap.put((EnumMap<Image.Format, ImageCodec>) Image.Format.RGB16F, (Image.Format) byteAlignedImageCodec);
        enumMap.put((EnumMap<Image.Format, ImageCodec>) Image.Format.RGB16F_to_RGB111110F, (Image.Format) byteAlignedImageCodec);
        enumMap.put((EnumMap<Image.Format, ImageCodec>) Image.Format.RGB16F_to_RGB9E5, (Image.Format) byteAlignedImageCodec);
        enumMap.put((EnumMap<Image.Format, ImageCodec>) Image.Format.ABGR8, (Image.Format) new ByteOffsetImageCodec(4, 0, 0, 3, 2, 1));
        enumMap.put((EnumMap<Image.Format, ImageCodec>) Image.Format.ARGB8, (Image.Format) new ByteOffsetImageCodec(4, 0, 0, 1, 2, 3));
        enumMap.put((EnumMap<Image.Format, ImageCodec>) Image.Format.BGRA8, (Image.Format) new ByteOffsetImageCodec(4, 0, 3, 2, 1, 0));
        Image.Format format = Image.Format.RGB5A1;
        enumMap.put((EnumMap<Image.Format, ImageCodec>) format, (Image.Format) new BitMaskImageCodec(2, 0, 1, 5, 5, 5, 0, 11, 6, 1));
        ((BitMaskImageCodec) enumMap.get(format)).f81651be = true;
        enumMap.put((EnumMap<Image.Format, ImageCodec>) Image.Format.RGB10A2, (Image.Format) new BitMaskImageCodec(4, 0, 2, 10, 10, 10, 0, 22, 12, 2));
        enumMap.put((EnumMap<Image.Format, ImageCodec>) Image.Format.RGBA8, (Image.Format) new ByteOffsetImageCodec(4, 0, 3, 0, 1, 2));
        enumMap.put((EnumMap<Image.Format, ImageCodec>) Image.Format.RGBA16F, (Image.Format) new ByteAlignedImageCodec(8, 1, 2, 2, 2, 2, 6, 0, 2, 4));
        enumMap.put((EnumMap<Image.Format, ImageCodec>) Image.Format.RGBA32F, (Image.Format) new ByteAlignedImageCodec(16, 2, 4, 4, 4, 4, 12, 0, 4, 8));
    }

    public ImageCodec(int i10, int i11, int i12, int i13, int i14, int i15) {
        this.bpp = i10;
        this.isGray = (i11 & 4) != 0;
        this.type = i11 & (-5);
        this.maxAlpha = i12;
        this.maxRed = i13;
        this.maxGreen = i14;
        this.maxBlue = i15;
    }

    public static boolean isSupported(Image.Format format) {
        return params.containsKey(format);
    }

    public static ImageCodec lookup(Image.Format format) {
        ImageCodec imageCodec = params.get(format);
        if (imageCodec != null) {
            return imageCodec;
        }
        throw new UnsupportedOperationException("The format " + ((Object) format) + " is not supported");
    }

    public abstract void readComponents(ByteBuffer byteBuffer, int i10, int i11, int i12, int i13, int[] iArr, byte[] bArr);

    public abstract void writeComponents(ByteBuffer byteBuffer, int i10, int i11, int i12, int i13, int[] iArr, byte[] bArr);
}
