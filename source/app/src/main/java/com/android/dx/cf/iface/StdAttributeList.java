package com.android.dx.cf.iface;

import com.android.dx.util.FixedSizeList;

public final class StdAttributeList extends FixedSizeList implements AttributeList {
    public StdAttributeList(int i10) {
        super(i10);
    }

    @Override
    public int byteLength() {
        int size = size();
        int i10 = 2;
        for (int i11 = 0; i11 < size; i11++) {
            i10 += get(i11).byteLength();
        }
        return i10;
    }

    @Override
    public Attribute findFirst(String str) {
        int size = size();
        for (int i10 = 0; i10 < size; i10++) {
            Attribute attribute = get(i10);
            if (attribute.getName().equals(str)) {
                return attribute;
            }
        }
        return null;
    }

    @Override
    public Attribute findNext(Attribute attribute) {
        Attribute attribute2;
        int size = size();
        int i10 = 0;
        while (i10 < size) {
            if (get(i10) == attribute) {
                String name = attribute.getName();
                do {
                    i10++;
                    if (i10 >= size) {
                        return null;
                    }
                    attribute2 = get(i10);
                } while (!attribute2.getName().equals(name));
                return attribute2;
            }
            i10++;
        }
        return null;
    }

    @Override
    public Attribute get(int i10) {
        return (Attribute) get0(i10);
    }

    public void set(int i10, Attribute attribute) {
        set0(i10, attribute);
    }
}
