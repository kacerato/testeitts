package com.android.tools.r8.internal;

import java.util.Iterator;

public final class U20 extends Z0 {

    public final C7192f30 f44655c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public U20(C7192f30 c7192f30) {
        super(c7192f30);
        this.f44655c = c7192f30;
    }

    @Override
    public final InterfaceC9861v30 iterator() {
        return new T20(this.f44655c);
    }

    @Override
    public final A30 iterator() {
        return new T20(this.f44655c);
    }

    @Override
    public final Iterator iterator() {
        return new T20(this.f44655c);
    }
}
