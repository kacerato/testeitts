package Vh;

import fi.C13228d;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C0;
import oh.InterfaceC14514f;
import oh.InterfaceC14516g;
import oh.K0;
import oh.M;

public class j extends AbstractC14545v implements InterfaceC14514f {

    public InterfaceC14516g f27049b;

    public j(C13228d c13228d) {
        this.f27049b = c13228d;
    }

    public static j u(Object obj) {
        if (obj instanceof j) {
            return (j) obj;
        }
        if (obj instanceof C0) {
            return new j((C0) obj);
        }
        if (!(obj instanceof M)) {
            return new j(C13228d.x(obj));
        }
        M m10 = (M) obj;
        return m10.g() == 1 ? new j(C13228d.y(m10, true)) : new j(AbstractC14551y.G(m10, true));
    }

    public static j v(M m10, boolean z10) {
        if (z10) {
            return u(m10.O());
        }
        throw new IllegalArgumentException("choice item must be explicitly tagged");
    }

    @Override
    public B r() {
        InterfaceC14516g interfaceC14516g = this.f27049b;
        return interfaceC14516g instanceof AbstractC14551y ? new K0(true, 2, interfaceC14516g) : new K0(true, 1, interfaceC14516g);
    }

    public byte[] x() {
        InterfaceC14516g interfaceC14516g = this.f27049b;
        if (interfaceC14516g instanceof AbstractC14551y) {
            return ((AbstractC14551y) interfaceC14516g).H();
        }
        return null;
    }

    public C13228d y() {
        InterfaceC14516g interfaceC14516g = this.f27049b;
        if (interfaceC14516g instanceof AbstractC14551y) {
            return null;
        }
        return C13228d.x(interfaceC14516g);
    }

    public j(AbstractC14551y abstractC14551y) {
        this.f27049b = abstractC14551y;
    }
}
