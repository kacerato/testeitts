package com.android.tools.r8.internal;

import java.util.HashSet;

public final class VK extends AbstractC8555nD {

    public final HashSet f45019e;

    public final AbstractC7552hC f45020f;

    public VK(HashSet hashSet, AbstractC7552hC abstractC7552hC) {
        this.f45019e = hashSet;
        this.f45020f = abstractC7552hC;
    }

    @Override
    public final boolean contains(Object obj) {
        return this.f45019e.contains(obj);
    }

    @Override
    public final boolean g() {
        return false;
    }

    @Override
    public final Object get(int i10) {
        return this.f45020f.get(i10);
    }

    @Override
    public final int size() {
        return this.f45020f.size();
    }
}
