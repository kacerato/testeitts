package com.jme3.util.struct.fields;

import com.jme3.math.Matrix4f;
import com.jme3.util.struct.StructField;

public class Matrix4fField extends StructField<Matrix4f> {
    public Matrix4fField(int i10, String str, Matrix4f matrix4f) {
        super(i10, str, matrix4f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Matrix4f getValueForUpdate() {
        this.isUpdateNeeded = true;
        return (Matrix4f) this.value;
    }
}
