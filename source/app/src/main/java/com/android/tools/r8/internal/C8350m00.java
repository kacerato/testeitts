package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4709t5;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11245i;

public final class C8350m00 extends AbstractC7173ex0 {

    public final AbstractC4709t5 f50175b;

    public C8350m00(C4798y c4798y) {
        this.f50175b = ((C11245i) c4798y.f()).f57405t;
    }

    @Override
    public final boolean a(C8340lx0 c8340lx0) {
        com.android.tools.r8.graph.H2 h22 = c8340lx0.f50154b;
        AbstractC4709t5 abstractC4709t5 = this.f50175b;
        abstractC4709t5.getClass();
        return ((h22.isInterface() && abstractC4709t5.f37785d.contains(h22)) || this.f50175b.b(h22)) ? false : true;
    }

    @Override
    public final String f() {
        return "NoInterfacesWithUnknownSubtypesPolicy";
    }
}
