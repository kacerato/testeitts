package com.android.dx.cf.attrib;

import com.android.dx.rop.cst.Constant;

public final class AttAnnotationDefault extends BaseAttribute {
    public static final String ATTRIBUTE_NAME = "AnnotationDefault";
    private final int byteLength;
    private final Constant value;

    public AttAnnotationDefault(Constant constant, int i10) {
        super("AnnotationDefault");
        if (constant == null) {
            throw new NullPointerException("value == null");
        }
        this.value = constant;
        this.byteLength = i10;
    }

    @Override
    public int byteLength() {
        return this.byteLength + 6;
    }

    public Constant getValue() {
        return this.value;
    }
}
