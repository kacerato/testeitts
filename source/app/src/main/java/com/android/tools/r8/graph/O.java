package com.android.tools.r8.graph;

import com.android.tools.r8.internal.InterfaceC5407Jq0;

public final class O {

    public static final boolean f36656d = true;

    public final G f36657a;

    public final G f36658b;

    public K f36659c = null;

    public O(G g10, G g11) {
        this.f36657a = g10;
        this.f36658b = g11;
    }

    public static void a(com.android.tools.r8.internal.W9 w92, com.android.tools.r8.internal.W9 w93) {
        boolean z10 = f36656d;
        if (!z10 && w92.getClass() != w93.getClass()) {
            throw new AssertionError();
        }
        if (!z10 && w92.C() != w93.C()) {
            throw new AssertionError();
        }
        if (!z10 && !w92.toString().equals(w93.toString())) {
            throw new AssertionError();
        }
    }

    public final InterfaceC5407Jq0 a() {
        if (this.f36659c == null) {
            this.f36659c = new K(this);
        }
        return this.f36659c;
    }
}
