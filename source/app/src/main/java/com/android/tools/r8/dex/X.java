package com.android.tools.r8.dex;

import com.android.tools.r8.graph.AbstractC4592n1;
import com.android.tools.r8.graph.C4441f1;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4666r0;
import com.android.tools.r8.graph.C4685s0;
import com.android.tools.r8.graph.C4723u0;
import com.android.tools.r8.graph.C4823z5;
import com.android.tools.r8.graph.H2;
import com.android.tools.r8.graph.InterfaceC4443f3;
import com.android.tools.r8.graph.O2;
import com.android.tools.r8.graph.Z0;

public abstract class X {
    public abstract void a(H2 h22, C4685s0 c4685s0);

    public abstract boolean a(H2 h22);

    public abstract boolean a(O2 o22);

    public abstract boolean a(Z0 z02);

    public abstract boolean a(C4441f1 c4441f1);

    public abstract boolean a(C4516j1 c4516j1);

    public abstract boolean a(C4666r0 c4666r0);

    public abstract boolean a(C4723u0 c4723u0);

    public abstract boolean a(C4823z5 c4823z5);

    public void b(C4516j1 c4516j1) {
        InterfaceC4443f3 R02 = c4516j1.R0();
        if (R02 != null && a(c4516j1)) {
            R02.a(this);
        }
        C4723u0 k02 = c4516j1.k0();
        k02.getClass();
        a(k02);
        AbstractC4592n1.a(this, k02.f37806d);
        C4823z5 c4823z5 = c4516j1.f37316i;
        AbstractC4592n1.a(this, c4823z5.f38467b);
        a(c4823z5);
    }
}
