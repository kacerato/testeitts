package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import java.util.ArrayList;

public final class C6343Zx0 extends AbstractC8489mr0 {

    public final C4554l1 f46382c;

    public final com.android.tools.r8.graph.M2 f46383d;

    public C6343Zx0(C4798y c4798y, C4554l1 c4554l1, com.android.tools.r8.graph.M2 m22) {
        super(c4798y, c4554l1.f38297f);
        this.f46382c = c4554l1;
        this.f46383d = m22;
    }

    @Override
    public final com.android.tools.r8.graph.G b() {
        C4724u1 b10 = this.f50436a.b();
        ArrayList arrayList = new ArrayList();
        arrayList.add(new C8938pa(EnumC5477Kw0.a(this.f46382c.f38297f), 0));
        arrayList.add(new C7437ga(183, b10.a(this.f46383d, b10.a(b10.f37905M1, new com.android.tools.r8.graph.M2[0]), b10.f38067i1), false));
        arrayList.add(new C8938pa(EnumC5477Kw0.a(this.f46382c.f38297f), 0));
        arrayList.add(new C8938pa(EnumC5477Kw0.a(this.f46382c.f37449i), 1));
        arrayList.add(new U9(this.f46382c));
        arrayList.add(new C6607bb());
        return a(arrayList);
    }
}
