package com.jme3.scene.debug;

import com.jme3.math.Vector3f;
import com.jme3.renderer.Camera;
import com.jme3.scene.Geometry;
import com.jme3.scene.Mesh;
import com.jme3.scene.VertexBuffer;
import com.jme3.shadow.ShadowUtil;
import com.jme3.util.BufferUtils;
import java.nio.FloatBuffer;

public class WireFrustum extends Mesh {
    public WireFrustum() {
    }

    public static Mesh makeFrustum(Vector3f[] vector3fArr) {
        return new WireFrustum(vector3fArr);
    }

    public static Geometry makeGeometry(Camera camera) {
        Vector3f[] vector3fArr = new Vector3f[8];
        for (int i10 = 0; i10 < 8; i10++) {
            vector3fArr[i10] = new Vector3f();
        }
        Camera m1294clone = camera.m1294clone();
        m1294clone.setLocation(new Vector3f(0.0f, 0.0f, 0.0f));
        m1294clone.lookAt(Vector3f.UNIT_Z, Vector3f.UNIT_Y);
        ShadowUtil.updateFrustumPoints2(m1294clone, vector3fArr);
        return new Geometry("Viewing Frustum", new WireFrustum(vector3fArr));
    }

    private void setGeometryData(Vector3f[] vector3fArr) {
        setBuffer(VertexBuffer.Type.Position, 3, BufferUtils.createFloatBuffer(vector3fArr));
        VertexBuffer.Type type = VertexBuffer.Type.Index;
        setBuffer(type, 2, new short[]{0, 1, 1, 2, 2, 3, 3, 0, 4, 5, 5, 6, 6, 7, 7, 4, 0, 4, 1, 5, 2, 6, 3, 7});
        getBuffer(type).setUsage(VertexBuffer.Usage.Static);
        setMode(Mesh.Mode.Lines);
        updateBound();
    }

    public void update(Vector3f[] vector3fArr) {
        if (vector3fArr == null || vector3fArr.length != 8) {
            throw new IllegalArgumentException("Frustum points array must not be null and must contain 8 points.");
        }
        VertexBuffer buffer = getBuffer(VertexBuffer.Type.Position);
        if (buffer == null) {
            setGeometryData(vector3fArr);
            return;
        }
        FloatBuffer createFloatBuffer = BufferUtils.createFloatBuffer(vector3fArr);
        FloatBuffer floatBuffer = (FloatBuffer) buffer.getData();
        floatBuffer.clear();
        floatBuffer.put(createFloatBuffer);
        floatBuffer.rewind();
        buffer.updateData(floatBuffer);
        updateBound();
    }

    public WireFrustum(Vector3f[] vector3fArr) {
        if (vector3fArr != null && vector3fArr.length == 8) {
            setGeometryData(vector3fArr);
            return;
        }
        throw new IllegalArgumentException("Frustum points array must not be null and must contain 8 points.");
    }
}
