package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import java.util.function.Function;

public final class AU extends GA {

    public final Function f38621k;

    public AU(C4724u1 c4724u1, Function function) {
        super(c4724u1);
        this.f38621k = function;
    }

    @Override
    public final com.android.tools.r8.graph.M2 a(String str) {
        return (com.android.tools.r8.graph.M2) this.f38621k.apply(str);
    }
}
