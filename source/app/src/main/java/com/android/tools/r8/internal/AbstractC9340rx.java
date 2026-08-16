package com.android.tools.r8.internal;

import java.util.ArrayList;

public abstract class AbstractC9340rx {
    public static final Y6 a(XY xy) {
        C10008vx c10008vx = AbstractC10509yx.f54219b;
        GJ.b(c10008vx, "HAS_ANNOTATIONS");
        return new Y6(xy, new C9841ux(c10008vx, 1));
    }

    public static final C8998pu b(XY xy) {
        C10175wx c10175wx = AbstractC10509yx.f54221d;
        GJ.b(c10175wx, "MODALITY");
        C8831ou c8831ou = HX.f40780c;
        ArrayList arrayList = new ArrayList(AbstractC6785cf.a(c8831ou));
        C7182f0 c7182f0 = new C7182f0(c8831ou);
        while (c7182f0.hasNext()) {
            arrayList.add(((HX) c7182f0.next()).f40781b);
        }
        return new C8998pu(xy, c10175wx, c8831ou, arrayList);
    }

    public static final C8998pu c(XY xy) {
        C10175wx c10175wx = AbstractC10509yx.f54220c;
        GJ.b(c10175wx, "VISIBILITY");
        C8831ou c8831ou = EnumC4899Ax0.f38748c;
        ArrayList arrayList = new ArrayList(AbstractC6785cf.a(c8831ou));
        C7182f0 c7182f0 = new C7182f0(c8831ou);
        while (c7182f0.hasNext()) {
            arrayList.add(((EnumC4899Ax0) c7182f0.next()).f38749b);
        }
        return new C8998pu(xy, c10175wx, c8831ou, arrayList);
    }
}
