package com.jme3.scene.debug.custom;

import com.jme3.math.Vector3f;
import com.jme3.scene.Mesh;
import com.jme3.scene.VertexBuffer;
import java.nio.FloatBuffer;

public class ArmatureInterJointsWire extends Mesh {
    private final Vector3f tempVec = new Vector3f();

    public ArmatureInterJointsWire() {
    }

    public void updateGeometry(Vector3f vector3f, Vector3f[] vector3fArr) {
        float[] fArr = new float[(vector3fArr.length * 3) + 3];
        fArr[0] = vector3f.f81611x;
        fArr[1] = vector3f.f81612y;
        fArr[2] = vector3f.f81613z;
        for (int i10 = 0; i10 < vector3fArr.length; i10++) {
            int i11 = i10 * 3;
            Vector3f vector3f2 = vector3fArr[i10];
            fArr[i11 + 3] = vector3f2.f81611x;
            fArr[i11 + 4] = vector3f2.f81612y;
            fArr[i11 + 5] = vector3f2.f81613z;
        }
        setBuffer(VertexBuffer.Type.Position, 3, fArr);
        float[] fArr2 = new float[(vector3fArr.length * 2) + 2];
        fArr2[0] = 0.0f;
        fArr2[1] = 0.0f;
        for (int i12 = 0; i12 < vector3fArr.length * 2; i12++) {
            fArr2[i12 + 2] = this.tempVec.set(vector3f).subtractLocal(vector3fArr[i12 / 2]).length();
        }
        setBuffer(VertexBuffer.Type.TexCoord, 2, fArr2);
        float[] fArr3 = new float[(vector3fArr.length * 3) + 3];
        for (int i13 = 0; i13 < (vector3fArr.length * 3) + 3; i13 += 3) {
            fArr3[i13] = vector3f.f81611x;
            fArr3[i13 + 1] = vector3f.f81612y;
            fArr3[i13 + 2] = vector3f.f81613z;
        }
        setBuffer(VertexBuffer.Type.Normal, 3, fArr3);
        short[] sArr = new short[vector3fArr.length * 2];
        int i14 = 1;
        for (int i15 = 0; i15 < vector3fArr.length * 2; i15 += 2) {
            sArr[i15] = 0;
            sArr[i15 + 1] = (short) i14;
            i14++;
        }
        setBuffer(VertexBuffer.Type.Index, 2, sArr);
        updateBound();
    }

    public void updatePoints(Vector3f vector3f, Vector3f[] vector3fArr) {
        VertexBuffer buffer = getBuffer(VertexBuffer.Type.Position);
        FloatBuffer floatBuffer = (FloatBuffer) buffer.getData();
        floatBuffer.rewind();
        floatBuffer.put(vector3f.f81611x).put(vector3f.f81612y).put(vector3f.f81613z);
        for (int i10 = 0; i10 < vector3fArr.length; i10++) {
            floatBuffer.put(vector3fArr[i10].f81611x);
            floatBuffer.put(vector3fArr[i10].f81612y);
            floatBuffer.put(vector3fArr[i10].f81613z);
        }
        buffer.updateData(floatBuffer);
        VertexBuffer buffer2 = getBuffer(VertexBuffer.Type.Normal);
        FloatBuffer floatBuffer2 = (FloatBuffer) buffer2.getData();
        floatBuffer2.rewind();
        for (int i11 = 0; i11 < (vector3fArr.length * 3) + 3; i11 += 3) {
            floatBuffer2.put(vector3f.f81611x);
            floatBuffer2.put(vector3f.f81612y);
            floatBuffer2.put(vector3f.f81613z);
        }
        buffer2.updateData(floatBuffer2);
    }

    public ArmatureInterJointsWire(Vector3f vector3f, Vector3f[] vector3fArr) {
        setMode(Mesh.Mode.Lines);
        updateGeometry(vector3f, vector3fArr);
    }
}
