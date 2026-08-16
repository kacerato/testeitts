package uh;

import hi.g0;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.InterfaceC14514f;
import oh.InterfaceC14516g;
import oh.K0;

public class H extends AbstractC14545v implements InterfaceC14514f {

    public InterfaceC14516g f120583b;

    public H(g0 g0Var) {
        this.f120583b = new K0(false, 0, (InterfaceC14516g) g0Var);
    }

    public static H v(Object obj) {
        if (obj == null || (obj instanceof H)) {
            return (H) obj;
        }
        if (obj instanceof C15634z) {
            return new H((C15634z) obj);
        }
        if (obj instanceof oh.E) {
            return new H(C15634z.u(obj));
        }
        if (obj instanceof oh.M) {
            oh.M m10 = (oh.M) obj;
            if (m10.p(0)) {
                return new H(g0.w(m10, false));
            }
            if (m10.p(1)) {
                return new H(J.w(m10, false));
            }
        }
        throw new IllegalArgumentException("Invalid OriginatorIdentifierOrKey: " + obj.getClass().getName());
    }

    public static H w(oh.M m10, boolean z10) {
        if (z10) {
            return v(m10.O());
        }
        throw new IllegalArgumentException("Can't implicitly tag OriginatorIdentifierOrKey");
    }

    @Override
    public oh.B r() {
        return this.f120583b.r();
    }

    public InterfaceC14516g u() {
        return this.f120583b;
    }

    public C15634z x() {
        InterfaceC14516g interfaceC14516g = this.f120583b;
        if (interfaceC14516g instanceof C15634z) {
            return (C15634z) interfaceC14516g;
        }
        return null;
    }

    public J y() {
        InterfaceC14516g interfaceC14516g = this.f120583b;
        if (!(interfaceC14516g instanceof oh.M)) {
            return null;
        }
        oh.M m10 = (oh.M) interfaceC14516g;
        if (m10.p(1)) {
            return J.w(m10, false);
        }
        return null;
    }

    public g0 z() {
        InterfaceC14516g interfaceC14516g = this.f120583b;
        if (!(interfaceC14516g instanceof oh.M)) {
            return null;
        }
        oh.M m10 = (oh.M) interfaceC14516g;
        if (m10.p(0)) {
            return g0.w(m10, false);
        }
        return null;
    }

    public H(AbstractC14551y abstractC14551y) {
        this(new g0(abstractC14551y.H()));
    }

    public H(oh.B b10) {
        this.f120583b = b10;
    }

    public H(C15634z c15634z) {
        this.f120583b = c15634z;
    }

    public H(J j10) {
        this.f120583b = new K0(false, 1, (InterfaceC14516g) j10);
    }
}
