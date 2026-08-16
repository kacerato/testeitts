package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.Set;

public abstract class AbstractC8710o9 implements InterfaceC7497gu, InterfaceC5224Gm, InterfaceC9474sm, InterfaceC8110kc0, InterfaceC5882Rw0 {
    public static AbstractC8710o9 a(C4798y c4798y) {
        C8543n9 c8543n9 = new C8543n9();
        M70 b10 = M70.b(c4798y);
        b10.getClass();
        return b10 instanceof C6520b10 ? c8543n9 : new P70(b10.a(), c4798y.E().q(), c8543n9);
    }

    public abstract Set a();

    public void b(C4798y c4798y) {
    }
}
