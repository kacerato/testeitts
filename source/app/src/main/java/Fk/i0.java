package Fk;

import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.C0;
import oh.InterfaceC14514f;
import oh.InterfaceC14516g;
import oh.K0;

public class i0 extends AbstractC14545v implements InterfaceC14514f {

    public static final int f7111d = 0;

    public static final int f7112e = 1;

    public final int f7113b;

    public final InterfaceC14516g f7114c;

    public i0(int i10, InterfaceC14516g interfaceC14516g) {
        this.f7113b = i10;
        this.f7114c = interfaceC14516g;
    }

    public static i0 u(C2530b c2530b) {
        return new i0(1, c2530b);
    }

    public static i0 w(Object obj) {
        if (obj instanceof i0) {
            return (i0) obj;
        }
        if (obj != null) {
            return new i0(oh.M.S(obj, 128));
        }
        return null;
    }

    public static i0 y(AbstractC14551y abstractC14551y) {
        return new i0(0, abstractC14551y);
    }

    public static i0 z(byte[] bArr) {
        return new i0(0, new C0(bArr));
    }

    @Override
    public oh.B r() {
        return new K0(this.f7113b, this.f7114c);
    }

    public int v() {
        return this.f7113b;
    }

    public InterfaceC14516g x() {
        return this.f7114c;
    }

    public i0(oh.M m10) {
        InterfaceC14516g y10;
        int g10 = m10.g();
        this.f7113b = g10;
        if (g10 == 0) {
            y10 = Ek.v.y(m10.O());
        } else {
            if (g10 != 1) {
                throw new IllegalArgumentException("invalid choice value " + g10);
            }
            y10 = C2530b.u(m10.O());
        }
        this.f7114c = y10;
    }
}
