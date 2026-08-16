package com.android.tools.r8.internal;

import com.android.tools.r8.naming.AbstractC10992r0;
import java.util.function.ToIntFunction;

public class C9620tf extends C9453sf {

    public final ToIntFunction f52652c;

    public C9620tf(AbstractC10992r0 abstractC10992r0, ToIntFunction toIntFunction) {
        super(abstractC10992r0);
        this.f52652c = toIntFunction;
    }

    @Override
    public final int a(com.android.tools.r8.graph.L2 l22, com.android.tools.r8.graph.L2 l23) {
        if (l22 == l23) {
            return 0;
        }
        return Integer.compare(this.f52652c.applyAsInt(l22), this.f52652c.applyAsInt(l23));
    }
}
