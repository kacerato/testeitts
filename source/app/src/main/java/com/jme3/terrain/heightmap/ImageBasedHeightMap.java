package com.jme3.terrain.heightmap;

import com.jme3.math.ColorRGBA;
import com.jme3.texture.Image;
import com.jme3.texture.image.ImageRaster;

public class ImageBasedHeightMap extends AbstractHeightMap {
    private float backwardsCompScale = 255.0f;
    protected Image colorImage;

    public ImageBasedHeightMap(Image image) {
        this.colorImage = image;
    }

    public float calculateHeight(float f10, float f11, float f12) {
        return (float) ((f10 * 0.299d) + (f11 * 0.587d) + (f12 * 0.114d));
    }

    public ImageRaster getImageRaster() {
        return ImageRaster.create(this.colorImage);
    }

    @Override
    public boolean load() {
        return load(false, false);
    }

    public void setImage(Image image) {
        this.colorImage = image;
    }

    public float calculateHeight(ColorRGBA colorRGBA) {
        return (float) ((colorRGBA.f81598r * 0.299d) + (colorRGBA.f81597g * 0.587d) + (colorRGBA.f81596b * 0.114d));
    }

    public boolean load(boolean z10, boolean z11) {
        int width = this.colorImage.getWidth();
        int height = this.colorImage.getHeight();
        if (width == height) {
            this.size = width;
            ImageRaster imageRaster = getImageRaster();
            this.heightData = new float[width * height];
            ColorRGBA colorRGBA = new ColorRGBA();
            if (z11) {
                int i10 = 0;
                for (int i11 = 0; i11 < height; i11++) {
                    if (z10) {
                        int i12 = width - 1;
                        while (i12 >= 0) {
                            this.heightData[i10] = calculateHeight(imageRaster.getPixel(i12, i11, colorRGBA)) * this.heightScale * this.backwardsCompScale;
                            i12--;
                            i10++;
                        }
                    } else {
                        int i13 = 0;
                        while (i13 < width) {
                            this.heightData[i10] = calculateHeight(imageRaster.getPixel(i13, i11, colorRGBA)) * this.heightScale * this.backwardsCompScale;
                            i13++;
                            i10++;
                        }
                    }
                }
            } else {
                int i14 = 0;
                for (int i15 = height - 1; i15 >= 0; i15--) {
                    if (z10) {
                        int i16 = width - 1;
                        while (i16 >= 0) {
                            this.heightData[i14] = calculateHeight(imageRaster.getPixel(i16, i15, colorRGBA)) * this.heightScale * this.backwardsCompScale;
                            i16--;
                            i14++;
                        }
                    } else {
                        int i17 = 0;
                        while (i17 < width) {
                            this.heightData[i14] = calculateHeight(imageRaster.getPixel(i17, i15, colorRGBA)) * this.heightScale * this.backwardsCompScale;
                            i17++;
                            i14++;
                        }
                    }
                }
            }
            return true;
        }
        throw new RuntimeException("imageWidth: " + width + " != imageHeight: " + height);
    }

    public ImageBasedHeightMap(Image image, float f10) {
        this.colorImage = image;
        this.heightScale = f10;
    }
}
