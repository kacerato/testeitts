package com.jme3.effect.shapes;

import com.jme3.math.FastMath;
import com.jme3.math.Vector3f;
import com.jme3.scene.Mesh;
import com.jme3.scene.VertexBuffer;
import com.jme3.util.BufferUtils;
import java.util.ArrayList;
import java.util.List;

public class EmitterMeshFaceShape extends EmitterMeshVertexShape {
    public EmitterMeshFaceShape() {
    }

    private void generateRandomPointOnTriangle(List<Vector3f> list, int i10, Vector3f vector3f) {
        Vector3f vector3f2 = list.get(i10);
        Vector3f vector3f3 = list.get(i10 + 1);
        Vector3f vector3f4 = list.get(i10 + 2);
        float nextRandomFloat = FastMath.nextRandomFloat();
        float nextRandomFloat2 = FastMath.nextRandomFloat();
        if (nextRandomFloat + nextRandomFloat2 > 1.0f) {
            nextRandomFloat = 1.0f - nextRandomFloat;
            nextRandomFloat2 = 1.0f - nextRandomFloat2;
        }
        float f10 = vector3f2.f81611x;
        vector3f.f81611x = ((vector3f3.f81611x - f10) * nextRandomFloat) + f10 + ((vector3f4.f81611x - f10) * nextRandomFloat2);
        float f11 = vector3f2.f81612y;
        vector3f.f81612y = ((vector3f3.f81612y - f11) * nextRandomFloat) + f11 + ((vector3f4.f81612y - f11) * nextRandomFloat2);
        float f12 = vector3f2.f81613z;
        vector3f.f81613z = (nextRandomFloat * (vector3f3.f81613z - f12)) + f12 + (nextRandomFloat2 * (vector3f4.f81613z - f12));
    }

    @Override
    public void getRandomPoint(Vector3f vector3f) {
        generateRandomPointOnTriangle(this.vertices.get(FastMath.nextRandomInt(0, this.vertices.size() - 1)), FastMath.nextRandomInt(0, (r0.size() / 3) - 1) * 3, vector3f);
    }

    @Override
    public void getRandomPointAndNormal(Vector3f vector3f, Vector3f vector3f2) {
        int nextRandomInt = FastMath.nextRandomInt(0, this.vertices.size() - 1);
        List<Vector3f> list = this.vertices.get(nextRandomInt);
        int nextRandomInt2 = FastMath.nextRandomInt(0, (list.size() / 3) - 1);
        generateRandomPointOnTriangle(list, nextRandomInt2 * 3, vector3f);
        vector3f2.set(this.normals.get(nextRandomInt).get(nextRandomInt2));
    }

    @Override
    public void setMeshes(List<Mesh> list) {
        this.vertices = new ArrayList(list.size());
        this.normals = new ArrayList(list.size());
        for (Mesh mesh : list) {
            Vector3f[] vector3Array = BufferUtils.getVector3Array(mesh.getFloatBuffer(VertexBuffer.Type.Position));
            int[] iArr = new int[3];
            ArrayList arrayList = new ArrayList(mesh.getTriangleCount() * 3);
            ArrayList arrayList2 = new ArrayList(mesh.getTriangleCount());
            for (int i10 = 0; i10 < mesh.getTriangleCount(); i10++) {
                mesh.getTriangle(i10, iArr);
                Vector3f vector3f = vector3Array[iArr[0]];
                Vector3f vector3f2 = vector3Array[iArr[1]];
                Vector3f vector3f3 = vector3Array[iArr[2]];
                arrayList.add(vector3f);
                arrayList.add(vector3f2);
                arrayList.add(vector3f3);
                arrayList2.add(FastMath.computeNormal(vector3f, vector3f2, vector3f3));
            }
            this.vertices.add(arrayList);
            this.normals.add(arrayList2);
        }
    }

    public EmitterMeshFaceShape(List<Mesh> list) {
        super(list);
    }
}
