package com.android.tools.r8.internal;

import com.android.tools.r8.naming.MapVersion;
import java.util.function.Consumer;

public final class C5441Kf extends com.android.tools.r8.naming.mappinginformation.d {

    public static final C5441Kf f41729a = new C5441Kf();

    public static final MapVersion f41730b = MapVersion.MAP_VERSION_1_0;

    public static void a(MapVersion mapVersion, Consumer consumer) {
        if (mapVersion.d(f41730b)) {
            consumer.accept(f41729a);
        }
    }

    @Override
    public final com.android.tools.r8.naming.mappinginformation.e b(com.android.tools.r8.naming.mappinginformation.e eVar) {
        return eVar;
    }

    @Override
    public final boolean l() {
        return true;
    }

    @Override
    public final String r() {
        C7407gL c7407gL = new C7407gL();
        c7407gL.f48234b.put("id", new C7906jL("com.android.tools.r8.synthesized"));
        return c7407gL.toString();
    }

    @Override
    public final boolean a(com.android.tools.r8.naming.mappinginformation.e eVar) {
        return !eVar.l();
    }
}
