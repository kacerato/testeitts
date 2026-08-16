package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import java.util.ArrayList;

public class GA extends Q0 {

    public static final boolean f40411j = true;

    public com.android.tools.r8.graph.K4 f40412c;

    public com.android.tools.r8.graph.M2 f40413d;

    public com.android.tools.r8.graph.M2 f40414e;

    public com.android.tools.r8.graph.L2 f40415f;

    public ArrayList f40416g;

    public com.android.tools.r8.graph.A2 f40417h;

    public com.android.tools.r8.graph.L4 f40418i;

    public GA(C4724u1 c4724u1) {
        super(c4724u1);
    }

    public final com.android.tools.r8.graph.A2 a() {
        if (f40411j || b()) {
            return this.f40417h;
        }
        throw new AssertionError();
    }

    public final boolean b() {
        return this.f40417h != null;
    }

    @Override
    public final void a(int i10) {
        if (!f40411j && b()) {
            throw new AssertionError();
        }
        ((com.android.tools.r8.graph.L4) this.f40412c.f37168a).a(i10);
    }
}
