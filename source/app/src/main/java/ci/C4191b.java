package ci;

import Xh.t;
import hi.C13486b;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C14518h;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;
import oh.M;
import uh.C15612c;
import uh.C15624o;
import uh.InterfaceC15621l;
import uh.V;

public class C4191b extends AbstractC14545v {

    public final C13486b f34831b;

    public final C15612c f34832c;

    public final E f34833d;

    public final C15624o f34834e;

    public C4191b(C13486b c13486b, C15612c c15612c, C4198i[] c4198iArr, C15624o c15624o) {
        this.f34831b = c13486b;
        this.f34832c = c15612c;
        this.f34833d = c4198iArr != null ? new G0(c4198iArr) : null;
        this.f34834e = c15624o;
    }

    public static C4191b y(Object obj) {
        if (obj instanceof C4191b) {
            return (C4191b) obj;
        }
        if (obj != null) {
            return new C4191b(E.G(obj));
        }
        return null;
    }

    public C15624o A() {
        return this.f34834e;
    }

    public byte[] B() {
        return C().z().v();
    }

    public final C4199j C() {
        if (!this.f34834e.v().A(InterfaceC15621l.f120706n8)) {
            throw new IllegalStateException("cannot identify algorithm identifier for digest");
        }
        V B10 = V.B(this.f34834e.u());
        if (B10.A().v().A(t.f29153z2)) {
            return C4199j.y(AbstractC14551y.F(B10.A().u()).H());
        }
        throw new IllegalStateException("cannot parse time stamp");
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(4);
        C13486b c13486b = this.f34831b;
        if (c13486b != null) {
            c14518h.a(new K0(false, 0, (InterfaceC14516g) c13486b));
        }
        C15612c c15612c = this.f34832c;
        if (c15612c != null) {
            c14518h.a(new K0(false, 1, (InterfaceC14516g) c15612c));
        }
        E e10 = this.f34833d;
        if (e10 != null) {
            c14518h.a(new K0(false, 2, (InterfaceC14516g) e10));
        }
        c14518h.a(this.f34834e);
        return new G0(c14518h);
    }

    public C13486b u() {
        return this.f34831b;
    }

    public C13486b v() {
        C13486b c13486b = this.f34831b;
        return c13486b != null ? c13486b : C().z().u();
    }

    public C4198i x() {
        E e10 = this.f34833d;
        if (e10 == null) {
            return null;
        }
        return C4198i.v(e10.I(0));
    }

    public C4198i[] z() {
        E e10 = this.f34833d;
        if (e10 == null) {
            return null;
        }
        int size = e10.size();
        C4198i[] c4198iArr = new C4198i[size];
        for (int i10 = 0; i10 != size; i10++) {
            c4198iArr[i10] = C4198i.v(this.f34833d.I(i10));
        }
        return c4198iArr;
    }

    public C4191b(C13486b c13486b, C4198i[] c4198iArr, C15624o c15624o) {
        this(c13486b, null, c4198iArr, c15624o);
    }

    public C4191b(E e10) {
        if (e10.size() < 1 || e10.size() > 4) {
            throw new IllegalArgumentException("wrong sequence size in constructor: " + e10.size());
        }
        C13486b c13486b = null;
        C15612c c15612c = null;
        E e11 = null;
        for (int i10 = 0; i10 < e10.size() - 1; i10++) {
            InterfaceC14516g I10 = e10.I(i10);
            if (I10 instanceof M) {
                M R10 = M.R(I10);
                int g10 = R10.g();
                if (g10 == 0) {
                    c13486b = C13486b.w(R10, false);
                } else if (g10 == 1) {
                    c15612c = C15612c.w(R10, false);
                } else {
                    if (g10 != 2) {
                        throw new IllegalArgumentException("invalid tag no in constructor: " + R10.g());
                    }
                    e11 = E.H(R10, false);
                }
            }
        }
        this.f34831b = c13486b;
        this.f34832c = c15612c;
        this.f34833d = e11;
        this.f34834e = C15624o.w(e10.I(e10.size() - 1));
    }

    public C4191b(C15624o c15624o) {
        this(null, null, null, c15624o);
    }
}
