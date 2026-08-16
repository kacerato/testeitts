package Ek;

import Fk.C2551x;
import oh.A0;
import oh.AbstractC14541t;
import oh.AbstractC14545v;
import oh.InterfaceC14514f;
import oh.InterfaceC14516g;
import oh.K0;

public class G extends AbstractC14545v implements InterfaceC14514f {

    public static final int f5890d = 0;

    public static final int f5891e = 1;

    public static final int f5892f = 2;

    public final int f5893b;

    public final InterfaceC14516g f5894c;

    public G(int i10, InterfaceC14516g interfaceC14516g) {
        this.f5893b = i10;
        this.f5894c = interfaceC14516g;
    }

    public static G A() {
        return new G(2, A0.f98776c);
    }

    public static G u(B b10) {
        return new G(1, b10);
    }

    public static G v(C2551x c2551x) {
        return new G(0, c2551x);
    }

    public static G y(Object obj) {
        if (obj instanceof G) {
            return (G) obj;
        }
        if (obj != null) {
            return new G(oh.M.S(obj, 128));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return new K0(this.f5893b, this.f5894c);
    }

    public int x() {
        return this.f5893b;
    }

    public InterfaceC14516g z() {
        return this.f5894c;
    }

    public G(oh.M m10) {
        InterfaceC14516g v10;
        int g10 = m10.g();
        this.f5893b = g10;
        if (g10 == 0) {
            v10 = C2551x.v(m10.O());
        } else if (g10 == 1) {
            v10 = B.w(m10.O());
        } else {
            if (g10 != 2) {
                throw new IllegalArgumentException("invalid choice value " + g10);
            }
            v10 = AbstractC14541t.F(m10.O());
        }
        this.f5894c = v10;
    }
}
