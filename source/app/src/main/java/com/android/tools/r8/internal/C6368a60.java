package com.android.tools.r8.internal;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.BiConsumer;

public final class C6368a60 extends AbstractC7034e60 {

    public static final boolean f46414m = true;

    public final C8415mP f46415d;

    public final WM f46416e;

    public final Map f46417f;

    public final List f46418g;

    public final List f46419h;

    public final EnumC6868d60 f46420i;

    public int f46421j;

    public String f46422k;

    public final HashMap f46423l;

    public C6368a60(List list, MN mn2, C6748cP c6748cP, C8749oP c8749oP, Map map, List list2, EnumC6868d60 enumC6868d60) {
        super(mn2, c6748cP);
        this.f46421j = 1;
        this.f46422k = null;
        this.f46423l = new HashMap();
        WM wm2 = c8749oP.f51239a;
        this.f46415d = wm2.f45373b.f45976a;
        this.f46416e = wm2;
        this.f46417f = map;
        this.f46418g = list;
        this.f46419h = list2;
        this.f46420i = enumC6868d60;
    }

    @Override
    public final List a() {
        return this.f46418g;
    }

    @Override
    public final String b() {
        return this.f46420i.f47284b;
    }

    @Override
    public final List c() {
        return this.f46419h;
    }

    @Override
    public final boolean d() {
        return !(this.f46418g.isEmpty() && this.f46420i == EnumC6868d60.f47280c);
    }

    public final int e() {
        int i10 = this.f46421j;
        this.f46421j = i10 + 1;
        return i10;
    }

    @Override
    public final void a(final StringBuilder sb2) {
        AbstractC5626Nk0.a(sb2, this.f46416e, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C6368a60.this.a(sb2, (StringBuilder) obj, (C8415mP) obj2);
            }
        });
    }

    @Override
    public final void c(final StringBuilder sb2) {
        AbstractC5626Nk0.a(sb2, this.f46416e, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C6368a60.this.b(sb2, (StringBuilder) obj, (C8415mP) obj2);
            }
        });
        if (this.f46419h.isEmpty()) {
            EnumC6868d60 enumC6868d60 = this.f46420i;
            enumC6868d60.getClass();
            if (enumC6868d60 != EnumC6868d60.f47283f) {
                sb2.append(" { void finalize(); }");
            }
        }
    }

    public final void a(StringBuilder sb2, StringBuilder sb3, C8415mP c8415mP) {
        C5453Kk0 c5453Kk0 = new C5453Kk0(sb2, new C41(this));
        AbstractC5626Nk0.a(this.f46415d, c5453Kk0);
        this.f46422k = c5453Kk0.f41751d.toString();
    }

    public final void b(StringBuilder sb2, StringBuilder sb3, C8415mP c8415mP) {
        boolean z10 = f46414m;
        if (!z10 && !c8415mP.equals(this.f46415d)) {
            throw new AssertionError();
        }
        if (d()) {
            sb3.append(this.f46422k);
        } else {
            if (!z10 && this.f46422k != null) {
                throw new AssertionError();
            }
            AbstractC5626Nk0.a(this.f46415d, new C5568Mk0(sb2));
        }
    }

    @Override
    public final void a(StringBuilder sb2, PM pm2) {
        OO oo = (OO) this.f46417f.get(pm2);
        C5453Kk0 c5453Kk0 = new C5453Kk0(sb2, new C41(this));
        AbstractC5626Nk0.a(oo, c5453Kk0);
        this.f46423l.put(pm2, c5453Kk0.f41751d.toString());
    }

    @Override
    public final void b(StringBuilder sb2, PM pm2) {
        String str;
        if (d() && (str = (String) this.f46423l.get(pm2)) != null) {
            sb2.append(str);
        } else {
            AbstractC5626Nk0.a((OO) this.f46417f.get(pm2), new C5568Mk0(sb2));
        }
    }
}
