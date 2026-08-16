package Bk;

import Ck.h;
import oh.AbstractC14545v;
import oh.B;
import oh.InterfaceC14514f;
import oh.InterfaceC14516g;
import oh.K0;
import oh.M;

public class c extends AbstractC14545v implements InterfaceC14514f {

    public static final int f1922d = 0;

    public static final int f1923e = 1;

    public final int f1924b;

    public final InterfaceC14516g f1925c;

    public c(int i10, InterfaceC14516g interfaceC14516g) {
        this.f1924b = i10;
        this.f1925c = interfaceC14516g;
    }

    public static c w(Object obj) {
        if (obj instanceof c) {
            return (c) obj;
        }
        if (obj != null) {
            return new c(M.S(obj, 128));
        }
        return null;
    }

    @Override
    public B r() {
        return new K0(this.f1924b, this.f1925c);
    }

    public int u() {
        return this.f1924b;
    }

    public InterfaceC14516g v() {
        return this.f1925c;
    }

    public c(M m10) {
        InterfaceC14516g z10;
        int g10 = m10.g();
        this.f1924b = g10;
        if (g10 == 0) {
            z10 = Ck.c.z(m10.O());
        } else {
            if (g10 != 1) {
                throw new IllegalArgumentException("invalid choice value " + g10);
            }
            z10 = h.z(m10.O());
        }
        this.f1925c = z10;
    }
}
