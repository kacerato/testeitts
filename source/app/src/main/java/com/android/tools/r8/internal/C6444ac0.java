package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import java.util.ArrayList;
import java.util.List;

public final class C6444ac0 extends AbstractC6944dc0 {

    public static final boolean f46562d = true;

    public final List f46563c;

    public C6444ac0(C4798y c4798y, com.android.tools.r8.graph.M2 m22, List list) {
        super(c4798y, m22);
        this.f46563c = list;
    }

    public static void a(C4724u1 c4724u1) {
        synchronized (c4724u1) {
            c4724u1.a(c4724u1.d(c4724u1.b("Ljava/lang/Objects;")));
        }
    }

    @Override
    public final com.android.tools.r8.graph.G b() {
        G9 a10 = G9.V().a((InterfaceC8008jy) InterfaceC8008jy.a(this.f50437b)).a((InterfaceC8008jy) InterfaceC8008jy.a(this.f50436a.b().f38068i2)).a();
        ArrayList arrayList = new ArrayList();
        C8103ka c8103ka = new C8103ka();
        EnumC5477Kw0 enumC5477Kw0 = EnumC5477Kw0.f41824b;
        arrayList.add(new C8938pa(enumC5477Kw0, 1));
        arrayList.add(new V9(this.f50437b));
        arrayList.add(new O9(NB.f42527b, EnumC5477Kw0.f41825c, c8103ka));
        arrayList.add(new C8938pa(enumC5477Kw0, 1));
        arrayList.add(new C7710i9(this.f50437b));
        arrayList.add(new C10443yb(enumC5477Kw0, 2));
        for (int i10 = 0; i10 < this.f46563c.size(); i10++) {
            C4554l1 c4554l1 = (C4554l1) this.f46563c.get(i10);
            EnumC5477Kw0 a11 = EnumC5477Kw0.a(c4554l1.getType());
            EnumC5477Kw0 enumC5477Kw02 = EnumC5477Kw0.f41824b;
            arrayList.add(new C8938pa(enumC5477Kw02, 0));
            arrayList.add(new T9(c4554l1));
            arrayList.add(new C8938pa(enumC5477Kw02, 2));
            arrayList.add(new T9(c4554l1));
            if (a11 == EnumC5477Kw0.f41828f) {
                arrayList.add(new C9044q9(EnumC9283re.f52081d, T10.f44372h));
                arrayList.add(new O9(NB.f42532g, EnumC5477Kw0.f41825c, c8103ka));
            } else if (a11 == EnumC5477Kw0.f41826d) {
                arrayList.add(new C9044q9(EnumC9283re.f52081d, T10.f44371g));
                arrayList.add(new O9(NB.f42532g, EnumC5477Kw0.f41825c, c8103ka));
            } else if (a11 == EnumC5477Kw0.f41827e) {
                arrayList.add(new C9044q9(EnumC9283re.f52079b, T10.f44370f));
                arrayList.add(new O9(NB.f42532g, EnumC5477Kw0.f41825c, c8103ka));
            } else if (a11.a()) {
                arrayList.add(new C7437ga(184, this.f50436a.b().f37852E4.f37349a, false));
                arrayList.add(new O9(NB.f42527b, EnumC5477Kw0.f41825c, c8103ka));
            } else {
                if (!f46562d && a11 != EnumC5477Kw0.f41825c) {
                    throw new AssertionError();
                }
                arrayList.add(new Q9(NB.f42532g, EnumC5477Kw0.f41825c, c8103ka));
            }
        }
        EnumC5477Kw0 enumC5477Kw03 = EnumC5477Kw0.f41825c;
        arrayList.add(new C10546z9(1L, enumC5477Kw03));
        arrayList.add(new C6440ab(enumC5477Kw03));
        arrayList.add(c8103ka);
        arrayList.add(a10);
        arrayList.add(new C10546z9(0L, enumC5477Kw03));
        arrayList.add(new C6440ab(enumC5477Kw03));
        return a(arrayList);
    }
}
