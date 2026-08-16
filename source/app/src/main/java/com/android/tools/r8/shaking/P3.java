package com.android.tools.r8.shaking;

import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.TextPosition;
import com.android.tools.r8.shaking.K3;
import com.android.tools.r8.shaking.R3;
import java.util.Collections;

public abstract class P3 {
    /* JADX WARN: Multi-variable type inference failed */
    public static K3 a(Origin origin, TextPosition textPosition, com.android.tools.r8.graph.M2 m22) {
        K3.a aVar = (K3.a) K3.E().a(O3.f56853b).a(EnumC11299l3.f57506c);
        aVar.f57291a = origin;
        aVar.f57292b = textPosition;
        K3.a aVar2 = (K3.a) aVar.a(AbstractC11147c3.a().a(false, AbstractC11250i4.a(m22)).a());
        R3.a aVar3 = new R3.a();
        aVar3.a(U3.f57021d);
        return ((K3.a) ((K3.a) aVar2.a(Collections.singletonList(aVar3.a()))).a("-keepkotlinmetadata")).a();
    }
}
