package com.jme3.material;

import com.ardor3d.util.resource.ResourceLocatorTool;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.shader.VarType;
import com.jme3.texture.Texture;
import com.jme3.texture.image.ColorSpace;
import java.io.IOException;

public class MatParamTexture extends MatParam {
    private ColorSpace colorSpace;

    public MatParamTexture(VarType varType, String str, Texture texture, ColorSpace colorSpace) {
        super(varType, str, texture);
        this.colorSpace = colorSpace;
    }

    public ColorSpace getColorSpace() {
        return this.colorSpace;
    }

    public Texture getTextureValue() {
        return (Texture) getValue();
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        this.colorSpace = (ColorSpace) jmeImporter.getCapsule(this).readEnum("colorSpace", ColorSpace.class, null);
    }

    public void setColorSpace(ColorSpace colorSpace) {
        this.colorSpace = colorSpace;
    }

    public void setTextureValue(Texture texture) {
        setValue(texture);
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.colorSpace, "colorSpace", (Enum) null);
        capsule.write(0, "texture_unit", -1);
        capsule.write((Texture) this.value, ResourceLocatorTool.TYPE_TEXTURE, (Savable) null);
    }

    public MatParamTexture() {
    }
}
