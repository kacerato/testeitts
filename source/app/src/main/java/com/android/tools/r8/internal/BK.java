package com.android.tools.r8.internal;

import java.util.Iterator;

public final class BK extends AbstractC7015e0 {

    public final Iterator f38879d;

    public final V60 f38880e;

    public BK(Iterator it, V60 v60) {
        this.f38879d = it;
        this.f38880e = v60;
    }

    @Override
    public final Object a() {
        while (this.f38879d.hasNext()) {
            Object next = this.f38879d.next();
            if (this.f38880e.apply(next)) {
                return next;
            }
        }
        this.f47569b = 3;
        return null;
    }
}
