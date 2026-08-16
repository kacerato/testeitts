package D0;

import B0.C2318c;
import G0.AbstractC2564f;

public final class E extends V {

    public final AbstractC2564f.c f4553b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public E(F f10, com.google.android.gms.common.api.internal.r rVar, AbstractC2564f.c cVar) {
        super(rVar);
        this.f4553b = cVar;
    }

    @Override
    @J2.a("lock")
    public final void a() {
        this.f4553b.b(new C2318c(16, null));
    }
}
