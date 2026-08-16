package Gk;

import Fk.S;
import oh.AbstractC14545v;
import oh.B;
import oh.InterfaceC14514f;
import oh.InterfaceC14516g;
import oh.K0;
import oh.M;

public class a extends AbstractC14545v implements InterfaceC14514f {

    public static final int f7850d = 0;

    public static final int f7851e = 1;

    public static final int f7852f = 2;

    public static final int f7853g = 3;

    public final int f7854b;

    public final InterfaceC14516g f7855c;

    public a(int i10, InterfaceC14516g interfaceC14516g) {
        InterfaceC14516g y10;
        if (i10 == 0) {
            y10 = c.y(interfaceC14516g);
        } else if (i10 == 1 || i10 == 2) {
            y10 = b.z(interfaceC14516g);
        } else {
            if (i10 != 3) {
                throw new IllegalArgumentException("invalid choice value " + i10);
            }
            y10 = S.v(interfaceC14516g);
        }
        this.f7855c = y10;
        this.f7854b = i10;
    }

    public static a A(c cVar) {
        return new a(0, cVar);
    }

    public static a B(b bVar) {
        return new a(1, bVar);
    }

    public static a u(b bVar) {
        return new a(2, bVar);
    }

    public static a v(S s10) {
        return new a(3, s10);
    }

    public static a z(Object obj) {
        if (obj instanceof a) {
            return (a) obj;
        }
        if (obj != null) {
            return new a(M.S(obj, 128));
        }
        return null;
    }

    @Override
    public B r() {
        return new K0(this.f7854b, this.f7855c);
    }

    public InterfaceC14516g x() {
        return this.f7855c;
    }

    public int y() {
        return this.f7854b;
    }

    public a(M m10) {
        this(m10.g(), m10.O());
    }
}
