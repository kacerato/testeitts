package com.android.tools.r8.internal;

import java.util.Arrays;

public final class MW extends AbstractC7500gv {

    public static final MW f42311b = new MW(false);

    public static final MW f42312c = new MW(true);

    public final boolean f42313a;

    public MW(boolean z10) {
        this.f42313a = z10;
    }

    @Override
    public final boolean a(Object obj, Object obj2) {
        com.android.tools.r8.graph.A2 a22 = (com.android.tools.r8.graph.A2) obj;
        com.android.tools.r8.graph.A2 a23 = (com.android.tools.r8.graph.A2) obj2;
        if (this.f42313a) {
            return a22.f36127i.f36441f.equals(a23.f36127i.f36441f);
        }
        return a22.f38298g.equals(a23.f38298g) && a22.f36127i.f36441f.equals(a23.f36127i.f36441f);
    }

    @Override
    public final int a(Object obj) {
        com.android.tools.r8.graph.A2 a22 = (com.android.tools.r8.graph.A2) obj;
        if (this.f42313a) {
            return Arrays.hashCode(a22.f36127i.f36441f.f36675b);
        }
        return (a22.f38298g.hashCode() * 31) + Arrays.hashCode(a22.f36127i.f36441f.f36675b);
    }
}
