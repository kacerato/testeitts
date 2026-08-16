package com.android.tools.r8.shaking;

import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.C5417Jv0;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.Position;
import java.util.List;

public final class C11413s extends AbstractC11468v3 {

    public static final int f57784s = 0;

    public final r f57785r;

    public C11413s(Origin origin, Position position, String str, AbstractC7552hC abstractC7552hC, S2 s22, S2 s23, boolean z10, EnumC11299l3 enumC11299l3, AbstractC11147c3 abstractC11147c3, AbstractC7552hC abstractC7552hC2, AbstractC11250i4 abstractC11250i4, boolean z11, List list, r rVar) {
        super(origin, position, str, abstractC7552hC, s22, s23, z10, enumC11299l3, abstractC11147c3, abstractC7552hC2, abstractC11250i4, z11, list);
        this.f57785r = rVar;
    }

    @Override
    public final String A() {
        int ordinal = this.f57785r.ordinal();
        if (ordinal == 0) {
            return "alwaysclassinline";
        }
        if (ordinal == 1) {
            return "neverclassinline";
        }
        throw new C5417Jv0("Unknown class inline type " + ((Object) this.f57785r));
    }

    @Override
    public final C11413s m() {
        return this;
    }
}
