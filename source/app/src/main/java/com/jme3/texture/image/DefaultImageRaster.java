package com.jme3.texture.image;

import com.jme3.math.ColorRGBA;
import com.jme3.math.FastMath;
import com.jme3.texture.Image;
import java.nio.ByteBuffer;

public class DefaultImageRaster extends ImageRaster {
    private ByteBuffer buffer;
    private final ImageCodec codec;
    private final int[] components = new int[4];
    private final boolean convertToLinear;
    private final int height;
    private final Image image;
    private final int offset;
    private int slice;
    private final byte[] temp;
    private final int width;

    public DefaultImageRaster(Image image, int i10, int i11, boolean z10) {
        int[] mipMapSizes = image.getMipMapSizes();
        int length = mipMapSizes != null ? mipMapSizes.length : 1;
        if (i11 >= length) {
            throw new IllegalStateException("Cannot create image raster for mipmap level #" + i11 + ". Image only has " + length + " mipmap levels.");
        }
        if (image.hasMipmaps()) {
            this.width = Math.max(1, image.getWidth() >> i11);
            this.height = Math.max(1, image.getHeight() >> i11);
            int i12 = 0;
            for (int i13 = 0; i13 < i11; i13++) {
                i12 += mipMapSizes[i13];
            }
            this.offset = i12;
        } else {
            this.width = image.getWidth();
            this.height = image.getHeight();
            this.offset = 0;
        }
        this.image = image;
        this.slice = i10;
        this.convertToLinear = z10 && image.getColorSpace() == ColorSpace.sRGB;
        this.buffer = image.getData(i10);
        ImageCodec lookup = ImageCodec.lookup(image.getFormat());
        this.codec = lookup;
        if ((lookup instanceof ByteAlignedImageCodec) || (lookup instanceof ByteOffsetImageCodec)) {
            this.temp = new byte[lookup.bpp];
        } else {
            this.temp = null;
        }
    }

    private ByteBuffer getBuffer() {
        if (this.buffer == null) {
            if (this.image.getDepth() > 1) {
                int width = this.image.getWidth() * this.image.getHeight() * this.codec.bpp * this.slice;
                ByteBuffer data = this.image.getData(0);
                this.buffer = data;
                data.position(width);
                this.buffer = this.buffer.slice();
            } else {
                this.buffer = this.image.getData(this.slice);
            }
        }
        return this.buffer;
    }

    private void rangeCheck(int i10, int i11) {
        if (i10 < 0 || i11 < 0 || i10 >= this.width || i11 >= this.height) {
            throw new IllegalArgumentException("x and y must be inside the image dimensions:" + i10 + ", " + i11 + " in:" + this.width + ", " + this.height);
        }
    }

    @Override
    public int getHeight() {
        return this.height;
    }

    @Override
    public ColorRGBA getPixel(int i10, int i11, ColorRGBA colorRGBA) {
        rangeCheck(i10, i11);
        this.codec.readComponents(getBuffer(), i10, i11, this.width, this.offset, this.components, this.temp);
        if (colorRGBA == null) {
            colorRGBA = new ColorRGBA();
        }
        int i12 = this.codec.type;
        if (i12 == 0) {
            int[] iArr = this.components;
            colorRGBA.set(iArr[1] / r9.maxRed, iArr[2] / r9.maxGreen, iArr[3] / r9.maxBlue, iArr[0] / r9.maxAlpha);
        } else if (i12 == 1) {
            colorRGBA.set(FastMath.convertHalfToFloat((short) this.components[1]), FastMath.convertHalfToFloat((short) this.components[2]), FastMath.convertHalfToFloat((short) this.components[3]), FastMath.convertHalfToFloat((short) this.components[0]));
        } else if (i12 == 2) {
            colorRGBA.set(Float.intBitsToFloat(this.components[1]), Float.intBitsToFloat(this.components[2]), Float.intBitsToFloat(this.components[3]), Float.intBitsToFloat(this.components[0]));
        }
        ImageCodec imageCodec = this.codec;
        if (imageCodec.isGray) {
            float f10 = colorRGBA.f81598r;
            colorRGBA.f81596b = f10;
            colorRGBA.f81597g = f10;
        } else {
            if (imageCodec.maxRed == 0) {
                colorRGBA.f81598r = 1.0f;
            }
            if (imageCodec.maxGreen == 0) {
                colorRGBA.f81597g = 1.0f;
            }
            if (imageCodec.maxBlue == 0) {
                colorRGBA.f81596b = 1.0f;
            }
            if (imageCodec.maxAlpha == 0) {
                colorRGBA.f81595a = 1.0f;
            }
        }
        if (this.convertToLinear) {
            colorRGBA.setAsSrgb(colorRGBA.f81598r, colorRGBA.f81597g, colorRGBA.f81596b, colorRGBA.f81595a);
        }
        return colorRGBA;
    }

    @Override
    public int getWidth() {
        return this.width;
    }

    @Override
    public void setPixel(int i10, int i11, ColorRGBA colorRGBA) {
        rangeCheck(i10, i11);
        if (this.convertToLinear) {
            colorRGBA = colorRGBA.getAsSrgb();
        }
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
        this.codec.writeComponents(getBuffer(), i10, i11, this.width, this.offset, this.components, this.temp);
        this.image.setUpdateNeeded();
    }

    public void setSlice(int i10) {
        this.slice = i10;
        this.buffer = this.image.getData(i10);
    }
}
