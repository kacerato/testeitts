package com.android.tools.r8.internal;

import java.util.Map;

public final class RK extends AbstractC7552hC {

    public final SK f43862d;

    public RK(SK sk2) {
        this.f43862d = sk2;
    }

    @Override
    public final boolean g() {
        return false;
    }

    @Override
    public final Object get(int i10) {
        Map.Entry entry = (Map.Entry) this.f43862d.f44182f.get(i10);
        return new ZB(entry.getValue(), entry.getKey());
    }

    @Override
    public final int size() {
        return this.f43862d.f44182f.size();
    }
}
