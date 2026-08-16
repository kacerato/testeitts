package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.G9;
import java.util.ArrayList;
import java.util.List;
import java.util.function.BiConsumer;

public final class C5298Hu extends AbstractC5472Ku {

    public final com.android.tools.r8.graph.M2 f40906d;

    public final C9331ru f40907e;

    public final F1 f40908f;

    public C5298Hu(C4798y c4798y, com.android.tools.r8.graph.M2 m22, C8497mu c8497mu, C4554l1 c4554l1, F1 f12) {
        super(c4798y, m22);
        this.f40906d = c4554l1.getType();
        if (!C8497mu.f50448f && !c8497mu.f50449a.containsKey(c4554l1)) {
            throw new AssertionError();
        }
        this.f40907e = ((AbstractC9165qu) c8497mu.f50449a.get(c4554l1)).c();
        this.f40908f = f12;
    }

    public final void a(List list, F1 f12) {
        a(list, f12, this.f40906d);
        list.add(new C6440ab(EnumC5477Kw0.a(this.f40906d)));
    }

    @Override
    public final com.android.tools.r8.graph.G b() {
        C4724u1 b10 = this.f50436a.b();
        ArrayList arrayList = new ArrayList();
        G9.a a10 = G9.V().a((InterfaceC8008jy) InterfaceC8008jy.a(b10.f37884J1));
        BiConsumer biConsumer = new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C5298Hu.this.a((List) obj, (F1) obj2);
            }
        };
        C6718cC c6718cC = this.f40907e.f52216a;
        F1 f12 = this.f40908f;
        a(arrayList, biConsumer, c6718cC, f12, a10, f12 == null);
        return a(arrayList);
    }
}
