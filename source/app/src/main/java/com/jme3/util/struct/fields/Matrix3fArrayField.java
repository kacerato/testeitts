package com.jme3.util.struct.fields;

import com.jme3.math.Matrix3f;
import com.jme3.util.struct.StructField;

public class Matrix3fArrayField extends StructField<Matrix3f[]> {
    public Matrix3fArrayField(int i10, String str, Matrix3f[] matrix3fArr) {
        super(i10, str, matrix3fArr);
        initializeToZero();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void initializeToZero() {
        int i10 = 0;
        while (true) {
            T t10 = this.value;
            if (i10 >= ((Matrix3f[]) t10).length) {
                return;
            }
            if (((Matrix3f[]) t10)[i10] == null) {
                ((Matrix3f[]) t10)[i10] = new Matrix3f();
            }
            i10++;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Matrix3f[] getValueForUpdate() {
        this.isUpdateNeeded = true;
        return (Matrix3f[]) this.value;
    }

    public Matrix3fArrayField(int i10, String str, int i11) {
        super(i10, str, new Matrix3f[i11]);
        initializeToZero();
    }
}
