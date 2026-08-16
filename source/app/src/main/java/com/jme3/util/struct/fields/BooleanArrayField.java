package com.jme3.util.struct.fields;

import com.jme3.util.struct.StructField;

public class BooleanArrayField extends StructField<Boolean[]> {
    public BooleanArrayField(int i10, String str, Boolean[] boolArr) {
        super(i10, str, boolArr);
        initializeToZero();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void initializeToZero() {
        int i10 = 0;
        while (true) {
            T t10 = this.value;
            if (i10 >= ((Boolean[]) t10).length) {
                return;
            }
            if (((Boolean[]) t10)[i10] == null) {
                ((Boolean[]) t10)[i10] = Boolean.FALSE;
            }
            i10++;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Boolean[] getValueForUpdate() {
        this.isUpdateNeeded = true;
        return (Boolean[]) this.value;
    }

    public BooleanArrayField(int i10, String str, int i11) {
        super(i10, str, new Boolean[i11]);
        initializeToZero();
    }
}
