package com.android.tools.r8.internal;

import java.util.Iterator;

public final class C4933Bl0 extends AbstractC7015e0 {

    public final Iterator f39007d;

    public final C4991Cl0 f39008e;

    public C4933Bl0(C4991Cl0 c4991Cl0) {
        this.f39008e = c4991Cl0;
        this.f39007d = c4991Cl0.f39350b.iterator();
    }

    @Override
    public final Object a() {
        while (this.f39007d.hasNext()) {
            Object next = this.f39007d.next();
            if (this.f39008e.f39351c.contains(next)) {
                return next;
            }
        }
        this.f47569b = 3;
        return null;
    }
}
