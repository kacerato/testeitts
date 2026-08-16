package com.android.dx.cf.iface;

public interface AttributeList {
    int byteLength();

    Attribute findFirst(String str);

    Attribute findNext(Attribute attribute);

    Attribute get(int i10);

    boolean isMutable();

    int size();
}
