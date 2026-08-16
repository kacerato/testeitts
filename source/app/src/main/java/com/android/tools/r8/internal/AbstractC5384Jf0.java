package com.android.tools.r8.internal;

import com.android.tools.r8.naming.MapVersion;
import java.util.function.Consumer;

public abstract class AbstractC5384Jf0 extends com.android.tools.r8.naming.mappinginformation.d {

    public static final MapVersion f41450a = MapVersion.MAP_VERSION_2_2;

    public static boolean a(MapVersion mapVersion) {
        return mapVersion.d(f41450a);
    }

    @Override
    public final AbstractC5384Jf0 i() {
        return this;
    }

    @Override
    public final boolean p() {
        return true;
    }

    @Override
    public final String r() {
        C7407gL c7407gL = new C7407gL();
        c7407gL.f48234b.put("id", new C7906jL("com.android.tools.r8.residualsignature"));
        c7407gL.f48234b.put("signature", new C7906jL(t()));
        return c7407gL.toString();
    }

    public abstract boolean s();

    public abstract String t();

    public static void a(MapVersion mapVersion, C7407gL c7407gL, Consumer consumer) {
        C5326If0 c5326If0;
        if (a(mapVersion)) {
            AbstractC6907dL abstractC6907dL = (AbstractC6907dL) c7407gL.f48234b.get("signature");
            if (abstractC6907dL != null) {
                String h10 = abstractC6907dL.h();
                if (h10.contains("(")) {
                    C5326If0 c5326If02 = C5326If0.f41161d;
                    String[] e10 = C4932Bl.e(h10);
                    String t10 = C4932Bl.t(h10);
                    boolean z10 = C4932Bl.z(t10) || C4932Bl.G(t10);
                    for (String str : e10) {
                        z10 &= C4932Bl.z(str);
                    }
                    if (z10) {
                        c5326If0 = new C5326If0(t10, e10);
                    } else {
                        c5326If0 = C5326If0.f41161d;
                    }
                    consumer.accept(c5326If0);
                    return;
                }
                C5268Hf0 c5268Hf0 = C5268Hf0.f40826c;
                if (C4932Bl.z(h10)) {
                    c5268Hf0 = new C5268Hf0(h10);
                }
                consumer.accept(c5268Hf0);
                return;
            }
            throw new C5325If("Expected 'signature' to be present: " + ((Object) c7407gL));
        }
    }
}
