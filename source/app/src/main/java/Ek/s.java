package Ek;

import Fk.C2547t;
import Fk.C2551x;
import oh.AbstractC14545v;
import oh.InterfaceC14514f;
import oh.InterfaceC14516g;
import oh.K0;

public class s extends AbstractC14545v implements InterfaceC14514f {

    public static final int f6014d = 0;

    public static final int f6015e = 1;

    public static final int f6016f = 2;

    public final int f6017b;

    public final InterfaceC14516g f6018c;

    public s(int i10, InterfaceC14516g interfaceC14516g) {
        this.f6017b = i10;
        this.f6018c = interfaceC14516g;
    }

    public static s A(C2551x c2551x) {
        return new s(0, c2551x);
    }

    public static s B(C2551x c2551x) {
        return new s(2, c2551x);
    }

    public static s v(Object obj) {
        if (obj instanceof s) {
            return (s) obj;
        }
        if (obj != null) {
            return new s(oh.M.S(obj, 128));
        }
        return null;
    }

    public static s z(C2547t c2547t) {
        return new s(1, c2547t);
    }

    @Override
    public oh.B r() {
        return new K0(this.f6017b, this.f6018c);
    }

    public int u() {
        return this.f6017b;
    }

    public InterfaceC14516g x() {
        return this.f6018c;
    }

    public boolean y() {
        return this.f6017b == 1;
    }

    public s(oh.M m10) {
        InterfaceC14516g v10;
        int g10 = m10.g();
        this.f6017b = g10;
        AbstractC14545v O10 = m10.O();
        if (g10 != 0) {
            if (g10 == 1) {
                v10 = C2547t.N(O10);
                this.f6018c = v10;
            } else if (g10 != 2) {
                throw new IllegalArgumentException("invalid choice value " + g10);
            }
        }
        v10 = C2551x.v(O10);
        this.f6018c = v10;
    }
}
