package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.Z4;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Function;

public final class C9768uY extends SJ {
    public C9768uY(C4798y c4798y, C9935vY c9935vY, Function function, ConcurrentHashMap concurrentHashMap) {
        super(c4798y, c9935vY, function, concurrentHashMap, EnumC6871d70.f47286b);
    }

    @Override
    public final void a(EnumC8071kK enumC8071kK, Z4.c cVar, com.android.tools.r8.graph.H5 h52) {
        com.android.tools.r8.graph.H0 a10 = com.android.tools.r8.graph.H0.a(cVar.f37021c, cVar.f37022d);
        if ((a10 instanceof com.android.tools.r8.graph.H5) && a10.d().k1().b()) {
            super.a(enumC8071kK, cVar, h52);
        }
    }

    @Override
    public final AbstractC5308Hz b() {
        return this.f44177e.v();
    }
}
