package Sk;

import Xh.C3326a;
import fi.C13228d;
import hi.C13486b;
import hi.h0;
import oh.C14518h;
import oh.C14549x;
import oh.G0;
import oh.I0;
import oh.InterfaceC14516g;
import oh.K0;

public class c {

    public final h0 f23606a;

    public C13486b f23607b;

    public C13228d f23608c;

    public c(h0 h0Var) {
        this.f23606a = h0Var;
    }

    public b a() {
        C14518h c14518h = new C14518h();
        C13228d c13228d = this.f23608c;
        if (c13228d != null) {
            c14518h.a(new K0(false, 0, (InterfaceC14516g) c13228d));
        }
        c14518h.a(this.f23606a);
        C13486b c13486b = this.f23607b;
        if (c13486b != null) {
            c14518h.a(new K0(false, 2, (InterfaceC14516g) c13486b));
        }
        return new b(new C3326a(new C14549x("2.16.840.1.114027.80.6.2"), new I0(new G0(c14518h))));
    }

    public c b(C13486b c13486b) {
        this.f23607b = c13486b;
        return this;
    }

    public c c(C13228d c13228d) {
        this.f23608c = c13228d;
        return this;
    }
}
