package com.android.tools.r8.internal;

import java.util.Collection;
import java.util.Map;

public final class C10388yC extends XB {

    public final C7719iC f53968c;

    public C10388yC(C7719iC c7719iC) {
        this.f53968c = c7719iC;
    }

    @Override
    public final boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            C7719iC c7719iC = this.f53968c;
            Object key = entry.getKey();
            Object value = entry.getValue();
            Collection collection = (Collection) c7719iC.b().get(key);
            if (collection != null && collection.contains(value)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final boolean g() {
        return this.f53968c.f48872f.l();
    }

    @Override
    public final AbstractC4895Av0 iterator() {
        C7719iC c7719iC = this.f53968c;
        c7719iC.getClass();
        return new C10221xC(c7719iC);
    }

    @Override
    public final int size() {
        return this.f53968c.f48873g;
    }
}
