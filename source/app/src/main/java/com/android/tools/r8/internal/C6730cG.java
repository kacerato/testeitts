package com.android.tools.r8.internal;

public class C6730cG extends AbstractC7397gG {

    public final C7230fG f47011g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6730cG(C7230fG c7230fG) {
        super(c7230fG.f47925i);
        this.f47011g = c7230fG;
        this.f48222c = c7230fG.i();
    }

    @Override
    public final void d() {
        UF c10 = this.f48222c.c();
        this.f48222c = c10;
        C7230fG c7230fG = this.f47011g;
        if (c7230fG.f47921e || c10 == null || c7230fG.f47925i.c(c10.f42116b, c7230fG.f47919c) < 0) {
            return;
        }
        this.f48222c = null;
    }

    @Override
    public final void e() {
        UF e10 = this.f48221b.e();
        this.f48221b = e10;
        C7230fG c7230fG = this.f47011g;
        if (c7230fG.f47920d || e10 == null || c7230fG.f47925i.c(e10.f42116b, c7230fG.f47918b) >= 0) {
            return;
        }
        this.f48221b = null;
    }
}
