package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.C8106kb;
import java.util.ArrayList;

public final class C5814Qr0 extends AbstractC8489mr0 {

    public final com.android.tools.r8.graph.M2 f43741c;

    public final B60 f43742d;

    public C5814Qr0(C4798y c4798y, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23, B60 b60) {
        super(c4798y, m22);
        this.f43741c = m23;
        this.f43742d = b60;
    }

    @Override
    public final com.android.tools.r8.graph.G b() {
        ArrayList arrayList = new ArrayList();
        if (this.f43742d != null) {
            C8103ka c8103ka = new C8103ka();
            arrayList.add(c8103ka);
            arrayList.add(new C5541Ma(c8103ka, this.f43742d));
        }
        arrayList.add(new C10106wa(this.f43741c));
        arrayList.add(new C8106kb(C8106kb.a.Dup));
        C4724u1 b10 = this.f50436a.b();
        arrayList.add(new C7437ga(183, b10.a(this.f43741c, b10.a(b10.f37905M1, new com.android.tools.r8.graph.M2[0]), b10.f38067i1), false));
        arrayList.add(new C4965Cb());
        return a(arrayList);
    }
}
