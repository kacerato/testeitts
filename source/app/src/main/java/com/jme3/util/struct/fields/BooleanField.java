package com.jme3.util.struct.fields;

import com.jme3.util.struct.StructField;

public class BooleanField extends StructField<Boolean> {
    public BooleanField(int i10, String str, Boolean bool) {
        super(i10, str, bool);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setValue(Boolean bool) {
        this.isUpdateNeeded = true;
        this.value = bool;
    }
}
