package com.android.tools.r8.internal;

import java.io.Serializable;
import java.util.Set;

public class J30 extends AbstractC10195x30 implements I30, Serializable, Cloneable {
    public Object clone() {
        return L30.f41855a;
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
