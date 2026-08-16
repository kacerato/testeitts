package com.android.tools.r8.internal;

public final class C6304Ze0 extends AbstractC8555nD {

    public final C6620bf0 f46307e;

    public C6304Ze0(C6620bf0 c6620bf0) {
        this.f46307e = c6620bf0;
    }

    @Override
    public final boolean contains(Object obj) {
        return this.f46307e.containsKey(obj);
    }

    @Override
    public final boolean g() {
        return true;
    }

    @Override
    public final Object get(int i10) {
        return this.f46307e.f46818f[i10].getKey();
    }

    @Override
    public final int size() {
        return this.f46307e.f46818f.length;
    }
}
