package Sk;

import Xh.C;
import Xh.C3326a;
import Xh.C3328c;
import Xh.C3329d;
import Xh.t;
import Xh.v;
import hi.C13505q;
import hi.r;
import li.C14145g;
import li.C14146h;
import oh.AbstractC14551y;
import oh.C14549x;
import oh.G;

public class k {

    public static final C14549x f23622b = t.f29108h2;

    public static final C14549x f23623c = t.f29113j2;

    public C f23624a;

    public k(C c10) {
        this.f23624a = c10;
    }

    public C3326a[] a() {
        G u10 = this.f23624a.u();
        if (u10 == null) {
            return null;
        }
        C3326a[] c3326aArr = new C3326a[u10.size()];
        for (int i10 = 0; i10 != u10.size(); i10++) {
            c3326aArr[i10] = C3326a.y(u10.H(i10));
        }
        return c3326aArr;
    }

    public Object b() {
        return c().A(t.f29076Y3) ? new n(Xh.j.w(this.f23624a.x())) : c().A(t.f29080Z3) ? new C14146h(C13505q.v(AbstractC14551y.F(C3329d.w(this.f23624a.x()).v()).H())) : c().A(t.f29072X3) ? v.v(this.f23624a.x()) : c().A(t.f29084a4) ? new C14145g(r.u(AbstractC14551y.F(C3328c.w(this.f23624a.x()).v()).H())) : this.f23624a.x();
    }

    public C14549x c() {
        return this.f23624a.v();
    }

    public C d() {
        return this.f23624a;
    }
}
