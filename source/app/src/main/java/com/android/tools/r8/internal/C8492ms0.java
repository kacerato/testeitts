package com.android.tools.r8.internal;

public final class C8492ms0 extends C8659ns0 {

    public final C8659ns0 f50443h;

    public final C8570nJ f50444i;

    public C8492ms0(C8570nJ c8570nJ, C8659ns0 c8659ns0) {
        super("<cancel>", false);
        this.f50443h = c8659ns0;
        this.f50444i = c8570nJ;
    }

    @Override
    public final C8325ls0 a(int i10, String str) {
        return this.f50443h.a(i10, str);
    }

    @Override
    public final C8659ns0 b(String str) {
        C8570nJ c8570nJ = this.f50444i;
        if (c8570nJ.f50668c != null) {
            if (!c8570nJ.f50664b.get()) {
                if (c8570nJ.f50668c.cancel()) {
                    c8570nJ.f50664b.set(true);
                }
            }
            throw new I8();
        }
        if (!C8570nJ.f50581h2 && c8570nJ.f50664b.get()) {
            throw new AssertionError();
        }
        this.f50443h.b(str);
        return this;
    }

    @Override
    public final C8659ns0 d() {
        this.f50443h.d();
        return this;
    }

    @Override
    public final void e() {
        this.f50443h.e();
    }

    @Override
    public final void a(String str, InterfaceC5930Sr0 interfaceC5930Sr0) {
        this.f50443h.a(str, interfaceC5930Sr0);
    }

    @Override
    public final Object a(String str, InterfaceC7158es0 interfaceC7158es0) {
        return this.f50443h.a(str, interfaceC7158es0);
    }
}
