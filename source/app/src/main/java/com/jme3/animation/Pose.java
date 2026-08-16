package com.jme3.animation;

import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.math.Vector3f;
import com.jme3.util.BufferUtils;
import java.io.IOException;
import java.nio.FloatBuffer;

@Deprecated
public final class Pose implements Savable, Cloneable {
    private int[] indices;
    private String name;
    private Vector3f[] offsets;
    private int targetMeshIndex;
    private final transient Vector3f tempVec = new Vector3f();
    private final transient Vector3f tempVec2 = new Vector3f();

    public Pose(String str, int i10, Vector3f[] vector3fArr, int[] iArr) {
        this.name = str;
        this.targetMeshIndex = i10;
        this.offsets = vector3fArr;
        this.indices = iArr;
    }

    public void apply(float f10, FloatBuffer floatBuffer) {
        int i10 = 0;
        while (true) {
            int[] iArr = this.indices;
            if (i10 >= iArr.length) {
                return;
            }
            Vector3f vector3f = this.offsets[i10];
            int i11 = iArr[i10];
            this.tempVec.set(vector3f).multLocal(f10);
            BufferUtils.populateFromBuffer(this.tempVec2, floatBuffer, i11);
            this.tempVec2.addLocal(this.tempVec);
            BufferUtils.setInBuffer(this.tempVec2, floatBuffer, i11);
            i10++;
        }
    }

    public int getTargetMeshIndex() {
        return this.targetMeshIndex;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.name = capsule.readString("name", "");
        this.targetMeshIndex = capsule.readInt("meshIndex", -1);
        this.indices = capsule.readIntArray("indices", null);
        Savable[] readSavableArray = capsule.readSavableArray("offsets", null);
        if (readSavableArray != null) {
            Vector3f[] vector3fArr = new Vector3f[readSavableArray.length];
            this.offsets = vector3fArr;
            System.arraycopy(readSavableArray, 0, vector3fArr, 0, readSavableArray.length);
        }
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.name, "name", "");
        capsule.write(this.targetMeshIndex, "meshIndex", -1);
        capsule.write(this.offsets, "offsets", (Savable[]) null);
        capsule.write(this.indices, "indices", (int[]) null);
    }

    public Pose m1258clone() {
        try {
            Pose pose = (Pose) super.clone();
            pose.indices = (int[]) this.indices.clone();
            Vector3f[] vector3fArr = this.offsets;
            if (vector3fArr != null) {
                pose.offsets = new Vector3f[vector3fArr.length];
                int i10 = 0;
                while (true) {
                    Vector3f[] vector3fArr2 = this.offsets;
                    if (i10 >= vector3fArr2.length) {
                        break;
                    }
                    pose.offsets[i10] = vector3fArr2[i10].m1292clone();
                    i10++;
                }
            }
            return pose;
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    public Pose() {
    }
}
