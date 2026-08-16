package com.jme3.util;

import com.jme3.math.ColorRGBA;
import com.jme3.math.FastMath;
import com.jme3.texture.Image;
import com.jme3.texture.image.ColorSpace;
import com.jme3.texture.image.ImageRaster;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;

public final class MipMapGenerator {
    private static final float EPSILON_ALPHA = 1.0E-8f;

    public static final class MipChain {
        final ByteBuffer combinedData;
        final int[] mipSizes;

        public MipChain(ByteBuffer byteBuffer, int[] iArr) {
            this.combinedData = byteBuffer;
            this.mipSizes = iArr;
        }
    }

    public static final class PixelAccumulator {

        private float f81657a;

        private float f81658b;

        private float f81659g;

        private float f81660r;
        private float weight;

        private PixelAccumulator() {
        }

        private static float clamp01(float f10) {
            if (f10 <= 0.0f) {
                return 0.0f;
            }
            if (f10 >= 1.0f) {
                return 1.0f;
            }
            return f10;
        }

        public void add(ColorRGBA colorRGBA, float f10, boolean z10, boolean z11) {
            if (f10 <= 0.0f) {
                return;
            }
            float clamp01 = z11 ? clamp01(colorRGBA.f81595a) : colorRGBA.f81595a;
            if (z10) {
                this.f81660r += colorRGBA.f81598r * clamp01 * f10;
                this.f81659g += colorRGBA.f81597g * clamp01 * f10;
                this.f81658b += colorRGBA.f81596b * clamp01 * f10;
            } else {
                this.f81660r += colorRGBA.f81598r * f10;
                this.f81659g += colorRGBA.f81597g * f10;
                this.f81658b += colorRGBA.f81596b * f10;
            }
            this.f81657a += clamp01 * f10;
            this.weight += f10;
        }

        public void clear() {
            this.f81660r = 0.0f;
            this.f81659g = 0.0f;
            this.f81658b = 0.0f;
            this.f81657a = 0.0f;
            this.weight = 0.0f;
        }

        public void toColor(ColorRGBA colorRGBA, boolean z10, boolean z11) {
            float f10;
            float f11;
            float f12 = this.weight;
            float f13 = 0.0f;
            if (f12 <= 0.0f) {
                colorRGBA.set(0.0f, 0.0f, 0.0f, 0.0f);
                return;
            }
            float f14 = this.f81657a;
            float f15 = f14 / f12;
            if (!z10) {
                f13 = this.f81660r / f12;
                f10 = this.f81659g / f12;
                f11 = this.f81658b / f12;
            } else if (f14 > 1.0E-8f) {
                f13 = this.f81660r / f14;
                f10 = this.f81659g / f14;
                f11 = this.f81658b / f14;
            } else {
                f10 = 0.0f;
                f11 = 0.0f;
            }
            if (z11) {
                f13 = clamp01(f13);
                f10 = clamp01(f10);
                f11 = clamp01(f11);
                f15 = clamp01(f15);
            }
            colorRGBA.set(f13, f10, f11, f15);
        }
    }

    private MipMapGenerator() {
    }

    private static void areaResample(ImageRaster imageRaster, ImageRaster imageRaster2, boolean z10, boolean z11) {
        ColorRGBA colorRGBA;
        int width = imageRaster.getWidth();
        int height = imageRaster.getHeight();
        int width2 = imageRaster2.getWidth();
        int height2 = imageRaster2.getHeight();
        double d10 = width / width2;
        double d11 = height / height2;
        ColorRGBA colorRGBA2 = new ColorRGBA();
        ColorRGBA colorRGBA3 = new ColorRGBA();
        PixelAccumulator pixelAccumulator = new PixelAccumulator();
        int i10 = 0;
        while (i10 < height2) {
            double d12 = i10 * d11;
            int i11 = i10 + 1;
            int i12 = i10;
            double d13 = i11 * d11;
            double d14 = d11;
            int max = Math.max(0, (int) Math.floor(d12));
            ColorRGBA colorRGBA4 = colorRGBA2;
            ColorRGBA colorRGBA5 = colorRGBA3;
            int min = Math.min(height, Math.max(max + 1, (int) Math.ceil(d13)));
            int i13 = 0;
            while (i13 < width2) {
                int i14 = height;
                int i15 = width2;
                double d15 = i13 * d10;
                int i16 = height2;
                int i17 = i13 + 1;
                int i18 = i13;
                double d16 = i17 * d10;
                double d17 = d10;
                int max2 = Math.max(0, (int) Math.floor(d15));
                int i19 = max;
                int min2 = Math.min(width, Math.max(max2 + 1, (int) Math.ceil(d16)));
                pixelAccumulator.clear();
                int i20 = i19;
                while (i20 < min) {
                    int i21 = min;
                    double d18 = i20;
                    double d19 = d12;
                    float max3 = (float) Math.max(0.0d, Math.min(d13, d18 + 1.0d) - Math.max(d12, d18));
                    if (max3 > 0.0f) {
                        int i22 = max2;
                        while (i22 < min2) {
                            double d20 = i22;
                            int i23 = width;
                            double d21 = d15;
                            float max4 = (float) Math.max(0.0d, Math.min(d16, d20 + 1.0d) - Math.max(d15, d20));
                            if (max4 <= 0.0f) {
                                colorRGBA = colorRGBA4;
                            } else {
                                colorRGBA = colorRGBA4;
                                imageRaster.getPixel(i22, i20, colorRGBA);
                                pixelAccumulator.add(colorRGBA, max4 * max3, z10, z11);
                            }
                            i22++;
                            colorRGBA4 = colorRGBA;
                            width = i23;
                            d15 = d21;
                        }
                    }
                    i20++;
                    colorRGBA4 = colorRGBA4;
                    min = i21;
                    d12 = d19;
                    width = width;
                    d15 = d15;
                }
                pixelAccumulator.toColor(colorRGBA5, z10, z11);
                imageRaster2.setPixel(i18, i12, colorRGBA5);
                width2 = i15;
                height2 = i16;
                height = i14;
                d10 = d17;
                max = i19;
                i13 = i17;
                d12 = d12;
                width = width;
            }
            i10 = i11;
            d11 = d14;
            colorRGBA2 = colorRGBA4;
            colorRGBA3 = colorRGBA5;
            width2 = width2;
            height2 = height2;
        }
    }

    private static void bilinearResample(ImageRaster imageRaster, ImageRaster imageRaster2, boolean z10, boolean z11) {
        int i10;
        int i11;
        int width = imageRaster.getWidth();
        int height = imageRaster.getHeight();
        int width2 = imageRaster2.getWidth();
        int height2 = imageRaster2.getHeight();
        double d10 = width / width2;
        double d11 = height / height2;
        ColorRGBA colorRGBA = new ColorRGBA();
        ColorRGBA colorRGBA2 = new ColorRGBA();
        PixelAccumulator pixelAccumulator = new PixelAccumulator();
        int i12 = 0;
        while (i12 < height2) {
            double d12 = ((i12 + 0.5d) * d11) - 0.5d;
            int i13 = i12;
            int floor = (int) Math.floor(d12);
            double d13 = d11;
            double d14 = d12 - floor;
            if (floor < 0) {
                d14 = 0.0d;
                floor = 0;
            }
            int i14 = floor + 1;
            if (i14 >= height) {
                floor = height - 1;
                i14 = floor;
                d14 = 0.0d;
            }
            float f10 = (float) (1.0d - d14);
            float f11 = (float) d14;
            int i15 = 0;
            while (i15 < width2) {
                int i16 = height;
                int i17 = width2;
                double d15 = ((i15 + 0.5d) * d10) - 0.5d;
                int i18 = height2;
                double d16 = d10;
                int floor2 = (int) Math.floor(d15);
                double d17 = d15 - floor2;
                if (floor2 < 0) {
                    d17 = 0.0d;
                    floor2 = 0;
                }
                int i19 = floor2 + 1;
                if (i19 >= width) {
                    floor2 = width - 1;
                    i10 = i15;
                    i11 = width;
                    i19 = floor2;
                    d17 = 0.0d;
                } else {
                    i10 = i15;
                    i11 = width;
                }
                float f12 = (float) (1.0d - d17);
                float f13 = (float) d17;
                pixelAccumulator.clear();
                imageRaster.getPixel(floor2, floor, colorRGBA);
                pixelAccumulator.add(colorRGBA, f12 * f10, z10, z11);
                imageRaster.getPixel(i19, floor, colorRGBA);
                pixelAccumulator.add(colorRGBA, f13 * f10, z10, z11);
                imageRaster.getPixel(floor2, i14, colorRGBA);
                pixelAccumulator.add(colorRGBA, f12 * f11, z10, z11);
                imageRaster.getPixel(i19, i14, colorRGBA);
                pixelAccumulator.add(colorRGBA, f13 * f11, z10, z11);
                pixelAccumulator.toColor(colorRGBA2, z10, z11);
                int i20 = i10;
                imageRaster2.setPixel(i20, i13, colorRGBA2);
                i15 = i20 + 1;
                height = i16;
                width2 = i17;
                height2 = i18;
                d10 = d16;
                width = i11;
            }
            i12 = i13 + 1;
            d11 = d13;
            width2 = width2;
            d10 = d10;
            width = width;
        }
    }

    public static boolean canGenerateMipmaps(Image image) {
        int bitsPerPixel;
        if (image != null && image.getWidth() >= 1 && image.getHeight() >= 1 && image.getDepth() <= 1 && !image.getFormat().isCompressed() && !image.getFormat().isDepthFormat() && image.getData() != null && !image.getData().isEmpty() && (bitsPerPixel = image.getFormat().getBitsPerPixel()) > 0 && bitsPerPixel % 8 == 0) {
            try {
                int levelSize = levelSize(image.getFormat(), image.getWidth(), image.getHeight());
                for (ByteBuffer byteBuffer : image.getData()) {
                    if (byteBuffer == null || byteBuffer.capacity() < levelSize) {
                        return false;
                    }
                }
                return ImageRaster.isSupported(image.getFormat());
            } catch (RuntimeException unused) {
            }
        }
        return false;
    }

    private static ByteBuffer copyBaseLevel(ByteBuffer byteBuffer, int i10) {
        if (byteBuffer == null) {
            throw new IllegalArgumentException("Image data buffer is null");
        }
        if (byteBuffer.capacity() < i10) {
            throw new IllegalArgumentException("Image data is smaller than expected base level size. Data capacity=" + byteBuffer.capacity() + ", expected=" + i10);
        }
        ByteBuffer duplicate = byteBuffer.duplicate();
        duplicate.clear();
        duplicate.limit(i10);
        ByteBuffer createByteBuffer = BufferUtils.createByteBuffer(i10);
        createByteBuffer.put(duplicate);
        createByteBuffer.flip();
        return createByteBuffer;
    }

    private static MipChain generateMipChainForSlice(Image image, int i10, int i11, int i12, boolean z10, boolean z11) {
        int i13;
        ArrayList arrayList = new ArrayList();
        Image.Format format = image.getFormat();
        ColorSpace colorSpace = image.getColorSpace();
        int i14 = i11;
        int i15 = i12;
        ByteBuffer copyBaseLevel = copyBaseLevel(image.getData(i10), levelSize(format, i11, i12));
        Image image2 = new Image(format, i11, i12, copyBaseLevel, colorSpace);
        arrayList.add(copyBaseLevel);
        while (true) {
            if (i14 <= 1 && i15 <= 1) {
                break;
            }
            i14 = Math.max(1, i14 / 2);
            i15 = Math.max(1, i15 / 2);
            image2 = scaleLevel(image2, 0, i14, i15, z10, z11);
            arrayList.add(image2.getData(0));
        }
        int[] iArr = new int[arrayList.size()];
        int i16 = 0;
        for (i13 = 0; i13 < arrayList.size(); i13++) {
            int capacity = ((ByteBuffer) arrayList.get(i13)).capacity();
            iArr[i13] = capacity;
            i16 += capacity;
        }
        ByteBuffer createByteBuffer = BufferUtils.createByteBuffer(i16);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ByteBuffer duplicate = ((ByteBuffer) it.next()).duplicate();
            duplicate.clear();
            createByteBuffer.put(duplicate);
        }
        createByteBuffer.flip();
        return new MipChain(createByteBuffer, iArr);
    }

    public static void generateMipMaps(Image image) {
        generateMipMaps(image, true, isSrgb(image));
    }

    private static boolean isSrgb(Image image) {
        if (image.getColorSpace() == ColorSpace.sRGB) {
            return true;
        }
        return image.getFormat().name().toLowerCase(Locale.ROOT).contains("srgb");
    }

    private static int levelSize(Image.Format format, int i10, int i11) {
        long bitsPerPixel = i10 * i11 * format.getBitsPerPixel();
        if (bitsPerPixel % 8 != 0) {
            throw new UnsupportedOperationException("Image level is not byte-addressable: " + i10 + "x" + i11 + " " + ((Object) format));
        }
        long j10 = bitsPerPixel / 8;
        if (j10 <= 2147483647L) {
            return (int) j10;
        }
        throw new IllegalArgumentException("Image level is too large: " + i10 + "x" + i11 + " " + ((Object) format));
    }

    public static Image resizeToPowerOf2(Image image) {
        return scaleImage(image, FastMath.nearestPowerOfTwo(image.getWidth()), FastMath.nearestPowerOfTwo(image.getHeight()));
    }

    public static Image scaleImage(Image image, int i10, int i11) {
        return scaleImage(image, i10, i11, true, isSrgb(image));
    }

    private static Image scaleLevel(Image image, int i10, int i11, int i12, boolean z10, boolean z11) {
        if (i11 < 1 || i12 < 1) {
            throw new IllegalArgumentException("Output size must be at least 1x1");
        }
        validateImage(image);
        Image image2 = new Image(image.getFormat(), i11, i12, BufferUtils.createByteBuffer(levelSize(image.getFormat(), i11, i12)), image.getColorSpace());
        boolean z12 = false;
        ImageRaster create = ImageRaster.create(image, i10, 0, z10);
        ImageRaster create2 = ImageRaster.create(image2, 0, 0, z10);
        if (i11 <= create.getWidth() && i12 <= create.getHeight()) {
            z12 = true;
        }
        boolean z13 = !image.getFormat().isFloatingPont();
        if (z12) {
            areaResample(create, create2, z11, z13);
        } else {
            bilinearResample(create, create2, z11, z13);
        }
        return image2;
    }

    private static void validateImage(Image image) {
        if (image == null) {
            throw new IllegalArgumentException("Image cannot be null");
        }
        if (image.getWidth() < 1 || image.getHeight() < 1) {
            throw new IllegalArgumentException("Image size must be at least 1x1");
        }
        if (image.getData() == null || image.getData().isEmpty()) {
            throw new IllegalArgumentException("Image has no data buffers");
        }
        int bitsPerPixel = image.getFormat().getBitsPerPixel();
        if (bitsPerPixel <= 0 || bitsPerPixel % 8 != 0) {
            throw new UnsupportedOperationException("CPU mipmap generation requires byte-addressable formats. Unsupported format: " + ((Object) image.getFormat()) + " with " + bitsPerPixel + " bits per pixel");
        }
        int levelSize = levelSize(image.getFormat(), image.getWidth(), image.getHeight());
        for (int i10 = 0; i10 < image.getData().size(); i10++) {
            ByteBuffer data = image.getData(i10);
            if (data == null) {
                throw new IllegalArgumentException("Image data buffer " + i10 + " is null");
            }
            if (data.capacity() < levelSize) {
                throw new IllegalArgumentException("Image data buffer " + i10 + " is smaller than expected base level size. Data capacity=" + data.capacity() + ", expected=" + levelSize);
            }
        }
    }

    public static void generateMipMaps(Image image, boolean z10, boolean z11) {
        validateImage(image);
        int width = image.getWidth();
        int height = image.getHeight();
        ArrayList arrayList = new ArrayList(image.getData().size());
        int size = image.getData().size();
        for (int i10 = 0; i10 < size; i10++) {
            arrayList.add(generateMipChainForSlice(image, i10, width, height, z10, z11));
        }
        for (int i11 = 0; i11 < arrayList.size(); i11++) {
            image.setData(i11, ((MipChain) arrayList.get(i11)).combinedData);
        }
        if (arrayList.isEmpty()) {
            return;
        }
        image.setMipMapSizes(((MipChain) arrayList.get(0)).mipSizes);
    }

    public static Image scaleImage(Image image, int i10, int i11, boolean z10, boolean z11) {
        return scaleLevel(image, 0, i10, i11, z10, z11);
    }
}
