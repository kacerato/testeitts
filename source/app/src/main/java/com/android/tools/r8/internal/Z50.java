package com.android.tools.r8.internal;

import java.util.List;
import java.util.Map;

public final class Z50 extends AbstractC7034e60 {

    public final WM f46161d;

    public final WM f46162e;

    public final Map f46163f;

    public final List f46164g;

    public final List f46165h;

    public final EnumC6868d60 f46166i;

    public Z50(MN mn2, C6748cP c6748cP, C8749oP c8749oP, C8749oP c8749oP2, Map map, List list, List list2, EnumC6868d60 enumC6868d60) {
        super(mn2, c6748cP);
        this.f46161d = c8749oP.f51239a;
        this.f46162e = c8749oP2.f51239a;
        this.f46163f = map;
        this.f46164g = list;
        this.f46165h = list2;
        this.f46166i = enumC6868d60;
    }

    public final void a(StringBuilder sb2, C8415mP c8415mP) {
        AbstractC5626Nk0.a(c8415mP, new C5568Mk0(sb2));
    }

    @Override
    public final String b() {
        return this.f46166i.f47284b;
    }

    @Override
    public final void c(StringBuilder sb2) {
        AbstractC5626Nk0.a(sb2, this.f46162e, new P31(this));
        if (this.f46165h.isEmpty()) {
            EnumC6868d60 enumC6868d60 = this.f46166i;
            enumC6868d60.getClass();
            if (enumC6868d60 != EnumC6868d60.f47283f) {
                sb2.append(" { void finalize(); }");
            }
        }
    }

    @Override
    public final List a() {
        return this.f46164g;
    }

    @Override
    public final void b(StringBuilder sb2, PM pm2) {
        AbstractC5626Nk0.a((OO) this.f46163f.get(pm2), new C5568Mk0(sb2));
    }

    @Override
    public final void a(StringBuilder sb2) {
        AbstractC5626Nk0.a(sb2, this.f46161d, new P31(this));
    }

    @Override
    public final void a(StringBuilder sb2, PM pm2) {
        AbstractC5626Nk0.a((OO) this.f46163f.get(pm2), new C5568Mk0(sb2));
    }

    @Override
    public final List c() {
        return this.f46165h;
    }
}
