package com.android.tools.r8.internal;

import java.util.List;

public final class CC extends MC {

    public final List f39155e;

    public final EC f39156f;

    public CC(List list, EC ec2) {
        this.f39155e = list;
        this.f39156f = ec2;
    }

    @Override
    public final boolean contains(Object obj) {
        return this.f39156f.contains(obj);
    }

    @Override
    public final boolean g() {
        return true;
    }

    @Override
    public final Object get(int i10) {
        return ((MY) this.f39155e.get(i10)).b();
    }

    @Override
    public final int size() {
        return this.f39155e.size();
    }
}
