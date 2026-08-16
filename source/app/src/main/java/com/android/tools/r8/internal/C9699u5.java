package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.B60;
import java.util.ArrayList;
import java.util.Collection;

public final class C9699u5 extends AbstractC10200x5 {

    public final InterfaceC10033w5 f52778b;

    public C9699u5(com.android.tools.r8.graph.A2 a22, InterfaceC10033w5 interfaceC10033w5) {
        super(a22);
        this.f52778b = interfaceC10033w5;
    }

    @Override
    public final Collection a(B60 b60, W9 w92, C4798y c4798y, AbstractC7103ea abstractC7103ea, C5035Df c5035Df, QT qt) {
        Collection a10 = this.f52778b.a(w92.j(), c4798y.b(), qt);
        if (b60 == null) {
            return a10;
        }
        ArrayList arrayList = new ArrayList(a10.size() + 4);
        C8103ka c8103ka = new C8103ka();
        C8103ka c8103ka2 = new C8103ka();
        B60.b.a t10 = B60.b.t();
        t10.f38814c = b60;
        B60.b a11 = t10.a((com.android.tools.r8.graph.A2) this.f53683a).a(0).a();
        arrayList.add(c8103ka);
        arrayList.add(new C5541Ma(c8103ka, a11));
        arrayList.addAll(a10);
        arrayList.add(c8103ka2);
        arrayList.add(new C5541Ma(c8103ka2, b60));
        return arrayList;
    }
}
