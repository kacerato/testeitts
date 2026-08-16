package com.android.tools.r8.internal;

import java.util.List;
import java.util.Map;

public final class C6701c60 extends AbstractC7034e60 {

    public static final boolean f46972i = true;

    public final C8415mP f46973d;

    public final WM f46974e;

    public final EnumC6868d60 f46975f;

    public final List f46976g;

    public final Map f46977h;

    public C6701c60(MN mn2, C8749oP c8749oP, C6748cP c6748cP, Map map, List list, EnumC6868d60 enumC6868d60) {
        super(mn2, c6748cP);
        if (!f46972i && enumC6868d60.equals(EnumC6868d60.f47280c)) {
            throw new AssertionError();
        }
        WM wm2 = c8749oP.f51239a;
        this.f46973d = wm2.f45373b.f45976a;
        this.f46974e = wm2;
        this.f46975f = enumC6868d60;
        this.f46977h = map;
        this.f46976g = list;
    }

    @Override
    public final String b() {
        return this.f46975f.f47284b;
    }

    @Override
    public final List c() {
        return this.f46976g;
    }

    @Override
    public final void c(StringBuilder sb2) {
        AbstractC5626Nk0.a(sb2, this.f46974e, AbstractC7034e60.a(this.f46973d));
        if (this.f46976g.isEmpty()) {
            EnumC6868d60 enumC6868d60 = this.f46975f;
            enumC6868d60.getClass();
            if (enumC6868d60 != EnumC6868d60.f47283f) {
                sb2.append(" { void finalize(); }");
            }
        }
    }

    @Override
    public final void b(StringBuilder sb2, PM pm2) {
        AbstractC5626Nk0.a((OO) this.f46977h.get(pm2), new C5568Mk0(sb2));
    }
}
