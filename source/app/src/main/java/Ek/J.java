package Ek;

import oh.AbstractC14545v;
import oh.InterfaceC14514f;
import oh.InterfaceC14516g;
import oh.K0;

public class J extends AbstractC14545v implements InterfaceC14514f {

    public static final int f5903d = 0;

    public final int f5904b;

    public final InterfaceC14516g f5905c;

    public J(int i10, InterfaceC14516g interfaceC14516g) {
        this.f5904b = i10;
        this.f5905c = interfaceC14516g;
    }

    public static J u(C2490a c2490a) {
        return new J(0, c2490a);
    }

    public static J w(Object obj) {
        if (obj instanceof J) {
            return (J) obj;
        }
        if (obj != null) {
            return new J(oh.M.S(obj, 128));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return new K0(this.f5904b, this.f5905c);
    }

    public int v() {
        return this.f5904b;
    }

    public InterfaceC14516g x() {
        return this.f5905c;
    }

    public J(oh.M m10) {
        int g10 = m10.g();
        this.f5904b = g10;
        if (g10 == 0) {
            this.f5905c = C2490a.w(m10.O());
            return;
        }
        throw new IllegalArgumentException("invalid choice value " + g10);
    }
}
