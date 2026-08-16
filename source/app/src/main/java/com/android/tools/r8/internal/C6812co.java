package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;

public class C6812co extends AbstractC6267Yo implements InterfaceC4993Cm0 {
    public C6812co(int i10, C5693Op c5693Op) {
        super(i10, c5693Op);
    }

    @Override
    public final void a(C4798y c4798y, AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.dex.M m10, com.android.tools.r8.graph.H5 h52, RR rr) {
    }

    @Override
    public final String b(C9970vk0 c9970vk0) {
        short s10 = this.f46088f;
        return b("v" + ((int) s10) + ", " + C10656zq0.a((int) this.f46089g, 4) + " (" + ((int) this.f46089g) + ")");
    }

    @Override
    public final String t() {
        return "Const16";
    }

    @Override
    public final int v() {
        return 19;
    }

    @Override
    public final String z() {
        return "const/16";
    }

    public C6812co(int i10, int i11) {
        super(i10, i11);
    }

    @Override
    public final void a(C6382aB c6382aB) {
        short s10 = this.f46089g;
        c6382aB.a(s10 == 0 ? AbstractC8999pu0.p() : AbstractC8999pu0.o(), this.f46088f, s10);
    }

    @Override
    public final int a() {
        return this.f46089g;
    }
}
