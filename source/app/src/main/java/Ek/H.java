package Ek;

import Fk.d0;
import oh.A0;
import oh.AbstractC14541t;
import oh.AbstractC14545v;
import oh.InterfaceC14514f;
import oh.InterfaceC14516g;
import oh.K0;

public class H extends AbstractC14545v implements InterfaceC14514f {

    public static final int f5895d = 0;

    public static final int f5896e = 1;

    public final InterfaceC14516g f5897b;

    public final int f5898c;

    public H(int i10, InterfaceC14516g interfaceC14516g) {
        this.f5897b = interfaceC14516g;
        this.f5898c = i10;
    }

    public static H u() {
        return new H(1, A0.f98776c);
    }

    public static H v(d0 d0Var) {
        return new H(0, d0Var);
    }

    public static H y(Object obj) {
        if (obj instanceof H) {
            return (H) obj;
        }
        if (obj != null) {
            return new H(oh.M.S(obj, 128));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return new K0(this.f5898c, this.f5897b);
    }

    public int x() {
        return this.f5898c;
    }

    public InterfaceC14516g z() {
        return this.f5897b;
    }

    public H(oh.M m10) {
        InterfaceC14516g v10;
        int g10 = m10.g();
        this.f5898c = g10;
        if (g10 == 0) {
            v10 = d0.v(m10.O());
        } else {
            if (g10 != 1) {
                throw new IllegalArgumentException("invalid choice value " + g10);
            }
            v10 = AbstractC14541t.F(m10.O());
        }
        this.f5897b = v10;
    }
}
