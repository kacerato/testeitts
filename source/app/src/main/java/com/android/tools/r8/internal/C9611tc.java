package com.android.tools.r8.internal;

import java.util.HashSet;

public final class C9611tc {

    public final String f52636a;

    public final HashSet f52637b = new HashSet();

    public C9611tc(String str) {
        this.f52636a = str;
    }

    public final void a(String str) {
        if (this.f52637b.add(str)) {
            return;
        }
        throw new IllegalArgumentException(this.f52636a + " '" + str + "' already declared");
    }
}
