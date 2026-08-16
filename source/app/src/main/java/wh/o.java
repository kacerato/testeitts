package wh;

import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C14512e;
import oh.InterfaceC14514f;
import oh.InterfaceC14516g;
import oh.K0;
import oh.M;

public class o extends AbstractC14545v implements InterfaceC14514f {

    public static final int f127530c = 0;

    public static final int f127531d = 1;

    public static final int f127532e = 2;

    public InterfaceC14516g f127533b;

    public o(AbstractC14551y abstractC14551y) {
        this.f127533b = abstractC14551y;
    }

    public static o u(Object obj) {
        if (obj == null || (obj instanceof o)) {
            return (o) obj;
        }
        if (obj instanceof M) {
            return new o(M.S(obj, 128));
        }
        throw new IllegalArgumentException("unknown object: " + obj);
    }

    @Override
    public B r() {
        InterfaceC14516g interfaceC14516g = this.f127533b;
        return interfaceC14516g instanceof l ? new K0(true, 0, interfaceC14516g) : interfaceC14516g instanceof AbstractC14551y ? new K0(false, 1, interfaceC14516g) : new K0(false, 2, interfaceC14516g);
    }

    public int v() {
        InterfaceC14516g interfaceC14516g = this.f127533b;
        if (interfaceC14516g instanceof l) {
            return 0;
        }
        return interfaceC14516g instanceof AbstractC14551y ? 1 : 2;
    }

    public InterfaceC14516g x() {
        return this.f127533b;
    }

    public o(M m10) {
        InterfaceC14516g u10;
        int g10 = m10.g();
        if (g10 == 0) {
            u10 = l.u(m10.O());
        } else if (g10 == 1) {
            u10 = AbstractC14551y.G(m10, false);
        } else {
            if (g10 != 2) {
                throw new IllegalArgumentException("unknown tag number: " + m10.g());
            }
            u10 = C14512e.H(m10, false);
        }
        this.f127533b = u10;
    }

    public o(l lVar) {
        this.f127533b = lVar;
    }

    public o(boolean z10) {
        this.f127533b = C14512e.I(z10);
    }
}
