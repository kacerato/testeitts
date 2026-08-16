package com.android.tools.r8.internal;

import com.android.tools.r8.naming.MapVersion;
import java.util.function.Consumer;

public final class O40 extends com.android.tools.r8.naming.mappinginformation.d {

    public static final MapVersion f42774a = MapVersion.MAP_VERSION_2_0;

    @Override
    public final boolean a(com.android.tools.r8.naming.mappinginformation.e eVar) {
        return true;
    }

    @Override
    public final com.android.tools.r8.naming.mappinginformation.e b(com.android.tools.r8.naming.mappinginformation.e eVar) {
        return eVar;
    }

    @Override
    public final O40 d() {
        return this;
    }

    @Override
    public final String r() {
        C7407gL c7407gL = new C7407gL();
        c7407gL.f48234b.put("id", new C7906jL("com.android.tools.r8.outline"));
        return c7407gL.toString();
    }

    public static void a(MapVersion mapVersion, Consumer consumer) {
        if (mapVersion.d(f42774a)) {
            consumer.accept(new O40());
        }
    }
}
