package com.android.tools.r8.internal;

import java.io.Serializable;
import java.util.Set;

public final class C6073Vd0 extends AbstractC5725Pd0 implements InterfaceC6015Ud0, Serializable, Cloneable {
    public final Object clone() {
        return AbstractC6187Xd0.f45776a;
    }

    @Override
    public final boolean equals(Object obj) {
        return (obj instanceof Set) && ((Set) obj).isEmpty();
    }

    @Override
    public final boolean remove(Object obj) {
        throw new UnsupportedOperationException();
    }
}
