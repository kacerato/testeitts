package com.jme3.util.struct.fields;

import com.jme3.math.Vector3f;
import com.jme3.util.struct.StructField;

public class Vector3fField extends StructField<Vector3f> {
    public Vector3fField(int i10, String str, Vector3f vector3f) {
        super(i10, str, vector3f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Vector3f getValueForUpdate() {
        this.isUpdateNeeded = true;
        return (Vector3f) this.value;
    }
}
