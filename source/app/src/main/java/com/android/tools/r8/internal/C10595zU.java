package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import java.util.function.Function;

public final class C10595zU extends FA {

    public final Function f54388i;

    public C10595zU(C4724u1 c4724u1, Function function) {
        super(c4724u1);
        this.f54388i = function;
    }

    @Override
    public final com.android.tools.r8.graph.M2 a(String str) {
        return (com.android.tools.r8.graph.M2) this.f54388i.apply(str);
    }
}
