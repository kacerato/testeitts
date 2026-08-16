package com.jme3.util.struct.fields;

import com.jme3.math.Quaternion;
import com.jme3.util.struct.StructField;

public class QuaternionField extends StructField<Quaternion> {
    public QuaternionField(int i10, String str, Quaternion quaternion) {
        super(i10, str, quaternion);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Quaternion getValueForUpdate() {
        this.isUpdateNeeded = true;
        return (Quaternion) this.value;
    }
}
