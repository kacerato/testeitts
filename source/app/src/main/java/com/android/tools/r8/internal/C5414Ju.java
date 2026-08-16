package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.C8106kb;
import java.util.ArrayList;
import java.util.List;
import java.util.function.BiConsumer;

public final class C5414Ju extends AbstractC5472Ku {

    public final com.android.tools.r8.graph.M2 f41520d;

    public final C9331ru f41521e;

    public C5414Ju(C4798y c4798y, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23, C9331ru c9331ru) {
        super(c4798y, m22);
        this.f41520d = m23;
        this.f41521e = c9331ru;
    }

    public final void a(List list, C4724u1 c4724u1, G9 g92, Integer num, F1 f12) {
        C8103ka c8103ka = new C8103ka();
        list.add(new C8938pa(EnumC5477Kw0.a(c4724u1.f38052g2), 0));
        a(list, f12, c4724u1.f38052g2);
        list.add(new C7437ga(182, c4724u1.f37887J4.f38249k, false));
        NB nb2 = NB.f42527b;
        EnumC5477Kw0 enumC5477Kw0 = EnumC5477Kw0.f41825c;
        list.add(new O9(nb2, enumC5477Kw0, c8103ka));
        list.add(new C10546z9(num.intValue(), enumC5477Kw0));
        list.add(new C6440ab(enumC5477Kw0));
        list.add(c8103ka);
        list.add(new G9(g92.f40404c, g92.f40405d));
    }

    @Override
    public final com.android.tools.r8.graph.G b() {
        final C4724u1 b10 = this.f50436a.b();
        final ArrayList arrayList = new ArrayList();
        final G9 a10 = G9.V().a((InterfaceC8008jy) InterfaceC8008jy.a(b10.f38052g2)).a();
        C8103ka c8103ka = new C8103ka();
        arrayList.add(new C8938pa(EnumC5477Kw0.a(b10.f38052g2), 0));
        arrayList.add(new O9(NB.f42532g, EnumC5477Kw0.f41824b, c8103ka));
        arrayList.add(new C10106wa(b10.f37851E3));
        C8106kb.a aVar = C8106kb.a.Dup;
        arrayList.add(new C8106kb(aVar));
        arrayList.add(new A9(this.f50436a.b().b("Name is null")));
        arrayList.add(new C7437ga(183, b10.f37978W4.f37264b, false));
        arrayList.add(new C4965Cb());
        arrayList.add(c8103ka);
        arrayList.add(a10);
        this.f41521e.f52216a.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C5414Ju.this.a(arrayList, b10, a10, (Integer) obj, (F1) obj2);
            }
        });
        arrayList.add(new C10106wa(b10.f38205z3));
        arrayList.add(new C8106kb(aVar));
        arrayList.add(new A9(this.f50436a.b().b("No enum constant " + this.f41520d.j0().replace('$', '.') + ".")));
        arrayList.add(new C8938pa(EnumC5477Kw0.a(b10.f38052g2), 0));
        arrayList.add(new C7437ga(182, b10.f37887J4.f38242d, false));
        arrayList.add(new C7437ga(183, b10.f37985X4.f36588a, false));
        arrayList.add(new C4965Cb());
        return a(arrayList);
    }
}
