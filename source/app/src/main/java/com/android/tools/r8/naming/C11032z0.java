package com.android.tools.r8.naming;

import com.android.tools.r8.Version;
import com.android.tools.r8.internal.C6170Ww0;
import java.util.ArrayList;

public final class C11032z0 {

    public final String f56124a;

    public final boolean f56125b;

    public final com.android.tools.r8.internal.C2 f56126c;

    public final MapVersion f56127d;

    public final I0 f56128e;

    public C11032z0(String str, boolean z10, com.android.tools.r8.internal.C2 c22, MapVersion mapVersion, I0 i02) {
        this.f56124a = str;
        this.f56125b = z10;
        this.f56126c = c22;
        this.f56127d = mapVersion;
        this.f56128e = i02;
    }

    public final ArrayList a() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("# compiler: " + this.f56124a);
        arrayList.add("# compiler_version: 8.10.21");
        if (this.f56125b) {
            arrayList.add("# min_api: " + this.f56126c.d());
        }
        if (Version.isDevelopmentVersion()) {
            arrayList.add("# compiler_hash: " + C6170Ww0.f45582c.b());
        }
        arrayList.add("# common_typos_disable");
        if (this.f56127d.c(MapVersion.MAP_VERSION_NONE)) {
            arrayList.add("# " + this.f56127d.toMapVersionMappingInformation().r());
        }
        arrayList.add("# pg_map_id: " + this.f56128e.f55651a);
        arrayList.add("# pg_map_hash: SHA-256 " + this.f56128e.f55652b);
        return arrayList;
    }
}
