package bm;

import am.AbstractC3681e;

public abstract class i {

    public final int f33516a;

    public final int f33517b;

    public final int f33518c;

    public final int f33519d;

    public final int f33520e;

    public i(int i10, int i11, int i12, int i13, int i14) {
        this.f33516a = i10;
        this.f33517b = i11;
        this.f33518c = i12;
        this.f33519d = i13;
        this.f33520e = i14;
    }

    public abstract AbstractC3681e a();

    public int b() {
        return this.f33517b;
    }

    public int c() {
        return this.f33516a;
    }

    public int d() {
        return g();
    }

    public int e() {
        return i();
    }

    public int f() {
        return j() + this.f33519d;
    }

    public int g() {
        return ((this.f33517b * k()) + 7) / 8;
    }

    public int h() {
        return l() * 2;
    }

    public int i() {
        return ((this.f33517b * k()) + 7) / 8;
    }

    public int j() {
        return (l() * 2) + i();
    }

    public int k() {
        return this.f33516a - 1;
    }

    public int l() {
        return (k() + 4) / 5;
    }

    public int m() {
        return this.f33519d;
    }

    public int n() {
        return 1 << this.f33517b;
    }

    public abstract int o();

    public int p() {
        return (((this.f33516a - 1) * 30) + 7) / 8;
    }

    public int q() {
        return this.f33516a - 1;
    }

    public abstract int r();

    public int s() {
        return this.f33518c;
    }

    public int t() {
        return this.f33520e;
    }
}
