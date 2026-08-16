package com.android.tools.r8.internal;

public final class C5917Sl extends AbstractC5801Ql {

    public final int f44302b;

    public final C6970dl f44303c;

    public final String f44304d;

    public final C5743Pl f44305e;

    public final C4990Cl f44306f;

    public int f44307g = 0;

    public C5685Ol[] f44308h;

    public C5917Sl(C6970dl c6970dl, C5743Pl c5743Pl, C4990Cl c4990Cl, int i10) {
        this.f44303c = c6970dl;
        this.f44304d = AbstractC6033Ul.a(c5743Pl, c4990Cl, c6970dl.getName());
        this.f44305e = c5743Pl;
        this.f44302b = i10;
        this.f44306f = c4990Cl;
    }

    @Override
    public final C5743Pl a() {
        return this.f44305e;
    }

    @Override
    public final String b() {
        return this.f44304d;
    }

    @Override
    public final String c() {
        return this.f44303c.getName();
    }

    @Override
    public final InterfaceC7262fW d() {
        return this.f44303c;
    }
}
