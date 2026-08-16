package com.android.tools.r8.internal;

public class C7646ho extends AbstractC6210Xo implements InterfaceC4993Cm0 {
    public C7646ho(int i10, C5693Op c5693Op) {
        super(i10, c5693Op);
    }

    @Override
    public final void a(C6382aB c6382aB) {
        int i10 = this.f45823g << 16;
        c6382aB.a(i10 == 0 ? AbstractC8999pu0.p() : AbstractC8999pu0.o(), this.f45822f, i10);
    }

    @Override
    public final String b(C9970vk0 c9970vk0) {
        short s10 = this.f45822f;
        return b("v" + ((int) s10) + ", " + C10656zq0.a(this.f45823g << 16, 8) + " (" + (this.f45823g << 16) + ")");
    }

    @Override
    public final String t() {
        return "ConstHigh16";
    }

    @Override
    public final int v() {
        return 21;
    }

    @Override
    public final String z() {
        return "const/high16";
    }

    public C7646ho(int i10, int i11) {
        super(i10, i11);
    }

    @Override
    public final int a() {
        return this.f45823g << 16;
    }

    @Override
    public final String a(C9970vk0 c9970vk0) {
        short s10 = this.f45822f;
        return a("v" + ((int) s10) + ", " + C10656zq0.a(this.f45823g << 16, 8) + "  # " + (this.f45823g << 16));
    }
}
