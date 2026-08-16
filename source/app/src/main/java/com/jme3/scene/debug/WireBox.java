package com.jme3.scene.debug;

import com.jme3.bounding.BoundingBox;
import com.jme3.scene.Geometry;
import com.jme3.scene.Mesh;
import com.jme3.scene.VertexBuffer;
import com.jme3.util.BufferUtils;
import java.nio.FloatBuffer;

public class WireBox extends Mesh {
    public WireBox() {
        this(1.0f, 1.0f, 1.0f);
    }

    public static Geometry makeGeometry(BoundingBox boundingBox) {
        Geometry geometry = new Geometry("bounding box", new WireBox(boundingBox.getXExtent(), boundingBox.getYExtent(), boundingBox.getZExtent()));
        geometry.setLocalTranslation(boundingBox.getCenter());
        return geometry;
    }

    public void updatePositions(float f10, float f11, float f12) {
        FloatBuffer floatBuffer;
        VertexBuffer.Type type = VertexBuffer.Type.Position;
        VertexBuffer buffer = getBuffer(type);
        if (buffer == null) {
            VertexBuffer vertexBuffer = new VertexBuffer(type);
            floatBuffer = BufferUtils.createVector3Buffer(8);
            vertexBuffer.setupData(VertexBuffer.Usage.Dynamic, 3, VertexBuffer.Format.Float, floatBuffer);
            setBuffer(vertexBuffer);
        } else {
            floatBuffer = (FloatBuffer) buffer.getData();
            buffer.updateData(floatBuffer);
        }
        floatBuffer.rewind();
        float f13 = -f10;
        float f14 = -f11;
        float f15 = -f12;
        floatBuffer.put(new float[]{f13, f14, f12, f10, f14, f12, f10, f11, f12, f13, f11, f12, f13, f14, f15, f10, f14, f15, f10, f11, f15, f13, f11, f15});
        updateBound();
    }

    public WireBox(float f10, float f11, float f12) {
        updatePositions(f10, f11, f12);
        setBuffer(VertexBuffer.Type.Index, 2, new short[]{0, 1, 1, 2, 2, 3, 3, 0, 4, 5, 5, 6, 6, 7, 7, 4, 0, 4, 1, 5, 2, 6, 3, 7});
        setMode(Mesh.Mode.Lines);
        updateCounts();
    }
}
