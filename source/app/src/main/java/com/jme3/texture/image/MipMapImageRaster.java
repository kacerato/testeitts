package com.jme3.texture.image;

import com.jme3.math.ColorRGBA;
import com.jme3.math.FastMath;
import com.jme3.texture.Image;
import java.nio.ByteBuffer;

public class MipMapImageRaster extends ImageRaster {
    private ByteBuffer buffer;
    private final ImageCodec codec;
    private final int[] components = new int[4];
    private int[] height;
    private final Image image;
    private int mipLevel;
    private int[] offsets;
    private int slice;
    private final byte[] temp;
    private int[] width;

    public MipMapImageRaster(Image image, int i10) {
        this.image = image;
        this.slice = i10;
        this.buffer = image.getData(i10);
        this.codec = ImageCodec.lookup(image.getFormat());
        if (!image.hasMipmaps()) {
            throw new IllegalArgumentException("Image must have MipMapSizes initialized.");
        }
        int length = image.getMipMapSizes().length;
        this.width = new int[length];
        this.height = new int[length];
        this.offsets = new int[length];
        for (int i11 = 0; i11 < length; i11++) {
            this.width[i11] = Math.max(1, image.getWidth() >> i11);
            this.height[i11] = Math.max(1, image.getHeight() >> i11);
            if (i11 > 0) {
                int i12 = i11 - 1;
                this.offsets[i11] = image.getMipMapSizes()[i12] + this.offsets[i12];
            }
        }
        ImageCodec imageCodec = this.codec;
        if ((imageCodec instanceof ByteAlignedImageCodec) || (imageCodec instanceof ByteOffsetImageCodec)) {
            this.temp = new byte[imageCodec.bpp];
        } else {
            this.temp = null;
        }
    }

    private ByteBuffer getBuffer() {
        if (this.buffer == null) {
            this.buffer = this.image.getData(this.slice);
        }
        return this.buffer;
    }

    private void rangeCheck(int i10, int i11) {
        if (i10 >= 0 && i11 >= 0) {
            int[] iArr = this.width;
            int i12 = this.mipLevel;
            if (i10 < iArr[i12] && i11 < this.height[i12]) {
                return;
            }
        }
        throw new IllegalArgumentException("x and y must be inside the image dimensions");
    }

    @Override
    public int getHeight() {
        return this.height[this.mipLevel];
    }

    @Override
    public ColorRGBA getPixel(int i10, int i11, ColorRGBA colorRGBA) {
        rangeCheck(i10, i11);
        ImageCodec imageCodec = this.codec;
        ByteBuffer buffer = getBuffer();
        int[] iArr = this.width;
        int i12 = this.mipLevel;
        imageCodec.readComponents(buffer, i10, i11, iArr[i12], this.offsets[i12], this.components, this.temp);
        if (colorRGBA == null) {
            colorRGBA = new ColorRGBA();
        }
        int i13 = this.codec.type;
        if (i13 == 0) {
            int[] iArr2 = this.components;
            colorRGBA.set(iArr2[1] / r9.maxRed, iArr2[2] / r9.maxGreen, iArr2[3] / r9.maxBlue, iArr2[0] / r9.maxAlpha);
        } else if (i13 == 1) {
            colorRGBA.set(FastMath.convertHalfToFloat((short) this.components[1]), FastMath.convertHalfToFloat((short) this.components[2]), FastMath.convertHalfToFloat((short) this.components[3]), FastMath.convertHalfToFloat((short) this.components[0]));
        } else if (i13 == 2) {
            colorRGBA.set(Float.intBitsToFloat(this.components[1]), Float.intBitsToFloat(this.components[2]), Float.intBitsToFloat(this.components[3]), Float.intBitsToFloat(this.components[0]));
        }
        ImageCodec imageCodec2 = this.codec;
        if (imageCodec2.isGray) {
            float f10 = colorRGBA.f81598r;
            colorRGBA.f81596b = f10;
            colorRGBA.f81597g = f10;
        } else {
            if (imageCodec2.maxRed == 0) {
                colorRGBA.f81598r = 1.0f;
            }
            if (imageCodec2.maxGreen == 0) {
                colorRGBA.f81597g = 1.0f;
            }
            if (imageCodec2.maxBlue == 0) {
                colorRGBA.f81596b = 1.0f;
            }
            if (imageCodec2.maxAlpha == 0) {
                colorRGBA.f81595a = 1.0f;
            }
        }
        return colorRGBA;
    }

    @Override
    public int getWidth() {
        return this.width[this.mipLevel];
    }

    public void setMipLevel(int i10) {
        if (i10 < this.image.getMipMapSizes().length && i10 >= 0) {
            this.mipLevel = i10;
            return;
        }
        throw new IllegalArgumentException("Mip level must be between 0 and " + this.image.getMipMapSizes().length);
    }

    @Override
    public void setPixel(int i10, int i11, ColorRGBA colorRGBA) {
        rangeCheck(i10, i11);
        if (this.codec.isGray) {
            float f10 = (colorRGBA.f81598r * 0.27f) + (colorRGBA.f81597g * 0.67f) + (colorRGBA.f81596b * 0.06f);
            colorRGBA = new ColorRGBA(f10, f10, f10, colorRGBA.f81595a);
        }
        ImageCodec imageCodec = this.codec;
        int i12 = imageCodec.type;
        if (i12 == 0) {
            int[] iArr = this.components;
            float f11 = colorRGBA.f81595a;
            int i13 = imageCodec.maxAlpha;
            iArr[0] = Math.min((int) ((f11 * i13) + 0.5f), i13);
            int[] iArr2 = this.components;
            float f12 = colorRGBA.f81598r;
            int i14 = this.codec.maxRed;
            iArr2[1] = Math.min((int) ((f12 * i14) + 0.5f), i14);
            int[] iArr3 = this.components;
            float f13 = colorRGBA.f81597g;
            int i15 = this.codec.maxGreen;
            iArr3[2] = Math.min((int) ((f13 * i15) + 0.5f), i15);
            int[] iArr4 = this.components;
            float f14 = colorRGBA.f81596b;
            int i16 = this.codec.maxBlue;
            iArr4[3] = Math.min((int) ((f14 * i16) + 0.5f), i16);
        } else if (i12 == 1) {
            this.components[0] = FastMath.convertFloatToHalf(colorRGBA.f81595a);
            this.components[1] = FastMath.convertFloatToHalf(colorRGBA.f81598r);
            this.components[2] = FastMath.convertFloatToHalf(colorRGBA.f81597g);
            this.components[3] = FastMath.convertFloatToHalf(colorRGBA.f81596b);
        } else if (i12 == 2) {
            this.components[0] = Float.floatToIntBits(colorRGBA.f81595a);
            this.components[1] = Float.floatToIntBits(colorRGBA.f81598r);
            this.components[2] = Float.floatToIntBits(colorRGBA.f81597g);
            this.components[3] = Float.floatToIntBits(colorRGBA.f81596b);
        }
        ImageCodec imageCodec2 = this.codec;
        ByteBuffer buffer = getBuffer();
        int[] iArr5 = this.width;
        int i17 = this.mipLevel;
        imageCodec2.writeComponents(buffer, i10, i11, iArr5[i17], this.offsets[i17], this.components, this.temp);
        this.image.setUpdateNeeded();
    }

    public void setSlice(int i10) {
        this.slice = i10;
        this.buffer = this.image.getData(i10);
    }
}
