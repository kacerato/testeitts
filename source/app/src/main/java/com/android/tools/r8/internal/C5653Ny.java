package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.shaking.C11245i;
import com.android.tools.r8.shaking.C11514y;

public final class C5653Ny extends C11514y {

    public final C5711Oy f42746b;

    public C5653Ny(C5711Oy c5711Oy) {
        this.f42746b = c5711Oy;
    }

    @Override
    public final boolean a(C11245i c11245i, C4460g1 c4460g1) {
        return !this.f42746b.a(c4460g1.getReference()) && super.a(c11245i, c4460g1);
    }
}
