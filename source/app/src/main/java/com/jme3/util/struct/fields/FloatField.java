package com.jme3.util.struct.fields;

import com.jme3.util.struct.StructField;

public class FloatField extends StructField<Float> {
    public FloatField(int i10, String str, Float f10) {
        super(i10, str, f10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setValue(Float f10) {
        this.isUpdateNeeded = true;
        this.value = f10;
    }
}
