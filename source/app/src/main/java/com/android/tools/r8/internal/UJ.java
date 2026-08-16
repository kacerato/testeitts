package com.android.tools.r8.internal;

import java.util.Collections;
import java.util.List;

public abstract class UJ extends AbstractC9392sE {

    public static final boolean f44717f = true;

    public com.android.tools.r8.graph.A2 f44718d;

    public List f44719e = Collections.EMPTY_LIST;

    public final UJ a(List list) {
        if (!f44717f && list == null) {
            throw new AssertionError();
        }
        this.f44719e = list;
        return (UJ) a();
    }

    public final UJ a(C10340xw0 c10340xw0) {
        int i10 = AbstractC7552hC.f48487c;
        return a(new C5920Sm0(c10340xw0));
    }
}
