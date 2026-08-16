package com.android.tools.r8.internal;

import java.util.Map;

public final class C9887vC extends TB {

    public final AbstractC7552hC f53056d;

    public final C10054wC f53057e;

    public C9887vC(C10054wC c10054wC, AbstractC7552hC abstractC7552hC) {
        this.f53057e = c10054wC;
        this.f53056d = abstractC7552hC;
    }

    @Override
    public final Object get(int i10) {
        return ((Map.Entry) this.f53056d.get(i10)).getValue();
    }

    @Override
    public final XB j() {
        return this.f53057e;
    }
}
