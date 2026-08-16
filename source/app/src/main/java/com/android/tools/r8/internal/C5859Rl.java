package com.android.tools.r8.internal;

public final class C5859Rl extends AbstractC5801Ql {

    public final C6145Wk f43983b;

    public final String f43984c;

    public final C5743Pl f43985d;

    public C5859Rl(C6145Wk c6145Wk, C5743Pl c5743Pl, C5975Tl c5975Tl) {
        this.f43983b = c6145Wk;
        this.f43985d = c5743Pl;
        this.f43984c = c5975Tl.f44575c + '.' + c6145Wk.getName();
        c5743Pl.f43363h.a(this);
    }

    @Override
    public final C5743Pl a() {
        return this.f43985d;
    }

    @Override
    public final String b() {
        return this.f43984c;
    }

    @Override
    public final String c() {
        return this.f43983b.getName();
    }

    @Override
    public final InterfaceC7262fW d() {
        return this.f43983b;
    }
}
