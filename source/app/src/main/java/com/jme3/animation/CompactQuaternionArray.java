package com.jme3.animation;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.math.Quaternion;
import java.io.IOException;

public class CompactQuaternionArray extends CompactArray<Quaternion> implements Savable {
    public CompactQuaternionArray() {
    }

    @Override
    public final Class<Quaternion> getElementClass() {
        return Quaternion.class;
    }

    @Override
    public final int getTupleSize() {
        return 4;
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

    public CompactQuaternionArray(float[] fArr, int[] iArr) {
        super(fArr, iArr);
    }

    @Override
    public Quaternion deserialize(int i10, Quaternion quaternion) {
        int tupleSize = i10 * getTupleSize();
        float[] fArr = this.array;
        quaternion.set(fArr[tupleSize], fArr[tupleSize + 1], fArr[tupleSize + 2], fArr[tupleSize + 3]);
        return quaternion;
    }

    @Override
    public void serialize(int i10, Quaternion quaternion) {
        int tupleSize = i10 * getTupleSize();
        this.array[tupleSize] = quaternion.getX();
        this.array[tupleSize + 1] = quaternion.getY();
        this.array[tupleSize + 2] = quaternion.getZ();
        this.array[tupleSize + 3] = quaternion.getW();
    }
}
