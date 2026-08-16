package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.G9;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.function.BiConsumer;

public final class C5356Iu extends AbstractC5472Ku {

    public static final boolean f41243f = true;

    public final com.android.tools.r8.graph.A2 f41244d;

    public final QG f41245e;

    public C5356Iu(C4798y c4798y, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.A2 a22, QG qg2) {
        super(c4798y, m22);
        this.f41244d = a22;
        this.f41245e = qg2;
    }

    public final void a(List list, com.android.tools.r8.graph.A2 a22) {
        Iterator<com.android.tools.r8.graph.M2> it = a22.x0().iterator();
        int i10 = 0;
        while (it.hasNext()) {
            com.android.tools.r8.graph.M2 next = it.next();
            list.add(new C8938pa(EnumC5477Kw0.a(next), i10));
            i10 += next.B0();
        }
        list.add(new C7437ga(184, a22, false));
        list.add(a22.z0().S0() ? new C6607bb() : new C6440ab(EnumC5477Kw0.a(a22.z0())));
    }

    @Override
    public final com.android.tools.r8.graph.J b() {
        if (!f41243f && this.f41245e.isEmpty()) {
            throw new AssertionError();
        }
        ArrayList arrayList = new ArrayList();
        QG qg2 = ((IG) this.f41245e.values()).f41047b;
        com.android.tools.r8.graph.A2 a22 = (com.android.tools.r8.graph.A2) qg2.f43525c[new PG(qg2).b()];
        G9.a V10 = G9.V();
        Iterator<com.android.tools.r8.graph.M2> it = a22.x0().iterator();
        int i10 = 0;
        while (it.hasNext()) {
            com.android.tools.r8.graph.M2 next = it.next();
            V10.a((InterfaceC8008jy) InterfaceC8008jy.a(next));
            i10 += next.B0();
        }
        a(arrayList, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C5356Iu.this.a((List) obj, (com.android.tools.r8.graph.A2) obj2);
            }
        }, this.f41245e, this.f41244d, V10, false);
        if (!f41243f && i10 >= 256) {
            throw new AssertionError();
        }
        return new com.android.tools.r8.graph.J(this.f50437b, (i10 * 2) + 16, i10 + 16, arrayList);
    }
}
