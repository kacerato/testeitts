package com.jme3.scene.debug;

import com.jme3.math.Quaternion;
import com.jme3.math.Vector3f;
import com.jme3.scene.Mesh;
import com.jme3.scene.VertexBuffer;
import java.nio.FloatBuffer;

public class Arrow extends Mesh {
    private static final float[] positions = {0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.05f, 0.0f, 0.9f, -0.05f, 0.0f, 0.9f, 0.0f, 0.05f, 0.9f, 0.0f, -0.05f, 0.9f};
    private final Quaternion tempQuat;
    private final Vector3f tempVec;

    public Arrow() {
        this.tempQuat = new Quaternion();
        this.tempVec = new Vector3f();
    }

    public void setArrowExtent(Vector3f vector3f) {
        float length = vector3f.length();
        this.tempQuat.lookAt(vector3f, Vector3f.UNIT_Y);
        this.tempQuat.normalizeLocal();
        VertexBuffer buffer = getBuffer(VertexBuffer.Type.Position);
        FloatBuffer floatBuffer = (FloatBuffer) buffer.getData();
        floatBuffer.rewind();
        int i10 = 0;
        while (true) {
            float[] fArr = positions;
            if (i10 >= fArr.length) {
                buffer.updateData(floatBuffer);
                updateBound();
                updateCounts();
                return;
            } else {
                Vector3f vector3f2 = this.tempVec.set(fArr[i10], fArr[i10 + 1], fArr[i10 + 2]);
                vector3f2.multLocal(length);
                this.tempQuat.mult(vector3f2, vector3f2);
                floatBuffer.put(vector3f2.f81611x);
                floatBuffer.put(vector3f2.f81612y);
                floatBuffer.put(vector3f2.f81613z);
                i10 += 3;
            }
        }
    }

    public Arrow(Vector3f vector3f) {
        Quaternion quaternion = new Quaternion();
        this.tempQuat = quaternion;
        this.tempVec = new Vector3f();
        float length = vector3f.length();
        quaternion.lookAt(vector3f.normalize(), Vector3f.UNIT_Y);
        quaternion.normalizeLocal();
        float[] fArr = new float[positions.length];
        int i10 = 0;
        while (true) {
            float[] fArr2 = positions;
            if (i10 < fArr2.length) {
                int i11 = i10 + 1;
                int i12 = i10 + 2;
                Vector3f vector3f2 = this.tempVec.set(fArr2[i10], fArr2[i11], fArr2[i12]);
                vector3f2.multLocal(length);
                this.tempQuat.mult(vector3f2, vector3f2);
                fArr[i10] = vector3f2.getX();
                fArr[i11] = vector3f2.getY();
                fArr[i12] = vector3f2.getZ();
                i10 += 3;
            } else {
                setBuffer(VertexBuffer.Type.Position, 3, fArr);
                setBuffer(VertexBuffer.Type.Index, 2, new short[]{0, 1, 1, 2, 1, 3, 1, 4, 1, 5});
                setMode(Mesh.Mode.Lines);
                updateBound();
                updateCounts();
                return;
            }
        }
    }
}
