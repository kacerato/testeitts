package com.android.tools.r8.internal;

public class C8646no extends AbstractC7815ip implements InterfaceC5131Ex0 {
    public C8646no(int i10, C5693Op c5693Op) {
        super(i10, c5693Op);
    }

    @Override
    public final long a() {
        return this.f49065g;
    }

    @Override
    public final String b(C9970vk0 c9970vk0) {
        short s10 = this.f49064f;
        return b("v" + ((int) s10) + ", " + C10656zq0.a(16, this.f49065g) + " (" + this.f49065g + ")");
    }

    @Override
    public final String t() {
        return "ConstWide32";
    }

    @Override
    public final int v() {
        return 23;
    }

    @Override
    public final String z() {
        return "const-wide/32";
    }

    public C8646no(int i10, int i11) {
        super(i10, i11);
    }

    @Override
    public final String a(C9970vk0 c9970vk0) {
        short s10 = this.f49064f;
        return a("v" + ((int) s10) + ", " + C10656zq0.a(16, this.f49065g) + "  # " + this.f49065g);
    }

    @Override
    public final void a(C6382aB c6382aB) {
        c6382aB.a(AbstractC8999pu0.q(), this.f49064f, this.f49065g);
    }
}
