package com.jme3.util.struct.fields;

import com.jme3.math.Vector2f;
import com.jme3.util.struct.StructField;

public class Vector2fArrayField extends StructField<Vector2f[]> {
    public Vector2fArrayField(int i10, String str, Vector2f[] vector2fArr) {
        super(i10, str, vector2fArr);
        initializeToZero();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void initializeToZero() {
        int i10 = 0;
        while (true) {
            T t10 = this.value;
            if (i10 >= ((Vector2f[]) t10).length) {
                return;
            }
            if (((Vector2f[]) t10)[i10] == null) {
                ((Vector2f[]) t10)[i10] = new Vector2f();
            }
            i10++;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Vector2f[] getValueForUpdate() {
        this.isUpdateNeeded = true;
        return (Vector2f[]) this.value;
    }

    public Vector2fArrayField(int i10, String str, int i11) {
        super(i10, str, new Vector2f[i11]);
        initializeToZero();
    }
}
