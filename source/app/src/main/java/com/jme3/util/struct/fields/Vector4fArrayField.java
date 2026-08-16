package com.jme3.util.struct.fields;

import com.jme3.math.Vector4f;
import com.jme3.util.struct.StructField;

public class Vector4fArrayField extends StructField<Vector4f[]> {
    public Vector4fArrayField(int i10, String str, Vector4f[] vector4fArr) {
        super(i10, str, vector4fArr);
        initializeToZero();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void initializeToZero() {
        int i10 = 0;
        while (true) {
            T t10 = this.value;
            if (i10 >= ((Vector4f[]) t10).length) {
                return;
            }
            if (((Vector4f[]) t10)[i10] == null) {
                ((Vector4f[]) t10)[i10] = new Vector4f();
            }
            i10++;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Vector4f[] getValueForUpdate() {
        this.isUpdateNeeded = true;
        return (Vector4f[]) this.value;
    }

    public Vector4fArrayField(int i10, String str, int i11) {
        super(i10, str, new Vector4f[i11]);
        initializeToZero();
    }
}
