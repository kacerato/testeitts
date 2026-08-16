package com.android.tools.r8.internal;

import java.util.ArrayList;

public final class C6578bN {

    public final ArrayList f46750a = new ArrayList();

    public final C6578bN a(C10251xP c10251xP) {
        this.f46750a.add(c10251xP);
        return this;
    }

    public final C6744cN a() {
        if (!this.f46750a.isEmpty()) {
            return new C6744cN(this.f46750a);
        }
        throw new FN("Invalid empty consequent set");
    }
}
