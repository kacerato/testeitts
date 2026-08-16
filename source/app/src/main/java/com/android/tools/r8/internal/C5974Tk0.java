package com.android.tools.r8.internal;

import com.android.tools.r8.FeatureSplit;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4798y;

public final class C5974Tk0 extends AbstractC7173ex0 {

    public final C4798y f44572b;

    public C5974Tk0(C4798y c4798y) {
        this.f44572b = c4798y;
    }

    @Override
    public final boolean a(C8340lx0 c8340lx0) {
        com.android.tools.r8.graph.H2 h22 = c8340lx0.f50154b;
        com.android.tools.r8.graph.H2 h23 = c8340lx0.f50155c;
        C4798y c4798y = this.f44572b;
        C6300Zd c6300Zd = ((C4514j) c4798y.f()).f37255b;
        c6300Zd.getClass();
        FeatureSplit a10 = c6300Zd.a(h22.getReference(), c4798y.f38408a.g());
        FeatureSplit a11 = c6300Zd.a(h23.getReference(), c4798y.f38408a.g());
        if (!a11.isBase()) {
            return a10 == a11;
        }
        if (AbstractC5647Nv.f42734a || a10.isBase()) {
            return true;
        }
        throw new AssertionError((Object) "Unexpected class in base that inherits from feature");
    }

    @Override
    public final String f() {
        return "SameFeatureSplitPolicy";
    }
}
