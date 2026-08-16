package com.android.tools.r8.shaking;

import com.android.tools.r8.AbstractC4291c;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.C5417Jv0;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.Position;
import java.util.List;

public final class C11435t4 extends AbstractC11468v3 {

    public static final int f57859s = 0;

    public final int f57860r;

    public C11435t4(Origin origin, Position position, String str, AbstractC7552hC abstractC7552hC, S2 s22, S2 s23, boolean z10, EnumC11299l3 enumC11299l3, AbstractC11147c3 abstractC11147c3, AbstractC7552hC abstractC7552hC2, AbstractC11250i4 abstractC11250i4, boolean z11, List list, int i10) {
        super(origin, position, str, abstractC7552hC, s22, s23, z10, enumC11299l3, abstractC11147c3, abstractC7552hC2, abstractC11250i4, z11, list);
        this.f57860r = i10;
    }

    @Override
    public final String A() {
        int b10 = AbstractC4291c.b(this.f57860r);
        if (b10 == 0) {
            return "reprocessclassinitializer";
        }
        if (b10 == 1) {
            return "neverreprocessclassinitializer";
        }
        throw new C5417Jv0();
    }

    @Override
    public final C11435t4 r() {
        return this;
    }
}
