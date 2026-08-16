package com.jme3.environment.util;

import com.jme3.environment.util.EnvMapUtils;
import com.jme3.math.ColorRGBA;
import com.jme3.math.FastMath;
import com.jme3.math.Vector2f;
import com.jme3.math.Vector3f;
import com.jme3.texture.Image;
import com.jme3.texture.TextureCubeMap;
import com.jme3.texture.image.DefaultImageRaster;
import com.jme3.texture.image.MipMapImageRaster;
import com.jme3.util.BufferUtils;

public class CubeMapWrapper {
    private final Image image;
    private MipMapImageRaster mipMapRaster;
    private final DefaultImageRaster raster;
    private int[] sizes;
    private final Vector2f uvs = new Vector2f();
    private final ColorRGBA tmpColor = new ColorRGBA();

    public CubeMapWrapper(TextureCubeMap textureCubeMap) {
        Image image = textureCubeMap.getImage();
        this.image = image;
        if (image.hasMipmaps()) {
            int length = image.getMipMapSizes().length;
            this.sizes = new int[length];
            this.mipMapRaster = new MipMapImageRaster(image, 0);
            for (int i10 = 0; i10 < length; i10++) {
                this.sizes[i10] = Math.max(1, this.image.getWidth() >> i10);
            }
        } else {
            this.sizes = r0;
            int[] iArr = {image.getWidth()};
        }
        this.raster = new DefaultImageRaster(this.image, 0, 0, false);
    }

    public ColorRGBA getPixel(Vector3f vector3f, ColorRGBA colorRGBA) {
        if (colorRGBA == null) {
            colorRGBA = new ColorRGBA();
        }
        this.raster.setSlice(EnvMapUtils.getCubemapFaceTexCoordFromVector(vector3f, this.sizes[0], this.uvs, EnvMapUtils.FixSeamsMethod.Stretch));
        DefaultImageRaster defaultImageRaster = this.raster;
        Vector2f vector2f = this.uvs;
        return defaultImageRaster.getPixel((int) vector2f.f81609x, (int) vector2f.f81610y, colorRGBA);
    }

    public void initMipMaps(int i10) {
        int log = (int) ((Math.log(this.image.getWidth()) / Math.log(2.0d)) + 1.0d);
        if (i10 > log) {
            throw new IllegalArgumentException("Max mip map number for a " + this.image.getWidth() + "x" + this.image.getHeight() + " cube map is " + log);
        }
        this.sizes = new int[i10];
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            int pow = (int) FastMath.pow(2.0f, (log - 1) - i12);
            this.sizes[i12] = ((pow * pow) * this.image.getFormat().getBitsPerPixel()) / 8;
            i11 += this.sizes[i12];
        }
        this.image.setMipMapSizes(this.sizes);
        this.image.getData().clear();
        for (int i13 = 0; i13 < 6; i13++) {
            this.image.addData(BufferUtils.createByteBuffer(i11));
        }
        this.mipMapRaster = new MipMapImageRaster(this.image, 0);
    }

    public void setPixel(Vector3f vector3f, ColorRGBA colorRGBA) {
        this.raster.setSlice(EnvMapUtils.getCubemapFaceTexCoordFromVector(vector3f, this.sizes[0], this.uvs, EnvMapUtils.FixSeamsMethod.Stretch));
        DefaultImageRaster defaultImageRaster = this.raster;
        Vector2f vector2f = this.uvs;
        defaultImageRaster.setPixel((int) vector2f.f81609x, (int) vector2f.f81610y, colorRGBA);
    }

    public void setPixel(Vector3f vector3f, int i10, ColorRGBA colorRGBA) {
        if (this.mipMapRaster != null) {
            this.mipMapRaster.setSlice(EnvMapUtils.getCubemapFaceTexCoordFromVector(vector3f, this.sizes[i10], this.uvs, EnvMapUtils.FixSeamsMethod.Stretch));
            this.mipMapRaster.setMipLevel(i10);
            MipMapImageRaster mipMapImageRaster = this.mipMapRaster;
            Vector2f vector2f = this.uvs;
            mipMapImageRaster.setPixel((int) vector2f.f81609x, (int) vector2f.f81610y, colorRGBA);
            return;
        }
        throw new IllegalArgumentException("This cube map has no mip maps");
    }

    public ColorRGBA getPixel(Vector3f vector3f, float f10, ColorRGBA colorRGBA) {
        if (this.mipMapRaster != null) {
            if (colorRGBA == null) {
                colorRGBA = new ColorRGBA();
            }
            int i10 = (int) f10;
            int ceil = (int) FastMath.ceil(f10);
            float f11 = f10 - i10;
            int i11 = this.sizes[i10];
            Vector2f vector2f = this.uvs;
            EnvMapUtils.FixSeamsMethod fixSeamsMethod = EnvMapUtils.FixSeamsMethod.Stretch;
            this.mipMapRaster.setSlice(EnvMapUtils.getCubemapFaceTexCoordFromVector(vector3f, i11, vector2f, fixSeamsMethod));
            this.mipMapRaster.setMipLevel(i10);
            MipMapImageRaster mipMapImageRaster = this.mipMapRaster;
            Vector2f vector2f2 = this.uvs;
            mipMapImageRaster.getPixel((int) vector2f2.f81609x, (int) vector2f2.f81610y, colorRGBA);
            this.mipMapRaster.setSlice(EnvMapUtils.getCubemapFaceTexCoordFromVector(vector3f, this.sizes[ceil], this.uvs, fixSeamsMethod));
            this.mipMapRaster.setMipLevel(ceil);
            MipMapImageRaster mipMapImageRaster2 = this.mipMapRaster;
            Vector2f vector2f3 = this.uvs;
            mipMapImageRaster2.getPixel((int) vector2f3.f81609x, (int) vector2f3.f81610y, this.tmpColor);
            colorRGBA.f81598r = FastMath.interpolateLinear(f11, colorRGBA.f81598r, this.tmpColor.f81598r);
            colorRGBA.f81597g = FastMath.interpolateLinear(f11, colorRGBA.f81597g, this.tmpColor.f81597g);
            colorRGBA.f81596b = FastMath.interpolateLinear(f11, colorRGBA.f81596b, this.tmpColor.f81596b);
            colorRGBA.f81595a = FastMath.interpolateLinear(f11, colorRGBA.f81595a, this.tmpColor.f81595a);
            return colorRGBA;
        }
        throw new IllegalArgumentException("This cube map has no mip maps");
    }

    public void setPixel(int i10, int i11, int i12, ColorRGBA colorRGBA) {
        this.raster.setSlice(i12);
        this.raster.setPixel(i10, i11, colorRGBA);
    }

    public void setPixel(int i10, int i11, int i12, int i13, ColorRGBA colorRGBA) {
        MipMapImageRaster mipMapImageRaster = this.mipMapRaster;
        if (mipMapImageRaster != null) {
            mipMapImageRaster.setSlice(i12);
            this.mipMapRaster.setMipLevel(i13);
            this.mipMapRaster.setPixel(i10, i11, colorRGBA);
            return;
        }
        throw new IllegalArgumentException("This cube map has no mip maps");
    }

    public ColorRGBA getPixel(int i10, int i11, int i12, ColorRGBA colorRGBA) {
        if (colorRGBA == null) {
            colorRGBA = new ColorRGBA();
        }
        this.raster.setSlice(i12);
        return this.raster.getPixel(i10, i11, colorRGBA);
    }

    public ColorRGBA getPixel(int i10, int i11, int i12, int i13, ColorRGBA colorRGBA) {
        if (this.mipMapRaster != null) {
            if (colorRGBA == null) {
                colorRGBA = new ColorRGBA();
            }
            this.mipMapRaster.setSlice(i12);
            this.mipMapRaster.setMipLevel(i13);
            return this.mipMapRaster.getPixel(i10, i11, colorRGBA);
        }
        throw new IllegalArgumentException("This cube map has no mip maps");
    }
}
