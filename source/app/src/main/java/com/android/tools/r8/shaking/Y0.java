package com.android.tools.r8.shaking;

import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.C5417Jv0;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.Position;
import java.util.List;

public final class Y0 extends AbstractC11468v3 {

    public static final int f57124s = 0;

    public final X0 f57125r;

    public Y0(Origin origin, Position position, String str, AbstractC7552hC abstractC7552hC, S2 s22, S2 s23, boolean z10, EnumC11299l3 enumC11299l3, AbstractC11147c3 abstractC11147c3, AbstractC7552hC abstractC7552hC2, AbstractC11250i4 abstractC11250i4, boolean z11, List list, X0 x02) {
        super(origin, position, str, abstractC7552hC, s22, s23, z10, enumC11299l3, abstractC11147c3, abstractC7552hC2, abstractC11250i4, z11, list);
        this.f57125r = x02;
    }

    @Override
    public final String A() {
        int ordinal = this.f57125r.ordinal();
        if (ordinal == 0) {
            return "alwaysinline";
        }
        if (ordinal == 1) {
            return "neverinline";
        }
        if (ordinal == 2) {
            return "neverclassinlinemethod";
        }
        if (ordinal == 3) {
            return "neversinglecaller";
        }
        throw new C5417Jv0("Unknown inline type " + ((Object) this.f57125r));
    }
}
