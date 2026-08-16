package com.android.tools.r8.internal;

public class C7312fo extends AbstractC7815ip implements InterfaceC4993Cm0 {
    public C7312fo(int i10, C5693Op c5693Op) {
        super(i10, c5693Op);
    }

    @Override
    public final void a(C6382aB c6382aB) {
        int i10 = this.f49065g;
        c6382aB.a(i10 == 0 ? AbstractC8999pu0.p() : AbstractC8999pu0.o(), this.f49064f, i10);
    }

    @Override
    public final String b(C9970vk0 c9970vk0) {
        short s10 = this.f49064f;
        return b("v" + ((int) s10) + ", " + C10656zq0.a(this.f49065g, 8) + " (" + this.f49065g + ")");
    }

    @Override
    public final String t() {
        return "Const";
    }

    @Override
    public final int v() {
        return 20;
    }

    @Override
    public final String z() {
        return "const";
    }

    public C7312fo(int i10, int i11) {
        super(i10, i11);
    }

    @Override
    public final int a() {
        return this.f49065g;
    }

    @Override
    public final String a(C9970vk0 c9970vk0) {
        short s10 = this.f49064f;
        return a("v" + ((int) s10) + ", " + C10656zq0.a(this.f49065g, 8) + "  # " + this.f49065g);
    }
}
