package com.android.tools.r8.internal;

public class C8813oo extends AbstractC8649np implements InterfaceC5131Ex0 {
    public C8813oo(int i10, C5693Op c5693Op) {
        super(i10, c5693Op);
    }

    @Override
    public final long a() {
        return this.f51086g;
    }

    @Override
    public final String b(C9970vk0 c9970vk0) {
        short s10 = this.f51085f;
        return b("v" + ((int) s10) + ", " + C10656zq0.a(16, this.f51086g) + " (" + this.f51086g + ")");
    }

    @Override
    public final String t() {
        return "ConstWide";
    }

    @Override
    public final int v() {
        return 24;
    }

    @Override
    public final String z() {
        return "const-wide";
    }

    public C8813oo(int i10, long j10) {
        super(i10, j10);
    }

    @Override
    public final String a(C9970vk0 c9970vk0) {
        short s10 = this.f51085f;
        return a("v" + ((int) s10) + ", " + C10656zq0.a(16, this.f51086g) + "L  # " + this.f51086g);
    }

    @Override
    public final void a(C6382aB c6382aB) {
        c6382aB.a(AbstractC8999pu0.q(), this.f51085f, this.f51086g);
    }
}
