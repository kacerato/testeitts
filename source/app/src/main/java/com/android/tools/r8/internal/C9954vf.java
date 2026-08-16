package com.android.tools.r8.internal;

import com.android.tools.r8.naming.AbstractC10992r0;
import java.util.function.ToIntFunction;

public class C9954vf extends C9620tf {

    public final ToIntFunction f53164d;

    public C9954vf(AbstractC10992r0 abstractC10992r0, ToIntFunction toIntFunction, ToIntFunction toIntFunction2) {
        super(abstractC10992r0, toIntFunction);
        this.f53164d = toIntFunction2;
    }

    @Override
    public final int a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23) {
        if (m22 == m23) {
            return 0;
        }
        return Integer.compare(this.f53164d.applyAsInt(m22), this.f53164d.applyAsInt(m23));
    }
}
