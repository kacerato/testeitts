package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import java.util.ArrayList;
import java.util.List;

public final class C9521t10 extends AbstractC9688u10 {

    public static final boolean f52501f = true;

    public final C4554l1 f52502c;

    public final C4554l1 f52503d;

    public final List f52504e;

    public C9521t10(C4798y c4798y, C4554l1 c4554l1, C4554l1 c4554l12, List list) {
        super(c4798y, c4554l12.f38297f);
        this.f52502c = c4554l1;
        this.f52503d = c4554l12;
        this.f52504e = list;
    }

    @Override
    public final com.android.tools.r8.graph.G b() {
        C4724u1 b10 = this.f50436a.b();
        ArrayList arrayList = new ArrayList();
        com.android.tools.r8.graph.M2 m22 = this.f52503d.f37449i;
        G9 a10 = G9.V().a((InterfaceC8008jy) InterfaceC8008jy.a(m22)).a();
        AbstractC9688u10.b(arrayList);
        arrayList.add(a10);
        if (!f52501f && this.f52502c == null) {
            throw new AssertionError();
        }
        C8103ka c8103ka = new C8103ka();
        arrayList.add(new C8938pa(EnumC5477Kw0.a(m22), 0));
        arrayList.add(new V9(this.f52502c.f38297f));
        arrayList.add(new O9(NB.f42527b, EnumC5477Kw0.f41825c, c8103ka));
        arrayList.add(new C8938pa(EnumC5477Kw0.a((char) m22.f36592f.f36562f[0]), 0));
        arrayList.add(new C7710i9(this.f52502c.f38297f));
        arrayList.add(new T9(this.f52502c));
        arrayList.add(new C6440ab(EnumC5477Kw0.a(this.f52502c.f37449i)));
        arrayList.add(c8103ka);
        arrayList.add(new G9(a10.f40404c, a10.f40405d));
        for (com.android.tools.r8.graph.A2 a22 : this.f52504e) {
            C8103ka c8103ka2 = new C8103ka();
            com.android.tools.r8.graph.M2 k10 = a22.k(0);
            arrayList.add(new C8938pa(EnumC5477Kw0.a((char) m22.f36592f.f36562f[0]), 0));
            arrayList.add(new V9(k10));
            arrayList.add(new O9(NB.f42527b, EnumC5477Kw0.f41825c, c8103ka2));
            arrayList.add(new C8938pa(EnumC5477Kw0.a((char) m22.f36592f.f36562f[0]), 0));
            arrayList.add(new C7710i9(k10));
            arrayList.add(new C7437ga(184, a22, false));
            arrayList.add(new C6440ab(EnumC5477Kw0.a(this.f52502c.f37449i)));
            arrayList.add(c8103ka2);
            arrayList.add(new G9(a10.f40404c, a10.f40405d));
        }
        arrayList.add(new C10106wa(this.f52503d.f38297f));
        arrayList.add(C8106kb.a(89));
        arrayList.add(new C8938pa(EnumC5477Kw0.a((char) m22.f36592f.f36562f[0]), 0));
        arrayList.add(new C7437ga(183, b10.a(this.f52503d.f38297f, b10.a(b10.f37905M1, m22), b10.f38067i1), false));
        arrayList.add(new C6440ab(EnumC5477Kw0.a(this.f52503d.f38297f)));
        return a(arrayList);
    }
}
