package com.android.tools.r8.internal;

import java.util.AbstractList;
import java.util.List;

public final class C10456yf0 extends AbstractList implements List {

    public final C4862Af0 f54098b;

    public C10456yf0(C4862Af0 c4862Af0) {
        this.f54098b = c4862Af0;
    }

    public final void a() {
        this.modCount++;
    }

    @Override
    public final Object get(int i10) {
        return this.f54098b.a(i10, false);
    }

    @Override
    public final int size() {
        return this.f54098b.f38676b.size();
    }
}
