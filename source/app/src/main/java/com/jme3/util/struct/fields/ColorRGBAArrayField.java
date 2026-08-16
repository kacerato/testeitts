package com.jme3.util.struct.fields;

import com.jme3.math.ColorRGBA;
import com.jme3.util.struct.StructField;

public class ColorRGBAArrayField extends StructField<ColorRGBA[]> {
    public ColorRGBAArrayField(int i10, String str, ColorRGBA[] colorRGBAArr) {
        super(i10, str, colorRGBAArr);
        initializeToZero();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void initializeToZero() {
        int i10 = 0;
        while (true) {
            T t10 = this.value;
            if (i10 >= ((ColorRGBA[]) t10).length) {
                return;
            }
            if (((ColorRGBA[]) t10)[i10] == null) {
                ((ColorRGBA[]) t10)[i10] = new ColorRGBA();
            }
            i10++;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ColorRGBA[] getValueForUpdate() {
        this.isUpdateNeeded = true;
        return (ColorRGBA[]) this.value;
    }

    public ColorRGBAArrayField(int i10, String str, int i11) {
        super(i10, str, new ColorRGBA[i11]);
        initializeToZero();
    }
}
