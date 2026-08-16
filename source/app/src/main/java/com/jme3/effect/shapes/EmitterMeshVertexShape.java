package com.jme3.effect.shapes;

import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.math.FastMath;
import com.jme3.math.Vector3f;
import com.jme3.scene.Mesh;
import com.jme3.scene.VertexBuffer;
import com.jme3.util.BufferUtils;
import com.jme3.util.clone.Cloner;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class EmitterMeshVertexShape implements EmitterShape {
    protected List<List<Vector3f>> normals;
    protected List<List<Vector3f>> vertices;

    public EmitterMeshVertexShape() {
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        this.vertices = (List) cloner.clone(this.vertices);
        this.normals = (List) cloner.clone(this.normals);
    }

    @Override
    public EmitterShape deepClone() {
        try {
            EmitterMeshVertexShape emitterMeshVertexShape = (EmitterMeshVertexShape) super.clone();
            if (this.vertices != null) {
                emitterMeshVertexShape.vertices = new ArrayList(this.vertices.size());
                for (List<Vector3f> list : this.vertices) {
                    ArrayList arrayList = new ArrayList(list.size());
                    Iterator<Vector3f> it = list.iterator();
                    while (it.hasNext()) {
                        arrayList.add(it.next().m1292clone());
                    }
                    emitterMeshVertexShape.vertices.add(arrayList);
                }
            }
            if (this.normals != null) {
                emitterMeshVertexShape.normals = new ArrayList(this.normals.size());
                for (List<Vector3f> list2 : this.normals) {
                    ArrayList arrayList2 = new ArrayList(list2.size());
                    Iterator<Vector3f> it2 = list2.iterator();
                    while (it2.hasNext()) {
                        arrayList2.add(it2.next().m1292clone());
                    }
                    emitterMeshVertexShape.normals.add(arrayList2);
                }
            }
            return emitterMeshVertexShape;
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    @Override
    public void getRandomPoint(Vector3f vector3f) {
        vector3f.set(this.vertices.get(FastMath.nextRandomInt(0, this.vertices.size() - 1)).get(FastMath.nextRandomInt(0, this.vertices.get(r0).size() - 1)));
    }

    @Override
    public void getRandomPointAndNormal(Vector3f vector3f, Vector3f vector3f2) {
        int nextRandomInt = FastMath.nextRandomInt(0, this.vertices.size() - 1);
        int nextRandomInt2 = FastMath.nextRandomInt(0, this.vertices.get(nextRandomInt).size() - 1);
        vector3f.set(this.vertices.get(nextRandomInt).get(nextRandomInt2));
        vector3f2.set(this.normals.get(nextRandomInt).get(nextRandomInt2));
    }

    @Override
    public Object jmeClone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.vertices = capsule.readSavableArrayList("vertices", null);
        ArrayList readSavableArrayList = capsule.readSavableArrayList("normals", null);
        if (readSavableArrayList != null) {
            this.normals = readSavableArrayList;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setMeshes(List<Mesh> list) {
        HashMap hashMap = new HashMap();
        this.vertices = new ArrayList(list.size());
        this.normals = new ArrayList(list.size());
        for (Mesh mesh : list) {
            float[] floatArray = BufferUtils.getFloatArray(mesh.getFloatBuffer(VertexBuffer.Type.Position));
            float[] floatArray2 = BufferUtils.getFloatArray(mesh.getFloatBuffer(VertexBuffer.Type.Normal));
            for (int i10 = 0; i10 < floatArray.length; i10 += 3) {
                int i11 = i10 + 1;
                int i12 = i10 + 2;
                Vector3f vector3f = new Vector3f(floatArray[i10], floatArray[i11], floatArray[i12]);
                Vector3f vector3f2 = (Vector3f) hashMap.get(vector3f);
                if (vector3f2 == null) {
                    hashMap.put(vector3f, new Vector3f(floatArray2[i10], floatArray2[i11], floatArray2[i12]));
                } else {
                    vector3f2.addLocal(floatArray2[i10], floatArray2[i11], floatArray2[i12]);
                }
            }
            ArrayList arrayList = new ArrayList(hashMap.size());
            ArrayList arrayList2 = new ArrayList(hashMap.size());
            Iterator it = hashMap.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                arrayList.add((Vector3f) entry.getKey());
                arrayList2.add(((Vector3f) entry.getValue()).normalizeLocal());
            }
            this.vertices.add(arrayList);
            this.normals.add(arrayList2);
        }
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.writeSavableArrayList((ArrayList) this.vertices, "vertices", null);
        capsule.writeSavableArrayList((ArrayList) this.normals, "normals", null);
    }

    public EmitterMeshVertexShape(List<Mesh> list) {
        setMeshes(list);
    }
}
