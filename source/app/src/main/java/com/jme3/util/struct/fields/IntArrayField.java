package com.jme3.util.struct.fields;

import com.jme3.util.struct.StructField;

public class IntArrayField extends StructField<Integer[]> {
    public IntArrayField(int i10, String str, Integer[] numArr) {
        super(i10, str, numArr);
        initializeToZero();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void initializeToZero() {
        int i10 = 0;
        while (true) {
            T t10 = this.value;
            if (i10 >= ((Integer[]) t10).length) {
                return;
            }
            if (((Integer[]) t10)[i10] == null) {
                ((Integer[]) t10)[i10] = 0;
            }
            i10++;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Integer[] getValueForUpdate() {
        this.isUpdateNeeded = true;
        return (Integer[]) this.value;
    }

    public IntArrayField(int i10, String str, Integer num) {
        super(i10, str, new Integer[num.intValue()]);
        initializeToZero();
    }
}
