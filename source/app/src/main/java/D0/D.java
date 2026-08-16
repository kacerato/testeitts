package D0;

import B0.C2318c;

public final class D extends V {

    public final C2318c f4550b;

    public final F f4551c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public D(F f10, com.google.android.gms.common.api.internal.r rVar, C2318c c2318c) {
        super(rVar);
        this.f4551c = f10;
        this.f4550b = c2318c;
    }

    @Override
    @J2.a("lock")
    public final void a() {
        this.f4551c.f4555d.l(this.f4550b);
    }
}
