package com.jme3.util.struct.fields;

import com.jme3.math.Vector2f;
import com.jme3.util.struct.StructField;

public class Vector2fField extends StructField<Vector2f> {
    public Vector2fField(int i10, String str, Vector2f vector2f) {
        super(i10, str, vector2f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Vector2f getValueForUpdate() {
        this.isUpdateNeeded = true;
        return (Vector2f) this.value;
    }
}
