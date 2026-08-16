package com.jme3.util.struct.fields;

import com.jme3.util.struct.StructField;

public class IntField extends StructField<Integer> {
    public IntField(int i10, String str, Integer num) {
        super(i10, str, num);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setValue(Integer num) {
        this.isUpdateNeeded = true;
        this.value = num;
    }
}
