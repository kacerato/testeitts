package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import java.util.ArrayList;
import java.util.Iterator;

public final class C9354s10 extends AbstractC9688u10 {

    public final Iterable f52250c;

    public final com.android.tools.r8.graph.M2 f52251d;

    public final com.android.tools.r8.graph.M2 f52252e;

    public C9354s10(C4798y c4798y, com.android.tools.r8.graph.M2 m22, Iterable iterable, com.android.tools.r8.graph.M2 m23, com.android.tools.r8.graph.M2 m24) {
        super(c4798y, m22);
        this.f52250c = iterable;
        this.f52251d = m23;
        this.f52252e = m24;
    }

    @Override
    public final com.android.tools.r8.graph.G b() {
        C4724u1 b10 = this.f50436a.b();
        ArrayList arrayList = new ArrayList();
        G9 a10 = G9.V().a((InterfaceC8008jy) InterfaceC8008jy.a(this.f52251d)).a();
        AbstractC9688u10.b(arrayList);
        arrayList.add(a10);
        Iterator it = this.f52250c.iterator();
        while (it.hasNext()) {
            C4460g1 c4460g1 = (C4460g1) it.next();
            C8103ka c8103ka = new C8103ka();
            if (it.hasNext()) {
                arrayList.add(new C8938pa(EnumC5477Kw0.a(this.f52251d), 0));
                com.android.tools.r8.graph.M2 m22 = this.f52251d;
                arrayList.add(new C9942vb(b10.a(m22, m22, c4460g1.C0())));
                arrayList.add(new Q9(NB.f42532g, EnumC5477Kw0.f41824b, c8103ka));
            }
            com.android.tools.r8.graph.M2 m23 = this.f52252e;
            arrayList.add(new C9942vb(b10.a(m23, m23, c4460g1.C0())));
            arrayList.add(new C6440ab(EnumC5477Kw0.a(this.f52252e)));
            if (it.hasNext()) {
                arrayList.add(c8103ka);
                arrayList.add(new G9(a10.f40404c, a10.f40405d));
            }
        }
        return a(arrayList);
    }
}
