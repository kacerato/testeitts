package o9;

import com.google.android.filament.View;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentView;

public class C14492b {

    public static final View.e f98621a;

    static {
        View.e eVar = new View.e();
        f98621a = eVar;
        eVar.f60241h = true;
        eVar.f60236c = 0.0f;
        eVar.f60245l = false;
        eVar.f60244k = false;
    }

    public static void a(FilamentView filamentView) {
        View p10 = filamentView.p();
        p10.w0(View.q.PCF);
        p10.Y(f98621a);
        p10.W(View.c.NONE);
        View.u D10 = p10.D();
        D10.f60302e = false;
        p10.B0(D10);
        View.w G10 = p10.G();
        G10.f60318e = false;
        p10.F0(G10);
        View.f j10 = p10.j();
        j10.f60256d = false;
        p10.c0(j10);
        View.b d10 = p10.d();
        d10.f60218k = true;
        d10.f60213f = 0.0f;
        d10.f60209b = 0.0f;
        d10.f60210c = 0.0f;
        d10.f60230w = false;
        View.n nVar = View.n.LOW;
        d10.f60215h = nVar;
        d10.f60216i = nVar;
        d10.f60217j = nVar;
        p10.V(d10);
        p10.d0(View.g.NONE);
        View.h l10 = p10.l();
        l10.f60267d = false;
        p10.f0(l10);
        View.i o10 = p10.o();
        o10.f60281l = false;
        p10.g0(o10);
        View.p A10 = p10.A();
        A10.f60294e = false;
        p10.u0(A10);
    }

    public static void b(FilamentView filamentView) {
    }
}
