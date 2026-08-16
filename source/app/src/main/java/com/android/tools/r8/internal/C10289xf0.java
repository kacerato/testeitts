package com.android.tools.r8.internal;

import java.util.AbstractList;
import java.util.List;

public final class C10289xf0 extends AbstractList implements List {

    public final C4862Af0 f53804b;

    public C10289xf0(C4862Af0 c4862Af0) {
        this.f53804b = c4862Af0;
    }

    public final void a() {
        this.modCount++;
    }

    @Override
    public final Object get(int i10) {
        return this.f53804b.a(i10);
    }

    @Override
    public final int size() {
        return this.f53804b.f38676b.size();
    }
}
