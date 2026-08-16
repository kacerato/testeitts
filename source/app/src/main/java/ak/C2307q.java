package Ak;

import Fk.C2551x;
import oh.AbstractC14545v;
import oh.InterfaceC14514f;
import oh.InterfaceC14516g;
import oh.K0;

public class C2307q extends AbstractC14545v implements InterfaceC14514f {

    public static final int f977d = 0;

    public static final int f978e = 1;

    public final int f979b;

    public final InterfaceC14516g f980c;

    public C2307q(int i10, InterfaceC14516g interfaceC14516g) {
        InterfaceC14516g v10;
        this.f979b = i10;
        if (i10 == 0) {
            v10 = C2551x.v(interfaceC14516g);
        } else {
            if (i10 != 1) {
                throw new IllegalArgumentException("invalid choice value " + i10);
            }
            v10 = C2309t.u(interfaceC14516g);
        }
        this.f980c = v10;
    }

    public static C2307q u(C2551x c2551x) {
        return new C2307q(0, c2551x);
    }

    public static C2307q v(C2309t c2309t) {
        return new C2307q(1, c2309t);
    }

    public static C2307q z(Object obj) {
        if (obj instanceof C2307q) {
            return (C2307q) obj;
        }
        if (obj != null) {
            return new C2307q(oh.M.S(obj, 128));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return new K0(this.f979b, this.f980c);
    }

    public int x() {
        return this.f979b;
    }

    public InterfaceC14516g y() {
        return this.f980c;
    }

    public C2307q(oh.M m10) {
        this(m10.g(), m10.O());
    }
}
