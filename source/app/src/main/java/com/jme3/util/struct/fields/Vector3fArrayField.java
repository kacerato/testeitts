package com.jme3.util.struct.fields;

import com.jme3.math.Vector3f;
import com.jme3.util.struct.StructField;

public class Vector3fArrayField extends StructField<Vector3f[]> {
    public Vector3fArrayField(int i10, String str, Vector3f[] vector3fArr) {
        super(i10, str, vector3fArr);
        initializeToZero();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void initializeToZero() {
        int i10 = 0;
        while (true) {
            T t10 = this.value;
            if (i10 >= ((Vector3f[]) t10).length) {
                return;
            }
            if (((Vector3f[]) t10)[i10] == null) {
                ((Vector3f[]) t10)[i10] = new Vector3f();
            }
            i10++;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Vector3f[] getValueForUpdate() {
        this.isUpdateNeeded = true;
        return (Vector3f[]) this.value;
    }

    public Vector3fArrayField(int i10, String str, int i11) {
        super(i10, str, new Vector3f[i11]);
        initializeToZero();
    }
}
