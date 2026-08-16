package com.android.tools.r8.internal;

public final class C5975Tl extends AbstractC5801Ql {

    public final C7969jl f44574b;

    public final String f44575c;

    public final C5743Pl f44576d;

    public final C5859Rl[] f44577e;

    public C5975Tl(C7969jl c7969jl, C5743Pl c5743Pl) {
        this.f44574b = c7969jl;
        this.f44575c = AbstractC6033Ul.a(c5743Pl, null, c7969jl.getName());
        this.f44576d = c5743Pl;
        this.f44577e = new C5859Rl[c7969jl.f49337d.size()];
        for (int i10 = 0; i10 < c7969jl.f49337d.size(); i10++) {
            this.f44577e[i10] = new C5859Rl((C6145Wk) c7969jl.f49337d.get(i10), c5743Pl, this);
        }
        c5743Pl.f43363h.a(this);
    }

    @Override
    public final C5743Pl a() {
        return this.f44576d;
    }

    @Override
    public final String b() {
        return this.f44575c;
    }

    @Override
    public final String c() {
        return this.f44574b.getName();
    }

    @Override
    public final InterfaceC7262fW d() {
        return this.f44574b;
    }
}
