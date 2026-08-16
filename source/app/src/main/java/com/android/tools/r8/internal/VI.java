package com.android.tools.r8.internal;

import java.util.AbstractList;
import java.util.List;

public final class VI extends AbstractList {

    public final List f45015b;

    public final UI f45016c;

    public VI(List list, UI ui2) {
        this.f45015b = list;
        this.f45016c = ui2;
    }

    @Override
    public final Object get(int i10) {
        return this.f45016c.convert(this.f45015b.get(i10));
    }

    @Override
    public final int size() {
        return this.f45015b.size();
    }
}
