package com.jme3.scene.shape;

import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.scene.Mesh;
import com.jme3.scene.VertexBuffer;
import java.io.IOException;

public class CenterQuad extends Mesh {
    private float height;
    private float width;

    public CenterQuad() {
    }

    private void updateGeometry(float f10, float f11, boolean z10) {
        this.width = f10;
        this.height = f11;
        float f12 = f10 / 2.0f;
        float f13 = f11 / 2.0f;
        float f14 = -f12;
        float f15 = -f13;
        setBuffer(VertexBuffer.Type.Position, 3, new float[]{f14, f15, 0.0f, f12, f15, 0.0f, f12, f13, 0.0f, f14, f13, 0.0f});
        if (z10) {
            setBuffer(VertexBuffer.Type.TexCoord, 2, new float[]{0.0f, 1.0f, 1.0f, 1.0f, 1.0f, 0.0f, 0.0f, 0.0f});
        } else {
            setBuffer(VertexBuffer.Type.TexCoord, 2, new float[]{0.0f, 0.0f, 1.0f, 0.0f, 1.0f, 1.0f, 0.0f, 1.0f});
        }
        setBuffer(VertexBuffer.Type.Normal, 3, new float[]{0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f});
        if (f10 * f11 < 0.0f) {
            setBuffer(VertexBuffer.Type.Index, 3, new byte[]{0, 2, 1, 0, 3, 2});
        } else {
            setBuffer(VertexBuffer.Type.Index, 3, new byte[]{0, 1, 2, 0, 2, 3});
        }
        updateBound();
        setStatic();
    }

    public float getHeight() {
        return this.height;
    }

    public float getWidth() {
        return this.width;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.width = capsule.readFloat("width", 0.0f);
        this.height = capsule.readFloat("height", 0.0f);
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.width, "width", 0.0f);
        capsule.write(this.height, "height", 0.0f);
    }

    public CenterQuad(float f10, float f11) {
        updateGeometry(f10, f11, false);
    }

    public CenterQuad(float f10, float f11, boolean z10) {
        updateGeometry(f10, f11, z10);
    }
}
