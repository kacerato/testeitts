package th;

import oh.C14518h;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;

public class V {

    public final C14518h f117544a = new C14518h();

    public final C14518h f117545b = new C14518h();

    public final C14518h f117546c = new C14518h();

    public V a(L l10) {
        this.f117544a.a(l10);
        return this;
    }

    public V b(L l10, wh.c cVar) {
        if (this.f117544a.i() != this.f117545b.i()) {
            throw new IllegalStateException("status and revCerts sequence must be in common order");
        }
        this.f117544a.a(l10);
        this.f117545b.a(cVar);
        return this;
    }

    public V c(hi.r rVar) {
        this.f117546c.a(rVar);
        return this;
    }

    public U d() {
        C14518h c14518h = new C14518h(3);
        c14518h.a(new G0(this.f117544a));
        if (this.f117545b.i() != 0) {
            c14518h.a(new K0(true, 0, (InterfaceC14516g) new G0(this.f117545b)));
        }
        if (this.f117546c.i() != 0) {
            c14518h.a(new K0(true, 1, (InterfaceC14516g) new G0(this.f117546c)));
        }
        return U.w(new G0(c14518h));
    }
}
