package com.jme3.animation;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.math.Vector3f;
import java.io.IOException;

public class CompactVector3Array extends CompactArray<Vector3f> implements Savable {
    public CompactVector3Array() {
    }

    @Override
    public final Class<Vector3f> getElementClass() {
        return Vector3f.class;
    }

    @Override
    public final int getTupleSize() {
        return 3;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.array = capsule.readFloatArray("array", null);
        this.index = capsule.readIntArray(FirebaseAnalytics.d.f67690b0, null);
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        serialize();
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.array, "array", (float[]) null);
        capsule.write(this.index, FirebaseAnalytics.d.f67690b0, (int[]) null);
    }

    public CompactVector3Array(float[] fArr, int[] iArr) {
        super(fArr, iArr);
    }

    @Override
    public Vector3f deserialize(int i10, Vector3f vector3f) {
        int tupleSize = i10 * getTupleSize();
        float[] fArr = this.array;
        vector3f.set(fArr[tupleSize], fArr[tupleSize + 1], fArr[tupleSize + 2]);
        return vector3f;
    }

    @Override
    public void serialize(int i10, Vector3f vector3f) {
        int tupleSize = i10 * getTupleSize();
        this.array[tupleSize] = vector3f.getX();
        this.array[tupleSize + 1] = vector3f.getY();
        this.array[tupleSize + 2] = vector3f.getZ();
    }
}
