package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;

public class C7145eo extends AbstractC5923So implements InterfaceC4993Cm0 {
    public C7145eo(int i10, C5693Op c5693Op) {
        super(i10, c5693Op);
    }

    @Override
    public final boolean G() {
        return true;
    }

    @Override
    public final void a(C4798y c4798y, AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.dex.M m10, com.android.tools.r8.graph.H5 h52, RR rr) {
    }

    @Override
    public final String b(C9970vk0 c9970vk0) {
        byte b10 = this.f44313f;
        return b("v" + ((int) b10) + ", " + C10656zq0.a(a(), 1) + " (" + a() + ")");
    }

    @Override
    public final C7145eo g() {
        return this;
    }

    @Override
    public final String t() {
        return "Const4";
    }

    @Override
    public final int v() {
        return 18;
    }

    @Override
    public final String z() {
        return "const/4";
    }

    public C7145eo(int i10, int i11) {
        super(i10, i11);
    }

    @Override
    public int a() {
        return this.f44314g;
    }

    @Override
    public final String a(C9970vk0 c9970vk0) {
        byte b10 = this.f44313f;
        return a("v" + ((int) b10) + ", " + C10656zq0.a(a(), 2) + "  # " + a());
    }

    @Override
    public final void a(C6382aB c6382aB) {
        int a10 = a();
        c6382aB.a(a10 == 0 ? AbstractC8999pu0.p() : AbstractC8999pu0.o(), this.f44313f, a10);
    }
}
