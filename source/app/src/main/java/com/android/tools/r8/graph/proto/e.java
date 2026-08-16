package com.android.tools.r8.graph.proto;

import com.android.tools.r8.internal.K;

public final class e extends d {

    public static final boolean f37612b = true;

    public final K f37613a;

    public e(K k10) {
        if (!f37612b && k10.f41547b != -1) {
            throw new AssertionError();
        }
        this.f37613a = k10;
    }

    @Override
    public final int a(int i10) {
        int i11 = this.f37613a.get(i10);
        return i11 >= 0 ? i11 : i10;
    }
}
