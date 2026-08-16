package com.android.tools.r8.internal;

public class C9562tF extends AbstractC10230xF {

    public final C10063wF f52563g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C9562tF(C10063wF c10063wF) {
        super(c10063wF.f53460i);
        this.f52563g = c10063wF;
        this.f53725c = c10063wF.i();
    }

    @Override
    public final void d() {
        C8227lF b10 = this.f53725c.b();
        this.f53725c = b10;
        C10063wF c10063wF = this.f52563g;
        if (c10063wF.f53456e || b10 == null || c10063wF.f53460i.c(b10.f42116b, c10063wF.f53454c) < 0) {
            return;
        }
        this.f53725c = null;
    }

    @Override
    public final void e() {
        C8227lF d10 = this.f53724b.d();
        this.f53724b = d10;
        C10063wF c10063wF = this.f52563g;
        if (c10063wF.f53455d || d10 == null || c10063wF.f53460i.c(d10.f42116b, c10063wF.f53453b) >= 0) {
            return;
        }
        this.f53724b = null;
    }
}
