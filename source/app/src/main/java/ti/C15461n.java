package ti;

import Vh.p;
import hi.C13478B;
import hi.C13479C;
import java.util.Date;
import java.util.List;
import java.util.Set;
import oh.C14549x;

public class C15461n {

    public p f117693a;

    public C13479C f117694b;

    public C15461n(p pVar) {
        this.f117693a = pVar;
        this.f117694b = pVar.z();
    }

    public C15450c a() {
        return new C15450c(this.f117693a.u());
    }

    public InterfaceC15451d b() {
        Vh.c v10 = this.f117693a.v();
        if (v10.g() == 0) {
            return null;
        }
        return v10.g() == 1 ? new C15460m(Vh.m.u(v10.x())) : new C15462o();
    }

    public Set c() {
        return C15456i.b(this.f117694b);
    }

    public C13478B d(C14549x c14549x) {
        C13479C c13479c = this.f117694b;
        if (c13479c != null) {
            return c13479c.x(c14549x);
        }
        return null;
    }

    public List e() {
        return C15456i.c(this.f117694b);
    }

    public Date f() {
        if (this.f117693a.y() == null) {
            return null;
        }
        return C15456i.a(this.f117693a.y());
    }

    public Set g() {
        return C15456i.d(this.f117694b);
    }

    public Date h() {
        return C15456i.a(this.f117693a.A());
    }

    public boolean i() {
        return this.f117694b != null;
    }
}
