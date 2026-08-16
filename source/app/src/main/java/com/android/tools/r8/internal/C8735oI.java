package com.android.tools.r8.internal;

import java.io.Serializable;
import java.util.Set;

public class C8735oI extends KH implements InterfaceC8568nI, Serializable, Cloneable {
    public Object clone() {
        return AbstractC8902pI.f51489a;
    }

    @Override
    public final boolean equals(Object obj) {
        return (obj instanceof Set) && ((Set) obj).isEmpty();
    }

    @Override
    public final boolean remove(int i10) {
        throw new UnsupportedOperationException();
    }
}
