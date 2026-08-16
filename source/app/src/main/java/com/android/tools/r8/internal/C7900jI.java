package com.android.tools.r8.internal;

public final class C7900jI extends C7735iI {

    public final C8067kI f49205g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7900jI(C8067kI c8067kI) {
        super(c8067kI.f49573f);
        this.f49205g = c8067kI;
        this.f48910c = c8067kI.a();
    }

    @Override
    public final void a() {
        C7568hI b10 = this.f48910c.b();
        this.f48910c = b10;
        C8067kI c8067kI = this.f49205g;
        if (c8067kI.f49572e || b10 == null || c8067kI.f49573f.e(b10.f48522b, c8067kI.f49570c) < 0) {
            return;
        }
        this.f48910c = null;
    }

    @Override
    public final void b() {
        C7568hI d10 = this.f48909b.d();
        this.f48909b = d10;
        C8067kI c8067kI = this.f49205g;
        if (c8067kI.f49571d || d10 == null || c8067kI.f49573f.e(d10.f48522b, c8067kI.f49569b) >= 0) {
            return;
        }
        this.f48909b = null;
    }
}
