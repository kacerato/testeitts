package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11245i;
import java.util.Iterator;
import java.util.Set;

public final class C6850d00 extends AbstractC10644zm0 {

    public final Set f47247b = AbstractC5513Ll0.c();

    public C6850d00(C4798y c4798y) {
        Iterator it = ((C11245i) c4798y.f()).f57399n.iterator();
        while (it.hasNext()) {
            this.f47247b.add(((com.android.tools.r8.graph.A2) it.next()).f38297f);
        }
    }

    @Override
    public final boolean a(com.android.tools.r8.graph.H2 h22) {
        return !this.f47247b.contains(h22.getType());
    }

    @Override
    public final String f() {
        return "NoFailedResolutionTargets";
    }
}
