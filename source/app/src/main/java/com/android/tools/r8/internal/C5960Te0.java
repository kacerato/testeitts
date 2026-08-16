package com.android.tools.r8.internal;

import java.util.Map;

public final class C5960Te0 extends TB {

    public final C6018Ue0 f44522d;

    public C5960Te0(C6018Ue0 c6018Ue0) {
        this.f44522d = c6018Ue0;
    }

    @Override
    public final Object get(int i10) {
        Map.Entry entry = this.f44522d.f44818e.f45115f.f45495h[i10];
        return new ZB(entry.getValue(), entry.getKey());
    }

    @Override
    public final XB j() {
        return this.f44522d;
    }
}
