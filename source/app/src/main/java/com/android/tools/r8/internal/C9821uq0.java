package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4515j0;
import com.android.tools.r8.ir.optimize.C10696a;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

public final class C9821uq0 extends AbstractC10155wq0 {

    public static final boolean f52963j = true;

    public final W5 f52964f;

    public final W5 f52965g;

    public final LinkedHashMap f52966h;

    public final C10322xq0 f52967i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C9821uq0(C10322xq0 c10322xq0, C7215fB c7215fB, Z5 z52, W5 w52, C8319lq0 c8319lq0, Set set) {
        super(c7215fB, z52, c8319lq0, set);
        this.f52967i = c10322xq0;
        this.f52964f = w52;
        this.f52965g = c8319lq0.u2();
        this.f52966h = a(c8319lq0);
    }

    public static LinkedHashMap a(C8319lq0 c8319lq0) {
        final LinkedHashMap linkedHashMap = new LinkedHashMap();
        InterfaceC5988Tr0 interfaceC5988Tr0 = new InterfaceC5988Tr0() {
            @Override
            public final void accept(Object obj, Object obj2) {
                Map.this.put((com.android.tools.r8.graph.L2) obj, (W5) obj2);
            }
        };
        int i10 = 0;
        while (true) {
            com.android.tools.r8.graph.L2[] l2Arr = c8319lq0.f50122o;
            if (i10 >= l2Arr.length) {
                return linkedHashMap;
            }
            interfaceC5988Tr0.accept(l2Arr[i10], c8319lq0.b(i10));
            i10++;
        }
    }

    @Override
    public final void a() {
        for (W5 w52 : this.f52964f.p()) {
            W5 w53 = this.f52964f;
            w52.getClass();
            w52.a(w53, (C10696a) null, C6628bi.b(), EnumC6871d70.f47287c);
        }
        this.f52964f.O();
        Set c10 = AbstractC5513Ll0.c();
        Set b10 = C4875Al0.b(this.f52966h.size());
        for (W5 w54 : this.f52966h.values()) {
            if (!b10.add(w54)) {
                c10.add(w54);
            }
        }
        W5 w55 = null;
        for (Map.Entry entry : this.f52966h.entrySet()) {
            C9960vh c9960vh = new C9960vh(this.f53613a.a(this.f52967i.f53854f, (C4515j0) null), (com.android.tools.r8.graph.L2) entry.getKey());
            c9960vh.b(this.f53616d);
            C8405mK c8405mK = new C8405mK(this.f52967i.f52646a.b().f37887J4.f38249k, this.f53613a.a(AbstractC8999pu0.k(), (C4515j0) null), AbstractC7552hC.a(this.f53617e, c9960vh.d()));
            c8405mK.b(this.f53616d);
            EB eb2 = new EB(NB.f42532g, c8405mK.d());
            eb2.b(B60.s());
            W5 w56 = (W5) entry.getValue();
            if (c10.contains(w56)) {
                W5 a10 = W5.a(this.f53613a.f47899f.a(), B60.s(), this.f53613a.f47902i);
                a10.g(w56);
                this.f53614b.add(a10);
                this.f53615c.add(a10);
                w56 = a10;
            }
            int a11 = this.f53613a.f47899f.a();
            C8382mB c8382mB = this.f53613a.f47902i;
            AbstractC10561zE[] abstractC10561zEArr = {c9960vh, c8405mK};
            W5 w57 = new W5(c8382mB);
            for (int i10 = 0; i10 < 2; i10++) {
                w57.a(abstractC10561zEArr[i10], c8382mB);
            }
            w57.a(eb2, c8382mB);
            w57.a((C6382aB) null);
            w57.d(a11);
            w57.g(w56);
            this.f53614b.add(w57);
            this.f53615c.add(w57);
            if (w55 == null) {
                this.f52964f.i().d(new C4960Bz());
                this.f52964f.g(w57);
            } else {
                w55.g(w57);
            }
            w55 = w57;
        }
        if (!f52963j && w55 == null) {
            throw new AssertionError();
        }
        w55.g(this.f52965g);
    }
}
