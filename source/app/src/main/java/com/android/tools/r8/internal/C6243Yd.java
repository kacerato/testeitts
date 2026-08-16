package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import java.util.LinkedHashMap;
import java.util.function.Consumer;
import java.util.function.Predicate;

public final class C6243Yd {

    public final C4798y f46046a;

    public final C4724u1 f46047b;

    public final AA f46048c;

    public final C10048wA f46049d;

    public final LinkedHashMap f46050e = new LinkedHashMap();

    public C6243Yd(C4798y c4798y, C10048wA c10048wA, AA aa2) {
        this.f46046a = c4798y;
        this.f46047b = c4798y.b();
        this.f46048c = aa2;
        this.f46049d = c10048wA;
    }

    public final boolean a(C4554l1 c4554l1) {
        return this.f46048c.f38555d.f36251k.f37700b.a(c4554l1) == null && !this.f46050e.containsKey(c4554l1);
    }

    public final void a(C4460g1 c4460g1) {
        C4554l1 reference = c4460g1.getReference();
        C4554l1 a10 = this.f46047b.a(this.f46048c.f38555d.getType(), c4460g1.getType(), c4460g1.C0().toString(), new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C6243Yd.this.a((C4554l1) obj);
            }
        });
        this.f46050e.put(a10, c4460g1.a(this.f46046a, a10, C6628bi.b()));
        this.f46049d.f53430a.a(reference, a10);
    }

    public final void a(com.android.tools.r8.graph.H2 h22) {
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                C6243Yd.this.a((C4460g1) obj);
            }
        };
        h22.getClass();
        h22.d(consumer, EnumC6871d70.f47286b);
    }
}
