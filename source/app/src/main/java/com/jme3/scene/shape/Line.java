package com.jme3.scene.shape;

import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.math.Vector3f;
import com.jme3.scene.Mesh;
import com.jme3.scene.VertexBuffer;
import java.io.IOException;
import java.nio.FloatBuffer;

public class Line extends Mesh {
    private Vector3f start = new Vector3f();
    private Vector3f end = new Vector3f();

    public Line() {
    }

    public Vector3f getEnd() {
        return this.end;
    }

    public Vector3f getStart() {
        return this.start;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.start = (Vector3f) capsule.readSavable("startVertex", this.start);
        this.end = (Vector3f) capsule.readSavable("endVertex", this.end);
    }

    public void updateGeometry(Vector3f vector3f, Vector3f vector3f2) {
        this.start.set(vector3f);
        this.end.set(vector3f2);
        setBuffer(VertexBuffer.Type.Position, 3, new float[]{vector3f.f81611x, vector3f.f81612y, vector3f.f81613z, vector3f2.f81611x, vector3f2.f81612y, vector3f2.f81613z});
        setBuffer(VertexBuffer.Type.TexCoord, 2, new float[]{0.0f, 0.0f, 1.0f, 1.0f});
        setBuffer(VertexBuffer.Type.Normal, 3, new float[]{0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f});
        setBuffer(VertexBuffer.Type.Index, 2, new short[]{0, 1});
        updateBound();
    }

    public void updatePoints(Vector3f vector3f, Vector3f vector3f2) {
        this.start.set(vector3f);
        this.end.set(vector3f2);
        VertexBuffer buffer = getBuffer(VertexBuffer.Type.Position);
        FloatBuffer floatBuffer = (FloatBuffer) buffer.getData();
        floatBuffer.rewind();
        floatBuffer.put(vector3f.f81611x).put(vector3f.f81612y).put(vector3f.f81613z);
        floatBuffer.put(vector3f2.f81611x).put(vector3f2.f81612y).put(vector3f2.f81613z);
        buffer.updateData(floatBuffer);
        updateBound();
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.start, "startVertex", (Savable) null);
        capsule.write(this.end, "endVertex", (Savable) null);
    }

    public Line(Vector3f vector3f, Vector3f vector3f2) {
        setMode(Mesh.Mode.Lines);
        updateGeometry(vector3f, vector3f2);
    }
}
