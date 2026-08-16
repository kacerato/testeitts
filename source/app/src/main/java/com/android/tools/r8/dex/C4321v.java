package com.android.tools.r8.dex;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.H5;
import com.android.tools.r8.graph.InterfaceC4424e3;
import com.android.tools.r8.internal.C2;
import com.android.tools.r8.internal.C8570nJ;
import java.util.HashMap;

public final class C4321v {

    public static final boolean f35970c = true;

    public HashMap f35971a;

    public final C4798y f35972b;

    public C4321v(C4798y c4798y) {
        this.f35972b = c4798y;
    }

    public final int a(H5 h52) {
        if (this.f35971a != null) {
            InterfaceC4424e3 a10 = h52.d().R0().a(h52, this.f35972b.b());
            if (f35970c || this.f35971a.containsKey(a10)) {
                return ((Integer) this.f35971a.get(a10)).intValue();
            }
            throw new AssertionError();
        }
        if (f35970c) {
            return 1;
        }
        C8570nJ E10 = this.f35972b.E();
        E10.getClass();
        if (!E10.c(C2.S) || h52.d().R0() == null) {
            return 1;
        }
        throw new AssertionError();
    }
}
