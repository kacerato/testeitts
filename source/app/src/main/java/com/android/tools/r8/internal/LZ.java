package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.synthesis.S;

public final class LZ extends AbstractC10436yY {

    public final C4798y f41977b;

    public LZ(C4798y c4798y) {
        this.f41977b = c4798y;
    }

    @Override
    public final KZ a(com.android.tools.r8.graph.H2 h22) {
        return this.f41977b.f38408a.g().a(h22.getType(), new com.android.tools.r8.synthesis.I() {
            @Override
            public final S.b a(com.android.tools.r8.synthesis.S s10) {
                S.b bVar;
                bVar = s10.f58168U;
                return bVar;
            }
        }) ? KZ.f41695b : KZ.f41696c;
    }

    @Override
    public final String f() {
        return "NoApiOutlineWithNonApiOutline";
    }
}
