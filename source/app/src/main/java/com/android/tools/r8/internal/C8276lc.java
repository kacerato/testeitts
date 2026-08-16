package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.ArrayList;

public final class C8276lc extends AbstractC8489mr0 {

    public final com.android.tools.r8.graph.M2 f50012c;

    public C8276lc(C4798y c4798y, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23) {
        super(c4798y, m22);
        this.f50012c = m23;
    }

    @Override
    public final com.android.tools.r8.graph.G b() {
        ArrayList arrayList = new ArrayList();
        EnumC5477Kw0 enumC5477Kw0 = EnumC5477Kw0.f41824b;
        arrayList.add(new C8938pa(enumC5477Kw0, 0));
        arrayList.add(new C7710i9(this.f50012c));
        arrayList.add(new C6440ab(enumC5477Kw0));
        return a(arrayList);
    }
}
