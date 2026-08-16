package com.android.tools.r8.graph;

import com.android.tools.r8.internal.C9954vf;
import com.android.tools.r8.naming.AbstractC10992r0;
import java.util.function.ToIntFunction;

public final class C4728u5 extends C9954vf {

    public final C4766w5 f38276e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4728u5(AbstractC10992r0 abstractC10992r0, ToIntFunction toIntFunction, ToIntFunction toIntFunction2, C4766w5 c4766w5) {
        super(abstractC10992r0, toIntFunction, toIntFunction2);
        this.f38276e = c4766w5;
    }

    @Override
    public final int a(C4554l1 c4554l1, C4554l1 c4554l12) {
        return Integer.compare(this.f38276e.f38342i.b(c4554l1), this.f38276e.f38342i.b(c4554l12));
    }

    @Override
    public final int a(A2 a22, A2 a23) {
        return Integer.compare(this.f38276e.f38341h.b(a22), this.f38276e.f38341h.b(a23));
    }
}
