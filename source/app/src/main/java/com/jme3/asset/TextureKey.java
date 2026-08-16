package com.jme3.asset;

import com.jme3.asset.cache.AssetCache;
import com.jme3.asset.cache.WeakRefCloneAssetCache;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.texture.Texture;
import com.jme3.texture.TextureProcessor;
import java.io.IOException;

public class TextureKey extends AssetKey<Texture> {
    private int anisotropy;
    private boolean flipY;
    private boolean generateMips;
    private Texture.Type textureTypeHint;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$jme3$texture$Texture$Type;

        static {
            int[] iArr = new int[Texture.Type.values().length];
            $SwitchMap$com$jme3$texture$Texture$Type = iArr;
            try {
                iArr[Texture.Type.CubeMap.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$jme3$texture$Texture$Type[Texture.Type.ThreeDimensional.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$jme3$texture$Texture$Type[Texture.Type.TwoDimensionalArray.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$jme3$texture$Texture$Type[Texture.Type.TwoDimensional.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public TextureKey(String str, boolean z10) {
        super(str);
        this.textureTypeHint = Texture.Type.TwoDimensional;
        this.flipY = z10;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        TextureKey textureKey = (TextureKey) obj;
        return super.equals(obj) && this.generateMips == textureKey.generateMips && this.flipY == textureKey.flipY && this.anisotropy == textureKey.anisotropy && this.textureTypeHint == textureKey.textureTypeHint;
    }

    public int getAnisotropy() {
        return this.anisotropy;
    }

    @Override
    public Class<? extends AssetCache> getCacheType() {
        return WeakRefCloneAssetCache.class;
    }

    @Override
    public Class<? extends AssetProcessor> getProcessorType() {
        return TextureProcessor.class;
    }

    public Texture.Type getTextureTypeHint() {
        return this.textureTypeHint;
    }

    @Override
    public int hashCode() {
        int hashCode = (((((((119 + super.hashCode()) * 17) + (this.generateMips ? 1 : 0)) * 17) + (this.flipY ? 1 : 0)) * 17) + this.anisotropy) * 17;
        Texture.Type type = this.textureTypeHint;
        return hashCode + (type != null ? type.hashCode() : 0);
    }

    public boolean isFlipY() {
        return this.flipY;
    }

    public boolean isGenerateMips() {
        return this.generateMips;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.flipY = capsule.readBoolean("flip_y", false);
        this.generateMips = capsule.readBoolean("generate_mips", false);
        this.anisotropy = capsule.readInt("anisotropy", 0);
        if (capsule.readBoolean("as_cubemap", false)) {
            this.textureTypeHint = Texture.Type.CubeMap;
        } else {
            this.textureTypeHint = (Texture.Type) capsule.readEnum("tex_type", Texture.Type.class, Texture.Type.TwoDimensional);
        }
    }

    public void setAnisotropy(int i10) {
        this.anisotropy = i10;
    }

    public void setFlipY(boolean z10) {
        this.flipY = z10;
    }

    public void setGenerateMips(boolean z10) {
        this.generateMips = z10;
    }

    public void setTextureTypeHint(Texture.Type type) {
        this.textureTypeHint = type;
    }

    @Override
    public String toString() {
        String str;
        int i10 = AnonymousClass1.$SwitchMap$com$jme3$texture$Texture$Type[this.textureTypeHint.ordinal()];
        if (i10 == 1) {
            str = " (Cube)";
        } else if (i10 == 2) {
            str = " (3D)";
        } else if (i10 == 3) {
            str = " (Array)";
        } else if (i10 != 4) {
            str = " (" + this.textureTypeHint.toString() + ")";
        } else {
            str = "";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.name);
        sb2.append(this.flipY ? " (Flipped)" : "");
        sb2.append(str);
        sb2.append(this.generateMips ? " (Mipmapped)" : "");
        return sb2.toString();
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.flipY, "flip_y", false);
        capsule.write(this.generateMips, "generate_mips", false);
        capsule.write(this.anisotropy, "anisotropy", 0);
        capsule.write(this.textureTypeHint, "tex_type", Texture.Type.TwoDimensional);
        capsule.write(this.textureTypeHint == Texture.Type.CubeMap, "as_cubemap", false);
    }

    public TextureKey(String str) {
        super(str);
        this.textureTypeHint = Texture.Type.TwoDimensional;
        this.flipY = true;
    }

    public TextureKey() {
        this.textureTypeHint = Texture.Type.TwoDimensional;
    }
}
