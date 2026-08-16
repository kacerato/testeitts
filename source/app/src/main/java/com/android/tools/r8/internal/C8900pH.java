package com.android.tools.r8.internal;

public class C8900pH extends AbstractC9567tH {

    public final C9400sH f51486g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8900pH(C9400sH c9400sH) {
        super(c9400sH.f52332i);
        this.f51486g = c9400sH;
        this.f52572c = c9400sH.i();
    }

    @Override
    public final void d() {
        C7566hH c10 = this.f52572c.c();
        this.f52572c = c10;
        C9400sH c9400sH = this.f51486g;
        if (c9400sH.f52328e || c10 == null || c9400sH.f52332i.c(c10.f44050b, c9400sH.f52326c) < 0) {
            return;
        }
        this.f52572c = null;
    }

    @Override
    public final void e() {
        C7566hH e10 = this.f52571b.e();
        this.f52571b = e10;
        C9400sH c9400sH = this.f51486g;
        if (c9400sH.f52327d || e10 == null || c9400sH.f52332i.c(e10.f44050b, c9400sH.f52325b) >= 0) {
            return;
        }
        this.f52571b = null;
    }
}
