package com.android.tools.r8.naming.mappinginformation;

import com.android.tools.r8.internal.AbstractC6907dL;
import com.android.tools.r8.internal.C7407gL;
import com.android.tools.r8.internal.C7906jL;
import com.android.tools.r8.naming.MapVersion;
import java.util.function.Consumer;

public class b extends e {

    public static final boolean f56010c = true;

    public final MapVersion f56011a;

    public final String f56012b;

    public b(MapVersion mapVersion, String str) {
        this.f56011a = mapVersion;
        this.f56012b = str;
    }

    @Override
    public final boolean a(e eVar) {
        return true;
    }

    @Override
    public final b b() {
        return this;
    }

    @Override
    public final String r() {
        C7407gL c7407gL = new C7407gL();
        c7407gL.f48234b.put("id", new C7906jL("com.android.tools.r8.mapping"));
        c7407gL.f48234b.put("version", new C7906jL(this.f56011a.getName()));
        return c7407gL.toString();
    }

    public MapVersion s() {
        return this.f56011a;
    }

    public static void a(C7407gL c7407gL, int i10, Consumer consumer) {
        String h10 = ((AbstractC6907dL) c7407gL.f48234b.get("version")).h();
        if (h10 == null) {
            MappingInformationDiagnostics.a(i10, "version", "com.android.tools.r8.mapping");
            return;
        }
        MapVersion fromName = MapVersion.fromName(h10);
        if (fromName == null) {
            fromName = MapVersion.MAP_VERSION_UNKNOWN;
        }
        consumer.accept(new b(fromName, h10));
    }

    @Override
    public final e b(e eVar) {
        if (!f56010c) {
            eVar.getClass();
            if (!(eVar instanceof b)) {
                throw new AssertionError();
            }
        }
        return this.f56011a.e(eVar.b().s()) ? eVar : this;
    }
}
