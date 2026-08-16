package com.jme3.scene.shape;

import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.scene.Mesh;
import com.jme3.scene.VertexBuffer;
import java.io.IOException;

public class Quad extends Mesh {
    private float height;
    private float width;

    public Quad() {
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

    public void updateGeometry(float f10, float f11) {
        updateGeometry(f10, f11, false);
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.width, "width", 0.0f);
        capsule.write(this.height, "height", 0.0f);
    }

    public Quad(float f10, float f11) {
        updateGeometry(f10, f11);
    }

    public void updateGeometry(float f10, float f11, boolean z10) {
        this.width = f10;
        this.height = f11;
        setBuffer(VertexBuffer.Type.Position, 3, new float[]{0.0f, 0.0f, 0.0f, f10, 0.0f, 0.0f, f10, f11, 0.0f, 0.0f, f11, 0.0f});
        if (z10) {
            setBuffer(VertexBuffer.Type.TexCoord, 2, new float[]{0.0f, 1.0f, 1.0f, 1.0f, 1.0f, 0.0f, 0.0f, 0.0f});
        } else {
            setBuffer(VertexBuffer.Type.TexCoord, 2, new float[]{0.0f, 0.0f, 1.0f, 0.0f, 1.0f, 1.0f, 0.0f, 1.0f});
        }
        setBuffer(VertexBuffer.Type.Normal, 3, new float[]{0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f});
        if (f11 < 0.0f) {
            setBuffer(VertexBuffer.Type.Index, 3, new short[]{0, 2, 1, 0, 3, 2});
        } else {
            setBuffer(VertexBuffer.Type.Index, 3, new short[]{0, 1, 2, 0, 2, 3});
        }
        updateBound();
        setStatic();
    }

    public Quad(float f10, float f11, boolean z10) {
        updateGeometry(f10, f11, z10);
    }
}
