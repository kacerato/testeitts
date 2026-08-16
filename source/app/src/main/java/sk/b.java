package Sk;

import Xh.C3326a;
import fi.C13228d;
import hi.C13479C;
import hi.C13486b;
import hi.h0;
import oh.B;
import oh.E;
import oh.InterfaceC14516g;
import oh.M;

public class b implements InterfaceC14516g {

    public final C13228d f23601b;

    public final h0 f23602c;

    public final C13479C f23603d;

    public final C13486b f23604e;

    public final E f23605f;

    public b(C3326a c3326a) {
        this(E.G(c3326a.x()[0]));
    }

    public C13479C c() {
        return this.f23603d;
    }

    public C13486b e() {
        return this.f23604e;
    }

    public C13228d f() {
        return this.f23601b;
    }

    public h0 q() {
        return this.f23602c;
    }

    @Override
    public B r() {
        return this.f23605f;
    }

    public b(E e10) {
        int i10;
        C13486b c13486b;
        this.f23605f = e10;
        C13479C c13479c = null;
        if (e10.I(0) instanceof M) {
            this.f23601b = C13228d.y(M.R(e10.I(0)), true);
            i10 = 1;
        } else {
            this.f23601b = null;
            i10 = 0;
        }
        this.f23602c = h0.w(e10.I(i10));
        int i11 = i10 + 1;
        if (i11 != e10.size()) {
            c13486b = null;
            while (i11 < e10.size()) {
                M R10 = M.R(e10.I(i11));
                if (R10.g() == 1) {
                    c13479c = C13479C.D(R10, false);
                } else {
                    if (R10.g() != 2) {
                        throw new IllegalArgumentException("unknown tag");
                    }
                    c13486b = C13486b.w(R10, false);
                }
                i11++;
            }
        } else {
            c13486b = null;
        }
        this.f23603d = c13479c;
        this.f23604e = c13486b;
    }
}
