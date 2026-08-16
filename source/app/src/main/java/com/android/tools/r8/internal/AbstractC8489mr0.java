package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public abstract class AbstractC8489mr0 {

    public final C4798y f50436a;

    public final com.android.tools.r8.graph.M2 f50437b;

    public AbstractC8489mr0(C4798y c4798y, com.android.tools.r8.graph.M2 m22) {
        this.f50436a = c4798y;
        this.f50437b = m22;
    }

    public int a() {
        return 16;
    }

    public abstract com.android.tools.r8.graph.G b();

    public final com.android.tools.r8.graph.G a(ArrayList arrayList) {
        com.android.tools.r8.graph.M2 m22 = this.f50437b;
        int a10 = a();
        List list = Collections.EMPTY_LIST;
        return new com.android.tools.r8.graph.G(m22, a10, 16, arrayList, list, list);
    }
}
