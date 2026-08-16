package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;

public class C8479mo extends AbstractC6267Yo implements InterfaceC5131Ex0 {
    public C8479mo(int i10, C5693Op c5693Op) {
        super(i10, c5693Op);
    }

    @Override
    public final void a(C4798y c4798y, AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.dex.M m10, com.android.tools.r8.graph.H5 h52, RR rr) {
    }

    @Override
    public final String b(C9970vk0 c9970vk0) {
        short s10 = this.f46088f;
        return b("v" + ((int) s10) + ", " + C10656zq0.a(16, this.f46089g) + " (" + this.f46089g + ")");
    }

    @Override
    public final String t() {
        return "ConstWide16";
    }

    @Override
    public final int v() {
        return 22;
    }

    @Override
    public final String z() {
        return "const-wide/16";
    }

    public C8479mo(int i10, int i11) {
        super(i10, i11);
    }

    @Override
    public final long a() {
        return this.f46089g;
    }

    @Override
    public final String a(C9970vk0 c9970vk0) {
        short s10 = this.f46088f;
        return a("v" + ((int) s10) + ", " + C10656zq0.a(16, this.f46089g) + "L  # " + this.f46089g);
    }

    @Override
    public final void a(C6382aB c6382aB) {
        c6382aB.a(AbstractC8999pu0.q(), this.f46088f, this.f46089g);
    }
}
