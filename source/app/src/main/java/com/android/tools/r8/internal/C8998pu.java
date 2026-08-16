package com.android.tools.r8.internal;

import java.util.ArrayList;

public final class C8998pu {

    public final XY f51656a;

    public final C10175wx f51657b;

    public final C8831ou f51658c;

    public final ArrayList f51659d;

    public C8998pu(XY xy, C10175wx c10175wx, C8831ou c8831ou, ArrayList arrayList) {
        GJ.c(c10175wx, "protoSet");
        GJ.c(c8831ou, "entries");
        this.f51656a = xy;
        this.f51657b = c10175wx;
        this.f51658c = c8831ou;
        this.f51659d = arrayList;
    }

    public final Enum a(Object obj, XY xy) {
        GJ.c(xy, "property");
        return (Enum) this.f51658c.get(((PI) this.f51657b.a(((Number) this.f51656a.b(obj)).intValue())).getNumber());
    }

    public final void a(Object obj, XY xy, Enum r62) {
        GJ.c(xy, "property");
        GJ.c(r62, "value");
        XY xy2 = this.f51656a;
        C9841ux c9841ux = (C9841ux) this.f51659d.get(r62.ordinal());
        int intValue = ((Number) this.f51656a.b(obj)).intValue();
        int i10 = (1 << c9841ux.f52989b) - 1;
        int i11 = c9841ux.f52988a;
        xy2.a(Integer.valueOf((intValue & (~(i10 << i11))) + (c9841ux.f52990c << i11)), obj);
    }
}
