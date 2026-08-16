package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;

public final class C5951Tb0 extends AbstractC6295Zb0 {

    public static final boolean f44501H = true;

    public final C4554l1 f44502E;

    public final int f44503F;

    public final C4554l1 f44504G;

    public C5951Tb0(C4554l1 c4554l1) {
        this.f44502E = null;
        this.f44503F = -1;
        this.f44504G = c4554l1;
    }

    @Override
    public final Object a() {
        return C5951Tb0.class;
    }

    public final String toString() {
        C4554l1 c4554l1 = this.f44502E;
        if (c4554l1 != null) {
            return "MissingInstanceFieldValueForEnumInstance(enum field=" + c4554l1.j0() + ", instance field=" + this.f44504G.j0() + ")";
        }
        int i10 = this.f44503F;
        if (i10 == -1) {
            return "MissingInstanceFieldValueForEnumInstance(Cannot resolve instance field=" + this.f44504G.j0() + ")";
        }
        if (!f44501H && i10 < 0) {
            throw new AssertionError();
        }
        return "MissingInstanceFieldValueForEnumInstance(ordinal=" + i10 + ", instance field=" + this.f44504G.j0() + ")";
    }

    public C5951Tb0(C4554l1 c4554l1, C4554l1 c4554l12) {
        this.f44502E = c4554l12;
        this.f44503F = -1;
        this.f44504G = c4554l1;
    }

    public C5951Tb0(int i10, C4554l1 c4554l1) {
        this.f44502E = null;
        this.f44503F = i10;
        this.f44504G = c4554l1;
    }
}
