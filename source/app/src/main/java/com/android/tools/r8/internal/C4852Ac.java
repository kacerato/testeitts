package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.C8570nJ;

public final class C4852Ac extends AbstractC10644zm0 {

    public final C8570nJ.g f38641b;

    public final com.android.tools.r8.synthesis.J f38642c;

    public C4852Ac(C4798y c4798y) {
        this.f38641b = c4798y.E().K();
        this.f38642c = c4798y.f38408a.g();
    }

    @Override
    public final boolean a(com.android.tools.r8.graph.H2 h22) {
        if (!this.f38641b.f50764e) {
            com.android.tools.r8.synthesis.J j10 = this.f38642c;
            j10.getClass();
            if (j10.g(h22.f36245e)) {
                return false;
            }
        }
        return !this.f38641b.e() || this.f38642c.b(h22);
    }

    @Override
    public final String f() {
        return "CheckSyntheticClasses";
    }
}
