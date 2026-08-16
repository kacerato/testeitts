package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.G9;
import com.android.tools.r8.internal.V8;
import java.util.ArrayList;

public final class C9187r10 extends AbstractC9688u10 {

    public final com.android.tools.r8.graph.M2 f51938c;

    public final com.android.tools.r8.graph.M2 f51939d;

    public final com.android.tools.r8.graph.A2 f51940e;

    public C9187r10(C4798y c4798y, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23, com.android.tools.r8.graph.M2 m24, com.android.tools.r8.graph.A2 a22) {
        super(c4798y, m22);
        this.f51938c = m23;
        this.f51939d = m24;
        this.f51940e = a22;
    }

    @Override
    public final com.android.tools.r8.graph.G b() {
        this.f50436a.b();
        ArrayList arrayList = new ArrayList();
        AbstractC9688u10.b(arrayList);
        arrayList.add(G9.V().a((InterfaceC8008jy) InterfaceC8008jy.a(this.f51938c)).a());
        G9.a a10 = G9.V().a((InterfaceC8008jy) InterfaceC8008jy.a(this.f51938c));
        NH nh2 = NH.f42550c;
        G9 a11 = a10.a((InterfaceC8008jy) nh2).a((InterfaceC8008jy) InterfaceC8008jy.a(this.f51939d)).a((InterfaceC8008jy) nh2).a();
        arrayList.add(new C8938pa(EnumC5477Kw0.a(this.f51938c), 0));
        arrayList.add(new W8());
        EnumC5477Kw0 enumC5477Kw0 = EnumC5477Kw0.f41825c;
        arrayList.add(new C10443yb(enumC5477Kw0, 1));
        arrayList.add(new C8938pa(enumC5477Kw0, 1));
        arrayList.add(new C10273xa(this.f51939d));
        arrayList.add(new C10443yb(EnumC5477Kw0.a(this.f51939d), 2));
        arrayList.add(new C10546z9(0L, enumC5477Kw0));
        arrayList.add(new C10443yb(enumC5477Kw0, 3));
        C8103ka c8103ka = new C8103ka();
        C8103ka c8103ka2 = new C8103ka();
        arrayList.add(c8103ka2);
        arrayList.add(a11);
        arrayList.add(new C8938pa(enumC5477Kw0, 3));
        arrayList.add(new C8938pa(enumC5477Kw0, 1));
        arrayList.add(new Q9(NB.f42528c, enumC5477Kw0, c8103ka));
        arrayList.add(new C8938pa(EnumC5477Kw0.a(this.f51939d), 2));
        arrayList.add(new C8938pa(enumC5477Kw0, 3));
        arrayList.add(new C8938pa(EnumC5477Kw0.a(this.f51938c), 0));
        arrayList.add(new C8938pa(enumC5477Kw0, 3));
        YV yv = YV.f45995b;
        arrayList.add(new X8(yv));
        arrayList.add(new C7437ga(184, this.f51940e, false));
        arrayList.add(new Z8(yv));
        arrayList.add(new C8938pa(enumC5477Kw0, 3));
        arrayList.add(new C10546z9(1L, enumC5477Kw0));
        arrayList.add(new V8(V8.a.f44967b, T10.f44369e));
        arrayList.add(new C10443yb(enumC5477Kw0, 3));
        arrayList.add(new M9(c8103ka2));
        arrayList.add(c8103ka);
        arrayList.add(new G9(a11.f40404c, a11.f40405d));
        arrayList.add(new C8938pa(EnumC5477Kw0.a(this.f51939d), 2));
        arrayList.add(new C6440ab(EnumC5477Kw0.a(this.f51939d)));
        return a(arrayList);
    }
}
