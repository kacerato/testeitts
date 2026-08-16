package com.android.tools.r8.internal;

public final class Y6 {

    public final XY f45928a;

    public final C9841ux f45929b;

    public final int f45930c;

    public Y6(XY xy, C9841ux c9841ux) {
        GJ.c(xy, "flags");
        this.f45928a = xy;
        this.f45929b = c9841ux;
        if (c9841ux.f52989b == 1 && c9841ux.f52990c == 1) {
            this.f45930c = 1 << c9841ux.f52988a;
            return;
        }
        throw new IllegalArgumentException(("BooleanFlagDelegate can work only with boolean flags (bitWidth = 1 and value = 1), but " + ((Object) c9841ux) + " was passed").toString());
    }

    public final boolean a(Object obj, XY xy) {
        GJ.c(xy, "property");
        C9841ux c9841ux = this.f45929b;
        return ((((Number) this.f45928a.b(obj)).intValue() >>> c9841ux.f52988a) & ((1 << c9841ux.f52989b) - 1)) == c9841ux.f52990c;
    }

    public final void a(Object obj, XY xy, boolean z10) {
        GJ.c(xy, "property");
        this.f45928a.a(Integer.valueOf(z10 ? ((Number) this.f45928a.b(obj)).intValue() | this.f45930c : ((Number) this.f45928a.b(obj)).intValue() & (~this.f45930c)), obj);
    }
}
