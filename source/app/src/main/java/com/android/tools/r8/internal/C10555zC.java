package com.android.tools.r8.internal;

import java.util.Collection;
import java.util.Map;
import java.util.Set;

public final class C10555zC extends EC {

    public final C7719iC f54311f;

    public C10555zC(C7719iC c7719iC) {
        this.f54311f = c7719iC;
    }

    @Override
    public final int b(Object obj) {
        Collection collection = (Collection) this.f54311f.f48872f.get(obj);
        if (collection == null) {
            return 0;
        }
        return collection.size();
    }

    @Override
    public final boolean contains(Object obj) {
        return this.f54311f.f48872f.containsKey(obj);
    }

    @Override
    public final boolean g() {
        return true;
    }

    @Override
    public final QC w() {
        return this.f54311f.f48872f.keySet();
    }

    @Override
    public final MY j(int i10) {
        Map.Entry entry = (Map.Entry) this.f54311f.f48872f.entrySet().a().get(i10);
        return new OY(((Collection) entry.getValue()).size(), entry.getKey());
    }

    @Override
    public final int size() {
        return this.f54311f.f48873g;
    }

    @Override
    public final Set w() {
        return this.f54311f.f48872f.keySet();
    }
}
