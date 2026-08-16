package com.android.tools.r8.internal;

import com.android.tools.r8.origin.Origin;

public final class C7902jJ extends Origin {

    public final String f49208f;

    public C7902jJ(String str, Origin origin) {
        super(origin);
        this.f49208f = str;
    }

    @Override
    public final String part() {
        return "global(" + this.f49208f + ")";
    }
}
