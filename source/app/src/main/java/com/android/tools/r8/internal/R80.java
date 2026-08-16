package com.android.tools.r8.internal;

public enum R80 implements PI {
    CLASS(0),
    INTERFACE(1),
    ENUM_CLASS(2),
    ENUM_ENTRY(3),
    ANNOTATION_CLASS(4),
    OBJECT(5),
    COMPANION_OBJECT(6);


    public final int f43813b;

    R80(int i10) {
        this.f43813b = i10;
    }

    @Override
    public final int getNumber() {
        return this.f43813b;
    }
}
