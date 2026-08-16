package Ek;

import oh.AbstractC14545v;
import oh.InterfaceC14514f;
import oh.InterfaceC14516g;
import oh.K0;

public class A extends AbstractC14545v implements InterfaceC14514f {

    public static final int f5865d = 0;

    public static final int f5866e = 1;

    public static final int f5867f = 2;

    public static final int f5868g = 3;

    public static final int f5869h = 4;

    public final int f5870b;

    public final InterfaceC14516g f5871c;

    public A(int i10, InterfaceC14516g interfaceC14516g) {
        this.f5870b = i10;
        this.f5871c = interfaceC14516g;
    }

    public static A A(w wVar) {
        return new A(3, wVar);
    }

    public static A B(I i10) {
        return new A(1, i10);
    }

    public static A u(w wVar) {
        return new A(2, wVar);
    }

    public static A w(Object obj) {
        if (obj instanceof A) {
            return (A) obj;
        }
        if (obj != null) {
            return new A(oh.M.S(obj, 128));
        }
        return null;
    }

    public static A y(y yVar) {
        return new A(0, yVar);
    }

    public static A z(w wVar) {
        return new A(4, wVar);
    }

    @Override
    public oh.B r() {
        return new K0(this.f5870b, this.f5871c);
    }

    public int v() {
        return this.f5870b;
    }

    public InterfaceC14516g x() {
        return this.f5871c;
    }

    public A(oh.M m10) {
        InterfaceC14516g w10;
        int g10 = m10.g();
        this.f5870b = g10;
        if (g10 == 0) {
            w10 = y.w(m10.O());
        } else if (g10 == 1) {
            w10 = I.w(m10.O());
        } else {
            if (g10 != 2 && g10 != 3 && g10 != 4) {
                throw new IllegalArgumentException("invalid choice value " + g10);
            }
            w10 = w.w(m10.O());
        }
        this.f5871c = w10;
    }
}
