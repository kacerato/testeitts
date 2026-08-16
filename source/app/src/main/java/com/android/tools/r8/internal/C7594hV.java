package com.android.tools.r8.internal;

import java.util.Iterator;

public final class C7594hV extends AbstractC5758Ps0 {

    public final InterfaceC5422Jy f48567c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7594hV(Iterator it, InterfaceC5422Jy interfaceC5422Jy) {
        super(it);
        this.f48567c = interfaceC5422Jy;
    }

    @Override
    public final Object a(Object obj) {
        return new ZB(obj, this.f48567c.apply(obj));
    }
}
