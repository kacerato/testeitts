package com.jme3.util.struct.fields;

import com.jme3.util.struct.StructField;

public class FloatArrayField extends StructField<Float[]> {
    public FloatArrayField(int i10, String str, Float[] fArr) {
        super(i10, str, fArr);
        initializeToZero();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void initializeToZero() {
        int i10 = 0;
        while (true) {
            T t10 = this.value;
            if (i10 >= ((Float[]) t10).length) {
                return;
            }
            if (((Float[]) t10)[i10] == null) {
                ((Float[]) t10)[i10] = Float.valueOf(0.0f);
            }
            i10++;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Float[] getValueForUpdate() {
        this.isUpdateNeeded = true;
        return (Float[]) this.value;
    }

    public FloatArrayField(int i10, String str, int i11) {
        super(i10, str, new Float[i11]);
        initializeToZero();
    }
}
