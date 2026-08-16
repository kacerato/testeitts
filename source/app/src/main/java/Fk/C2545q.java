package Fk;

import oh.AbstractC14545v;
import oh.InterfaceC14514f;
import oh.InterfaceC14516g;
import oh.K0;

public class C2545q extends AbstractC14545v implements InterfaceC14514f {

    public static final int f7164d = 0;

    public static final int f7165e = 1;

    public final int f7166b;

    public final InterfaceC14516g f7167c;

    public C2545q(int i10, InterfaceC14516g interfaceC14516g) {
        this.f7166b = i10;
        if (i10 == 0 || i10 == 1) {
            this.f7167c = interfaceC14516g;
            return;
        }
        throw new IllegalArgumentException("invalid choice value " + i10);
    }

    public static C2545q w(Object obj) {
        if (obj instanceof C2545q) {
            return (C2545q) obj;
        }
        if (obj != null) {
            return new C2545q(oh.M.S(obj, 128));
        }
        return null;
    }

    public static C2545q x(S s10) {
        return new C2545q(0, s10);
    }

    public static C2545q y(n0 n0Var) {
        return new C2545q(1, n0Var);
    }

    @Override
    public oh.B r() {
        return new K0(this.f7166b, this.f7167c);
    }

    public int u() {
        return this.f7166b;
    }

    public InterfaceC14516g v() {
        return this.f7167c;
    }

    public C2545q(oh.M m10) {
        this(m10.g(), m10.O());
    }
}
