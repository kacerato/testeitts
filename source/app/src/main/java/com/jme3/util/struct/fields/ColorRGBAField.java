package com.jme3.util.struct.fields;

import com.jme3.math.ColorRGBA;
import com.jme3.util.struct.StructField;

public class ColorRGBAField extends StructField<ColorRGBA> {
    public ColorRGBAField(int i10, String str, ColorRGBA colorRGBA) {
        super(i10, str, colorRGBA);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ColorRGBA getValueForUpdate() {
        this.isUpdateNeeded = true;
        return (ColorRGBA) this.value;
    }
}
