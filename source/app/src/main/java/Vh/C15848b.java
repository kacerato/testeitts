package vh;

import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C14518h;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;
import oh.M;
import uh.J;

public class C15848b extends AbstractC14545v {

    public J f121613b;

    public AbstractC14551y f121614c;

    public C15848b(E e10) {
        if (e10.size() != 1 && e10.size() != 2) {
            throw new IllegalArgumentException("Sequence has incorrect number of elements");
        }
        this.f121613b = J.v(e10.I(0));
        if (e10.size() > 1) {
            this.f121614c = AbstractC14551y.G((M) e10.I(1), true);
        }
    }

    public static C15848b w(Object obj) {
        if (obj instanceof C15848b) {
            return (C15848b) obj;
        }
        if (obj != null) {
            return new C15848b(E.G(obj));
        }
        return null;
    }

    public static C15848b x(M m10, boolean z10) {
        return w(E.H(m10, z10));
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f121613b);
        AbstractC14551y abstractC14551y = this.f121614c;
        if (abstractC14551y != null) {
            c14518h.a(new K0(true, 0, (InterfaceC14516g) abstractC14551y));
        }
        return new G0(c14518h);
    }

    public AbstractC14551y u() {
        return this.f121614c;
    }

    public J v() {
        return this.f121613b;
    }

    public C15848b(J j10, AbstractC14551y abstractC14551y) {
        if (j10 == null) {
            throw new IllegalArgumentException("Ephemeral public key cannot be null");
        }
        this.f121613b = j10;
        this.f121614c = abstractC14551y;
    }
}
