package com.android.tools.r8.internal;

public final class FK extends G {

    public static final FK f40177e = new FK(0, 0, new Object[0]);

    public final Object[] f40178d;

    public FK(int i10, int i11, Object[] objArr) {
        super(i10, i11);
        this.f40178d = objArr;
    }

    @Override
    public final Object a(int i10) {
        return this.f40178d[i10];
    }
}
