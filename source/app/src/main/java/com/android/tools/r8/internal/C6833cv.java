package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;

public final class C6833cv extends AbstractC8489mr0 {

    public final C4554l1 f47201c;

    public C6833cv(C4798y c4798y, C4554l1 c4554l1, com.android.tools.r8.graph.M2 m22) {
        super(c4798y, m22);
        this.f47201c = c4554l1;
    }

    @Override
    public final com.android.tools.r8.graph.G b() {
        com.android.tools.r8.graph.M2 s02 = this.f47201c.s0();
        InterfaceC8008jy[] interfaceC8008jyArr = {InterfaceC8008jy.a(s02), InterfaceC8008jy.a(this.f50436a.b().f38068i2)};
        C8103ka c8103ka = new C8103ka();
        C8103ka c8103ka2 = new C8103ka();
        ArrayList arrayList = new ArrayList();
        EnumC5477Kw0 enumC5477Kw0 = EnumC5477Kw0.f41824b;
        arrayList.add(new C8938pa(enumC5477Kw0, 0));
        arrayList.add(new T9(this.f47201c));
        arrayList.add(new C8938pa(enumC5477Kw0, 1));
        arrayList.add(new V9(s02));
        NB nb2 = NB.f42527b;
        EnumC5477Kw0 enumC5477Kw02 = EnumC5477Kw0.f41825c;
        arrayList.add(new O9(nb2, enumC5477Kw02, c8103ka));
        arrayList.add(new C8938pa(enumC5477Kw0, 1));
        arrayList.add(new C7710i9(s02));
        arrayList.add(new T9(this.f47201c));
        arrayList.add(new M9(c8103ka2));
        arrayList.add(c8103ka);
        arrayList.add(new G9(new C10564zF(new int[]{0, 1}, interfaceC8008jyArr), new ArrayDeque(Arrays.asList(InterfaceC8008jy.a(this.f47201c.f37449i)))));
        arrayList.add(new C8938pa(enumC5477Kw0, 1));
        arrayList.add(c8103ka2);
        arrayList.add(new G9(new C10564zF(new int[]{0, 1}, interfaceC8008jyArr), new ArrayDeque(Arrays.asList(InterfaceC8008jy.a(this.f47201c.f37449i), InterfaceC8008jy.a(this.f50436a.b().f38068i2)))));
        arrayList.add(new C7437ga(182, this.f50436a.b().f37859F4.f38225c, false));
        arrayList.add(new C6440ab(enumC5477Kw02));
        return a(arrayList);
    }
}
