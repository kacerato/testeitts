package com.android.dx.cf.iface;

import com.android.dx.util.FixedSizeList;

public final class StdMethodList extends FixedSizeList implements MethodList {
    public StdMethodList(int i10) {
        super(i10);
    }

    @Override
    public Method get(int i10) {
        return (Method) get0(i10);
    }

    public void set(int i10, Method method) {
        set0(i10, method);
    }
}
