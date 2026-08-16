package com.android.tools.r8.internal;

public final class C5035Df extends AbstractC5151Ff {

    public static final boolean f39581d = true;

    public final com.android.tools.r8.graph.H5 f39582c;

    public C5035Df(C5093Ef c5093Ef, com.android.tools.r8.graph.H5 h52) {
        super(c5093Ef);
        this.f39582c = h52;
    }

    public final C5209Gf a() {
        com.android.tools.r8.graph.H2 holder = this.f39582c.getHolder();
        int i10 = this.f40267b;
        this.f40267b = i10 + 1;
        C5209Gf c5209Gf = new C5209Gf(this, holder, i10);
        if (!f39581d) {
            this.f40266a.a(c5209Gf);
        }
        return c5209Gf;
    }

    @Override
    public final StringBuilder b(StringBuilder sb2) {
        C5093Ef c5093Ef = this.f40266a;
        c5093Ef.getClass();
        sb2.append('$');
        sb2.append(c5093Ef.f39966b);
        InterfaceC8546nA b10 = InterfaceC8546nA.b();
        this.f39582c.getReference().a(b10);
        sb2.append('$');
        sb2.append(b10.a());
        return sb2;
    }

    @Override
    public final StringBuilder a(StringBuilder sb2) {
        sb2.append(this.f39582c.getHolder().getType().V0());
        C5093Ef c5093Ef = this.f40266a;
        c5093Ef.getClass();
        sb2.append('$');
        sb2.append(c5093Ef.f39966b);
        InterfaceC8546nA b10 = InterfaceC8546nA.b();
        this.f39582c.getReference().a(b10);
        sb2.append('$');
        sb2.append(b10.a());
        return sb2;
    }
}
