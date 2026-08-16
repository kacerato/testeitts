package com.android.tools.r8.internal;

import java.io.Serializable;

public final class C8831ou extends AbstractC7683i0 implements Serializable {

    public final Enum[] f51377b;

    public C8831ou(Enum[] enumArr) {
        this.f51377b = enumArr;
    }

    @Override
    public final int a() {
        return this.f51377b.length;
    }

    @Override
    public final boolean contains(Object obj) {
        if (!(obj instanceof Enum)) {
            return false;
        }
        Enum r52 = (Enum) obj;
        GJ.c(r52, "element");
        Enum[] enumArr = this.f51377b;
        int ordinal = r52.ordinal();
        GJ.c(enumArr, "<this>");
        return ((ordinal < 0 || ordinal >= enumArr.length) ? null : enumArr[ordinal]) == r52;
    }

    @Override
    public final Object get(int i10) {
        Enum[] enumArr = this.f51377b;
        int length = enumArr.length;
        if (i10 >= 0 && i10 < length) {
            return enumArr[i10];
        }
        throw new IndexOutOfBoundsException("index: " + i10 + ", size: " + length);
    }

    @Override
    public final int indexOf(Object obj) {
        if (!(obj instanceof Enum)) {
            return -1;
        }
        Enum r52 = (Enum) obj;
        GJ.c(r52, "element");
        int ordinal = r52.ordinal();
        Enum[] enumArr = this.f51377b;
        GJ.c(enumArr, "<this>");
        if (((ordinal < 0 || ordinal >= enumArr.length) ? null : enumArr[ordinal]) == r52) {
            return ordinal;
        }
        return -1;
    }

    @Override
    public final int lastIndexOf(Object obj) {
        if (!(obj instanceof Enum)) {
            return -1;
        }
        Enum r22 = (Enum) obj;
        GJ.c(r22, "element");
        return indexOf(r22);
    }
}
