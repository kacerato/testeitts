package com.android.tools.r8.internal;

import java.util.Map;
import java.util.Objects;

public final class C10221xC extends AbstractC4895Av0 {

    public final AbstractC4895Av0 f53712b;

    public Object f53713c = null;

    public AbstractC4895Av0 f53714d = FK.f40177e;

    public C10221xC(C7719iC c7719iC) {
        this.f53712b = c7719iC.f48872f.entrySet().iterator();
    }

    @Override
    public final boolean hasNext() {
        return this.f53714d.hasNext() || this.f53712b.hasNext();
    }

    @Override
    public final Object next() {
        if (!this.f53714d.hasNext()) {
            Map.Entry entry = (Map.Entry) this.f53712b.next();
            this.f53713c = entry.getKey();
            this.f53714d = ((XB) entry.getValue()).iterator();
        }
        Object obj = this.f53713c;
        Objects.requireNonNull(obj);
        return new ZB(obj, this.f53714d.next());
    }
}
