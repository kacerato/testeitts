package com.jme3.animation;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import java.io.IOException;

public class CompactFloatArray extends CompactArray<Float> implements Savable {
    public CompactFloatArray() {
    }

    public void fill(int i10, float[] fArr) {
        for (int i11 = 0; i11 < fArr.length; i11++) {
            fArr[i11] = get(i10 + i11, null).floatValue();
        }
    }

    @Override
    public final Class<Float> getElementClass() {
        return Float.class;
    }

    @Override
    public final int getTupleSize() {
        return 1;
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

    public CompactFloatArray(float[] fArr, int[] iArr) {
        super(fArr, iArr);
    }

    @Override
    public Float deserialize(int i10, Float f10) {
        return Float.valueOf(this.array[i10]);
    }

    @Override
    public void serialize(int i10, Float f10) {
        this.array[i10] = f10.floatValue();
    }
}
