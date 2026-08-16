package com.android.tools.r8.dex;

import com.android.tools.r8.graph.L2;
import com.android.tools.r8.internal.C7;
import com.android.tools.r8.naming.I0;
import java.util.Map;

public final class C4305e extends AbstractC4309i {

    public final Map f35831c;

    public final C7 f35832d;

    public final C4311k f35833e;

    public C4305e(C4311k c4311k, Map map, C7 c72) {
        this.f35833e = c4311k;
        this.f35831c = map;
        this.f35832d = c72;
    }

    @Override
    public final L2 a() {
        return this.f35833e.a(this.f35831c.o(), (I0) this.f35832d.a());
    }
}
