package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

public final class C4864Ag extends AbstractC7015e0 {

    public final Iterator f38684d;

    public C4864Ag(C5038Dg c5038Dg) {
        this.f38684d = c5038Dg.f39589d.entrySet().iterator();
    }

    @Override
    public final Object a() {
        while (this.f38684d.hasNext()) {
            Map.Entry entry = (Map.Entry) this.f38684d.next();
            int i10 = ((AtomicInteger) entry.getValue()).get();
            if (i10 != 0) {
                return new OY(i10, entry.getKey());
            }
        }
        this.f47569b = 3;
        return null;
    }
}
