package com.android.tools.r8.shaking;

import com.android.tools.r8.internal.C8570nJ;

public class I1 extends F1 {

    public static final I1 f56548C = (I1) new G1().i().a();

    public static final I1 f56549D = (I1) new G1().m().a();

    public static final boolean f56550E = true;

    public final boolean f56551A;

    public final AbstractC11247i1 f56552B;

    public final boolean f56553l;

    public final boolean f56554m;

    public final boolean f56555n;

    public final boolean f56556o;

    public final boolean f56557p;

    public final boolean f56558q;

    public final boolean f56559r;

    public final boolean f56560s;

    public final boolean f56561t;

    public final boolean f56562u;

    public final boolean f56563v;

    public final boolean f56564w;

    public final boolean f56565x;

    public final boolean f56566y;

    public final boolean f56567z;

    public I1(G1 g12) {
        super(g12);
        this.f56553l = g12.f56479l;
        this.f56554m = g12.f56480m;
        this.f56555n = g12.f56481n;
        this.f56556o = g12.f56482o;
        this.f56557p = g12.f56483p;
        this.f56558q = g12.f56484q;
        this.f56559r = g12.f56485r;
        this.f56560s = g12.f56486s;
        this.f56561t = g12.f56487t;
        this.f56562u = g12.f56488u;
        this.f56563v = g12.f56489v;
        this.f56564w = g12.f56490w;
        this.f56565x = g12.f56491x;
        this.f56566y = g12.f56492y;
        this.f56567z = g12.f56493z;
        this.f56551A = g12.f56477A;
        this.f56552B = g12.f56478B.a();
    }

    public static H1 e() {
        return f56549D.d();
    }

    @Override
    public final I1 a() {
        return this;
    }

    @Override
    public final int b() {
        if (!f56550E && !this.f56552B.b()) {
            throw new AssertionError();
        }
        int a10 = AbstractC11432t1.a(25, this.f56551A) + AbstractC11432t1.a(24, this.f56567z) + AbstractC11432t1.a(23, this.f56566y) + AbstractC11432t1.a(22, this.f56565x) + AbstractC11432t1.a(21, this.f56564w) + AbstractC11432t1.a(20, this.f56563v) + AbstractC11432t1.a(19, this.f56562u) + AbstractC11432t1.a(18, this.f56561t) + AbstractC11432t1.a(17, this.f56560s) + AbstractC11432t1.a(16, this.f56559r) + AbstractC11432t1.a(15, this.f56558q) + AbstractC11432t1.a(14, this.f56557p) + AbstractC11432t1.a(13, this.f56556o) + AbstractC11432t1.a(12, this.f56555n) + AbstractC11432t1.a(11, this.f56554m) + AbstractC11432t1.a(10, this.f56553l) + super.b();
        AbstractC11247i1 abstractC11247i1 = this.f56552B;
        abstractC11247i1.getClass();
        return AbstractC11432t1.a(26, abstractC11247i1 instanceof C11230h1) + a10;
    }

    public G1 c() {
        return new G1(this);
    }

    public H1 d() {
        if (f56550E || !equals(f56548C)) {
            return new H1(this);
        }
        throw new AssertionError();
    }

    public final boolean g(Q0 q02) {
        return c(q02) && this.f56555n;
    }

    public final boolean h(Q0 q02) {
        return ((C8570nJ) q02).F().f50824J ? !c(q02) : this.f56556o;
    }

    public final boolean i(Q0 q02) {
        return g(q02) && c(q02) && e(q02) && !this.f57837g && this.f56560s;
    }

    @Override
    public final boolean a(AbstractC11432t1 abstractC11432t1) {
        I1 i12 = (I1) abstractC11432t1;
        if (f56550E || this.f56552B.b()) {
            return a((F1) i12) && this.f56553l == i12.f56553l && this.f56554m == i12.f56554m && this.f56555n == i12.f56555n && this.f56556o == i12.f56556o && this.f56557p == i12.f56557p && this.f56558q == i12.f56558q && this.f56559r == i12.f56559r && this.f56560s == i12.f56560s && this.f56561t == i12.f56561t && this.f56562u == i12.f56562u && this.f56563v == i12.f56563v && this.f56564w == i12.f56564w && this.f56565x == i12.f56565x && this.f56566y == i12.f56566y && this.f56567z == i12.f56567z && this.f56551A == i12.f56551A && this.f56552B == i12.f56552B;
        }
        throw new AssertionError();
    }

    public final boolean a(com.android.tools.r8.graph.H5 h52) {
        return !h52.A().w() && this.f56563v;
    }
}
