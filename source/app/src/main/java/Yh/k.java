package yh;

import hi.h0;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C0;
import oh.C14518h;
import oh.C14549x;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;
import oh.M;

public class k extends AbstractC14545v {

    public final C14549x f130333b;

    public final h0 f130334c;

    public final byte[] f130335d;

    public k(C14549x c14549x, h0 h0Var, byte[] bArr) {
        this.f130333b = c14549x;
        this.f130334c = h0Var;
        this.f130335d = org.bouncycastle.util.a.p(bArr);
    }

    public static k w(Object obj) {
        if (obj instanceof k) {
            return (k) obj;
        }
        if (obj != null) {
            return new k(E.G(obj));
        }
        return null;
    }

    public static k x(M m10, boolean z10) {
        return new k(E.H(m10, z10));
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(3);
        c14518h.a(this.f130333b);
        h0 h0Var = this.f130334c;
        if (h0Var != null) {
            c14518h.a(new K0(false, 0, (InterfaceC14516g) h0Var));
        }
        c14518h.a(new C0(this.f130335d));
        return new G0(c14518h);
    }

    public C14549x u() {
        return this.f130333b;
    }

    public h0 v() {
        return this.f130334c;
    }

    public byte[] y() {
        return org.bouncycastle.util.a.p(this.f130335d);
    }

    public k(E e10) {
        if (e10.size() == 2) {
            this.f130333b = C14549x.K(e10.I(0));
            this.f130335d = AbstractC14551y.F(e10.I(1)).H();
            this.f130334c = null;
        } else if (e10.size() == 3) {
            this.f130333b = C14549x.K(e10.I(0));
            this.f130334c = h0.x(M.R(e10.I(1)), false);
            this.f130335d = AbstractC14551y.F(e10.I(2)).H();
        } else {
            throw new IllegalArgumentException("unknown sequence length: " + e10.size());
        }
    }
}
