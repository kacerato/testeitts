package com.jme3.util.struct.fields;

import com.jme3.math.Matrix3f;
import com.jme3.util.struct.StructField;

public class Matrix3fField extends StructField<Matrix3f> {
    public Matrix3fField(int i10, String str, Matrix3f matrix3f) {
        super(i10, str, matrix3f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Matrix3f getValueForUpdate() {
        this.isUpdateNeeded = true;
        return (Matrix3f) this.value;
    }
}
