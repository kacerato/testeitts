package Ek;

import Fk.C2543o;
import oh.AbstractC14545v;
import oh.InterfaceC14514f;
import oh.InterfaceC14516g;
import oh.K0;

public class C2499j extends AbstractC14545v implements InterfaceC14514f {

    public static final int f5968d = 0;

    public static final int f5969e = 1;

    public final int f5970b;

    public final InterfaceC14516g f5971c;

    public C2499j(int i10, InterfaceC14516g interfaceC14516g) {
        this.f5970b = i10;
        this.f5971c = interfaceC14516g;
    }

    public static C2499j u(C2543o c2543o) {
        return new C2499j(1, c2543o);
    }

    public static C2499j v(C2543o c2543o) {
        return new C2499j(0, c2543o);
    }

    public static C2499j z(Object obj) {
        if (obj instanceof C2499j) {
            return (C2499j) obj;
        }
        if (obj != null) {
            return new C2499j(oh.M.S(obj, 128));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return new K0(this.f5970b, this.f5971c);
    }

    public int x() {
        return this.f5970b;
    }

    public InterfaceC14516g y() {
        return this.f5971c;
    }

    public C2499j(oh.M m10) {
        this.f5970b = m10.g();
        int g10 = m10.g();
        if (g10 == 0 || g10 == 1) {
            this.f5971c = C2543o.w(m10.O());
            return;
        }
        throw new IllegalArgumentException("invalid choice value " + m10.g());
    }
}
