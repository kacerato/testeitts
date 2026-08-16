package com.android.tools.r8.kotlin;

import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.InterfaceC4403d1;
import com.android.tools.r8.internal.AL;
import com.android.tools.r8.internal.C9418sQ;
import com.android.tools.r8.internal.CL;
import com.android.tools.r8.internal.GJ;
import com.android.tools.r8.internal.ML;
import com.android.tools.r8.shaking.InterfaceC11195f0;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Objects;
import java.util.function.Consumer;

public final class C10782g0 implements InterfaceC11195f0 {

    public final String f55314a;

    public final C f55315b;

    public final P f55316c;

    public final X f55317d;

    public C10782g0(String str, C c10, P p10, X x10) {
        this.f55314a = str;
        this.f55315b = c10;
        this.f55316c = p10;
        this.f55317d = x10;
    }

    public static C10782g0 a(C9418sQ c9418sQ, com.android.tools.r8.graph.H2 h22, C4798y c4798y, Consumer consumer) {
        HashMap hashMap = new HashMap();
        for (C4460g1 c4460g1 : h22.I0()) {
            C4554l1 reference = c4460g1.getReference();
            ML ml2 = AbstractC10752b0.f55255a;
            hashMap.put(new CL(reference.f38298g.toString(), reference.f37449i.V0()).toString(), c4460g1);
        }
        HashMap hashMap2 = new HashMap();
        for (C4516j1 c4516j1 : h22.z1()) {
            hashMap2.put(AbstractC10752b0.a(c4516j1.getReference()).toString(), c4516j1);
        }
        X x10 = new X(c4798y);
        GJ.c(c9418sQ, "<this>");
        return new C10782g0(AL.a(c9418sQ).f45371b, C.a(c9418sQ, hashMap2, hashMap, c4798y.b(), c4798y.E().f50691j, consumer, x10), P.a(AL.a(c9418sQ).f45370a, c4798y.b(), c4798y.E().f50691j), x10);
    }

    public final boolean a(C9418sQ c9418sQ, com.android.tools.r8.graph.H2 h22, C4798y c4798y) {
        X x10 = new X(c4798y);
        C c10 = this.f55315b;
        ArrayList arrayList = c9418sQ.f52354a;
        Objects.requireNonNull(arrayList);
        S3 s32 = new S3(arrayList);
        ArrayList arrayList2 = c9418sQ.f52355b;
        Objects.requireNonNull(arrayList2);
        T3 t32 = new T3(arrayList2);
        ArrayList arrayList3 = c9418sQ.f52356c;
        Objects.requireNonNull(arrayList3);
        boolean a10 = c10.a(s32, t32, new U3(arrayList3), h22, c4798y, x10);
        P p10 = this.f55316c;
        ArrayList arrayList4 = AL.a(c9418sQ).f45370a;
        Objects.requireNonNull(arrayList4);
        boolean b10 = a10 | p10.b(new T3(arrayList4), c4798y);
        AL.a(c9418sQ).f45371b = this.f55314a;
        return b10 || !this.f55317d.a(x10, c4798y);
    }

    @Override
    public final void a(InterfaceC4403d1 interfaceC4403d1) {
        this.f55315b.a(interfaceC4403d1);
        this.f55316c.a(interfaceC4403d1);
    }
}
