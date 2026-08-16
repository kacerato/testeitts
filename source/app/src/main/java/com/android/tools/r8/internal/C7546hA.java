package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import java.util.ArrayList;

public final class C7546hA extends AbstractC8489mr0 {

    public final C4554l1 f48477c;

    public C7546hA(C4798y c4798y, C4554l1 c4554l1, com.android.tools.r8.graph.M2 m22) {
        super(c4798y, m22);
        this.f48477c = c4554l1;
    }

    @Override
    public final com.android.tools.r8.graph.G b() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new C8938pa(EnumC5477Kw0.f41824b, 0));
        arrayList.add(new T9(this.f48477c));
        arrayList.add(new C7437ga(182, this.f50436a.b().f37859F4.f38227e, false));
        arrayList.add(new C6440ab(EnumC5477Kw0.f41825c));
        return a(arrayList);
    }
}
