package com.android.tools.r8.internal;

public final class C5203Gd {

    public static final C5203Gd f40533c = new C5203Gd(C5377Jd.f41434b, C5261Hd.f40801b);

    public static final boolean f40534d = true;

    public final C5377Jd f40535a;

    public final C5261Hd f40536b;

    public C5203Gd(C5377Jd c5377Jd, C5261Hd c5261Hd) {
        this.f40535a = c5377Jd;
        this.f40536b = c5261Hd;
    }

    public final C5203Gd a(C5203Gd c5203Gd) {
        if (a()) {
            return c5203Gd;
        }
        if (c5203Gd.a()) {
            return this;
        }
        C5377Jd a10 = this.f40535a.a(c5203Gd.f40535a);
        C5261Hd c5261Hd = this.f40536b;
        C5261Hd c5261Hd2 = c5203Gd.f40536b;
        c5261Hd.getClass();
        int i10 = QC.f43505c;
        IC ic2 = new IC();
        ic2.a((Iterable) c5261Hd.f40802a);
        ic2.a((Iterable) c5261Hd2.f40802a);
        return new C5203Gd(a10, new C5261Hd(ic2.a()));
    }

    public final boolean a() {
        if (!f40534d && this.f40536b.f40802a.isEmpty() && !this.f40535a.f41435a.isEmpty()) {
            throw new AssertionError();
        }
        return this.f40536b.f40802a.isEmpty();
    }
}
