package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.C8570nJ;

public final class C8016k00 extends AbstractC10644zm0 {

    public final C8570nJ.g f49444b;

    public C8016k00(C4798y c4798y) {
        this.f49444b = c4798y.E().K();
    }

    @Override
    public final boolean a(com.android.tools.r8.graph.H2 h22) {
        return !h22.isInterface();
    }

    @Override
    public final String f() {
        return "NoInterfaces";
    }

    @Override
    public final boolean l() {
        return this.f49444b.f50762c;
    }
}
