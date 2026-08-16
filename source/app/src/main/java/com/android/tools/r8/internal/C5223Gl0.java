package com.android.tools.r8.internal;

import java.util.AbstractSet;
import java.util.BitSet;
import java.util.Iterator;

public final class C5223Gl0 extends AbstractSet {

    public final BitSet f40581b;

    public final C5281Hl0 f40582c;

    public C5223Gl0(C5281Hl0 c5281Hl0, BitSet bitSet) {
        this.f40582c = c5281Hl0;
        this.f40581b = bitSet;
    }

    @Override
    public final boolean contains(Object obj) {
        Integer num = (Integer) this.f40582c.f40865e.f41203c.get(obj);
        return num != null && this.f40581b.get(num.intValue());
    }

    @Override
    public final Iterator iterator() {
        return new C5165Fl0(this);
    }

    @Override
    public final int size() {
        return this.f40582c.f40865e.f41202b;
    }
}
