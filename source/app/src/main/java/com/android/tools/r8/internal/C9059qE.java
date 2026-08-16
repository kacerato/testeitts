package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.ArrayList;

public final class C9059qE extends AbstractC8489mr0 {

    public final com.android.tools.r8.graph.M2 f51742c;

    public C9059qE(C4798y c4798y, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23) {
        super(c4798y, m22);
        this.f51742c = m23;
    }

    @Override
    public final com.android.tools.r8.graph.G b() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new C8938pa(EnumC5477Kw0.f41824b, 0));
        arrayList.add(new V9(this.f51742c));
        arrayList.add(new C6440ab(EnumC5477Kw0.f41825c));
        return a(arrayList);
    }
}
