package com.android.tools.r8.internal;

public class C8980po extends AbstractC6210Xo implements InterfaceC5131Ex0 {
    public C8980po(int i10, C5693Op c5693Op) {
        super(i10, c5693Op);
    }

    @Override
    public final long a() {
        return this.f45823g << 48;
    }

    @Override
    public final String b(C9970vk0 c9970vk0) {
        short s10 = this.f45822f;
        return b("v" + ((int) s10) + ", " + C10656zq0.a(16, this.f45823g << 48) + " (" + (this.f45823g << 48) + ")");
    }

    @Override
    public final String t() {
        return "ConstWideHigh16";
    }

    @Override
    public final int v() {
        return 25;
    }

    @Override
    public final String z() {
        return "const-wide/high16";
    }

    public C8980po(int i10, int i11) {
        super(i10, i11);
    }

    @Override
    public final String a(C9970vk0 c9970vk0) {
        short s10 = this.f45822f;
        return a("v" + ((int) s10) + ", " + C10656zq0.a(16, this.f45823g << 48) + "L  # " + (this.f45823g << 48));
    }

    @Override
    public final void a(C6382aB c6382aB) {
        c6382aB.a(AbstractC8999pu0.q(), this.f45822f, this.f45823g << 48);
    }
}
