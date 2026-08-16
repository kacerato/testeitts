package li;

import hi.C13478B;
import hi.C13479C;
import hi.C13482F;
import hi.i0;
import java.math.BigInteger;
import java.util.Date;
import java.util.List;
import java.util.Set;
import oh.C14549x;

public class C14144f {

    public i0.b f96471a;

    public C13482F f96472b;

    public C14144f(i0.b bVar, boolean z10, C13482F c13482f) {
        C13478B x10;
        this.f96471a = bVar;
        this.f96472b = c13482f;
        if (z10 && bVar.z() && (x10 = bVar.u().x(C13478B.f90542r)) != null) {
            this.f96472b = C13482F.w(x10.A());
        }
    }

    public C13482F a() {
        return this.f96472b;
    }

    public Set b() {
        return C14141c.l(this.f96471a.u());
    }

    public C13478B c(C14549x c14549x) {
        C13479C u10 = this.f96471a.u();
        if (u10 != null) {
            return u10.x(c14549x);
        }
        return null;
    }

    public List d() {
        return C14141c.m(this.f96471a.u());
    }

    public C13479C e() {
        return this.f96471a.u();
    }

    public Set f() {
        return C14141c.n(this.f96471a.u());
    }

    public Date g() {
        return this.f96471a.x().u();
    }

    public BigInteger h() {
        return this.f96471a.y().I();
    }

    public boolean i() {
        return this.f96471a.z();
    }
}
