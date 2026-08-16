package com.jme3.texture;

import F2.i;
import com.jme3.asset.AssetKey;
import com.jme3.asset.AssetNotFoundException;
import com.jme3.asset.CloneableSmartAsset;
import com.jme3.asset.TextureKey;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.util.PlaceholderAssets;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

public abstract class Texture implements CloneableSmartAsset, Savable, Cloneable {
    private int anisotropicFilter;
    private String name = null;
    private Image image = null;
    private TextureKey key = null;
    private MinFilter minificationFilter = MinFilter.BilinearNoMipMaps;
    private MagFilter magnificationFilter = MagFilter.Bilinear;
    private ShadowCompareMode shadowCompareMode = ShadowCompareMode.Off;

    public enum MagFilter {
        Nearest,
        Bilinear
    }

    public enum MinFilter {
        NearestNoMipMaps(false),
        BilinearNoMipMaps(false),
        NearestNearestMipMap(true),
        BilinearNearestMipMap(true),
        NearestLinearMipMap(true),
        Trilinear(true);

        private final boolean usesMipMapLevels;

        MinFilter(boolean z10) {
            this.usesMipMapLevels = z10;
        }

        public boolean usesMipMapLevels() {
            return this.usesMipMapLevels;
        }
    }

    public enum ShadowCompareMode {
        Off,
        LessOrEqual,
        GreaterOrEqual
    }

    public enum Type {
        TwoDimensional,
        TwoDimensionalArray,
        ThreeDimensional,
        CubeMap
    }

    public enum WrapAxis {
        S,
        T,
        R
    }

    public enum WrapMode {
        Repeat,
        MirroredRepeat,
        Clamp,
        MirrorClamp,
        BorderClamp,
        MirrorBorderClamp,
        EdgeClamp,
        MirrorEdgeClamp
    }

    @Deprecated
    public abstract Texture createSimpleClone();

    @Deprecated
    public Texture createSimpleClone(Texture texture) {
        texture.setMinFilter(this.minificationFilter);
        texture.setMagFilter(this.magnificationFilter);
        texture.setShadowCompareMode(this.shadowCompareMode);
        texture.setAnisotropicFilter(this.anisotropicFilter);
        texture.setImage(this.image);
        texture.setKey(this.key);
        texture.setName(this.name);
        return texture;
    }

    public boolean equals(Object obj) {
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Texture texture = (Texture) obj;
        return this.image == texture.image && this.minificationFilter == texture.minificationFilter && this.magnificationFilter == texture.magnificationFilter && this.shadowCompareMode == texture.shadowCompareMode && this.anisotropicFilter == texture.anisotropicFilter;
    }

    public int getAnisotropicFilter() {
        return this.anisotropicFilter;
    }

    public Image getImage() {
        return this.image;
    }

    @Override
    public AssetKey getKey() {
        return this.key;
    }

    public MagFilter getMagFilter() {
        return this.magnificationFilter;
    }

    public MinFilter getMinFilter() {
        return this.minificationFilter;
    }

    public String getName() {
        return this.name;
    }

    public ShadowCompareMode getShadowCompareMode() {
        return this.shadowCompareMode;
    }

    public abstract Type getType();

    public abstract WrapMode getWrap(WrapAxis wrapAxis);

    public int hashCode() {
        Image image = this.image;
        int identityHashCode = (335 + (image != null ? System.identityHashCode(image) : 0)) * 67;
        MinFilter minFilter = this.minificationFilter;
        int hashCode = (identityHashCode + (minFilter != null ? minFilter.hashCode() : 0)) * 67;
        MagFilter magFilter = this.magnificationFilter;
        int hashCode2 = (hashCode + (magFilter != null ? magFilter.hashCode() : 0)) * 67;
        ShadowCompareMode shadowCompareMode = this.shadowCompareMode;
        return ((hashCode2 + (shadowCompareMode != null ? shadowCompareMode.hashCode() : 0)) * 67) + this.anisotropicFilter;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.name = capsule.readString("name", null);
        TextureKey textureKey = (TextureKey) capsule.readSavable("key", null);
        this.key = textureKey;
        if (textureKey != null) {
            try {
                this.image = jmeImporter.getAssetManager().loadTexture(this.key).getImage();
            } catch (AssetNotFoundException unused) {
                Logger.getLogger(Texture.class.getName()).log(Level.SEVERE, "Cannot locate texture {0}", this.key);
                this.image = PlaceholderAssets.getPlaceholderImage(jmeImporter.getAssetManager());
            }
        } else {
            Image image = (Image) capsule.readSavable(i.f6419n, null);
            this.image = image;
            if (image == null) {
                Logger.getLogger(Texture.class.getName()).log(Level.SEVERE, "Cannot load embedded image {0}", toString());
            }
        }
        setAnisotropicFilter(capsule.readInt("anisotropicFilter", 1));
        setMinFilter((MinFilter) capsule.readEnum("minificationFilter", MinFilter.class, MinFilter.BilinearNoMipMaps));
        setMagFilter((MagFilter) capsule.readEnum("magnificationFilter", MagFilter.class, MagFilter.Bilinear));
    }

    public void setAnisotropicFilter(int i10) {
        this.anisotropicFilter = Math.max(0, i10);
    }

    public void setImage(Image image) {
        this.image = image;
        setMinFilter(getMinFilter());
    }

    @Override
    public void setKey(AssetKey assetKey) {
        this.key = (TextureKey) assetKey;
    }

    public void setMagFilter(MagFilter magFilter) {
        if (magFilter == null) {
            throw new IllegalArgumentException("magnificationFilter can not be null.");
        }
        this.magnificationFilter = magFilter;
    }

    public void setMinFilter(MinFilter minFilter) {
        Image image;
        if (minFilter == null) {
            throw new IllegalArgumentException("minificationFilter can not be null.");
        }
        this.minificationFilter = minFilter;
        if (!minFilter.usesMipMapLevels() || (image = this.image) == null || image.isGeneratedMipmapsRequired() || this.image.hasMipmaps()) {
            return;
        }
        this.image.setNeedGeneratedMipmaps();
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setShadowCompareMode(ShadowCompareMode shadowCompareMode) {
        if (shadowCompareMode == null) {
            throw new IllegalArgumentException("compareMode can not be null.");
        }
        this.shadowCompareMode = shadowCompareMode;
    }

    public abstract void setWrap(WrapAxis wrapAxis, WrapMode wrapMode);

    public abstract void setWrap(WrapMode wrapMode);

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(getClass().getSimpleName());
        sb2.append("[name=");
        sb2.append(this.name);
        if (this.image != null) {
            sb2.append(", image=");
            sb2.append(this.image.toString());
        }
        sb2.append("]");
        return sb2.toString();
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.name, "name", (String) null);
        TextureKey textureKey = this.key;
        if (textureKey == null) {
            capsule.write(this.image, i.f6419n, (Savable) null);
        } else {
            capsule.write(textureKey, "key", (Savable) null);
        }
        capsule.write(this.anisotropicFilter, "anisotropicFilter", 1);
        capsule.write(this.minificationFilter, "minificationFilter", MinFilter.BilinearNoMipMaps);
        capsule.write(this.magnificationFilter, "magnificationFilter", MagFilter.Bilinear);
    }

    @Override
    public Texture m1305clone() {
        try {
            return (Texture) super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }
}
