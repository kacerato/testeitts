package J0;

import D0.InterfaceC2458n;
import D0.r;
import G0.H;
import G0.J;
import G0.K;
import android.content.Context;
import com.google.android.gms.common.api.AbstractC11907k;
import com.google.android.gms.common.api.C11894a;
import g1.C13284f;
import v1.AbstractC15790k;
import v1.C15791l;

public final class p extends AbstractC11907k implements J {

    public static final C11894a.g f10178k;

    public static final C11894a.AbstractC0948a f10179l;

    public static final C11894a f10180m;

    public static final int f10181n = 0;

    static {
        C11894a.g gVar = new C11894a.g();
        f10178k = gVar;
        o oVar = new o();
        f10179l = oVar;
        f10180m = new C11894a("ClientTelemetry.API", oVar, gVar);
    }

    public p(Context context, K k10) {
        super(context, (C11894a<K>) f10180m, k10, AbstractC11907k.a.f61274c);
    }

    @Override
    public final AbstractC15790k<Void> t(final H h10) {
        r.a a10 = r.a();
        a10.e(C13284f.f88005a);
        a10.d(false);
        a10.c(new InterfaceC2458n() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public final void accept(Object obj, Object obj2) {
                int i10 = p.f10181n;
                ((j) ((q) obj).M()).e1(H.this);
                ((C15791l) obj2).c(null);
            }
        });
        return L(a10.a());
    }
}
