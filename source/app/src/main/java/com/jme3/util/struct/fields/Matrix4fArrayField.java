package com.jme3.util.struct.fields;

import com.jme3.math.Matrix4f;
import com.jme3.util.struct.StructField;

public class Matrix4fArrayField extends StructField<Matrix4f[]> {
    public Matrix4fArrayField(int i10, String str, Matrix4f[] matrix4fArr) {
        super(i10, str, matrix4fArr);
        initializeToZero();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void initializeToZero() {
        int i10 = 0;
        while (true) {
            T t10 = this.value;
            if (i10 >= ((Matrix4f[]) t10).length) {
                return;
            }
            if (((Matrix4f[]) t10)[i10] == null) {
                ((Matrix4f[]) t10)[i10] = new Matrix4f();
            }
            i10++;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Matrix4f[] getValueForUpdate() {
        this.isUpdateNeeded = true;
        return (Matrix4f[]) this.value;
    }

    public Matrix4fArrayField(int i10, String str, int i11) {
        super(i10, str, new Matrix4f[i11]);
        initializeToZero();
    }
}
