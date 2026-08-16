package com.jme3.util.struct.fields;

import com.jme3.math.Vector4f;
import com.jme3.util.struct.StructField;

public class Vector4fField extends StructField<Vector4f> {
    public Vector4fField(int i10, String str, Vector4f vector4f) {
        super(i10, str, vector4f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Vector4f getValueForUpdate() {
        this.isUpdateNeeded = true;
        return (Vector4f) this.value;
    }
}
