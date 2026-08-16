package Fk;

import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.C0;
import oh.InterfaceC14514f;
import oh.InterfaceC14516g;
import oh.K0;

public class n0 extends AbstractC14545v implements InterfaceC14514f {

    public static final int f7148d = 0;

    public final int f7149b;

    public final InterfaceC14516g f7150c;

    public n0(int i10, InterfaceC14516g interfaceC14516g) {
        this.f7149b = i10;
        this.f7150c = interfaceC14516g;
    }

    public static n0 u(AbstractC14551y abstractC14551y) {
        return new n0(0, abstractC14551y);
    }

    public static n0 v(byte[] bArr) {
        return new n0(0, new C0(bArr));
    }

    public static n0 y(Object obj) {
        if (obj instanceof n0) {
            return (n0) obj;
        }
        if (obj != null) {
            return new n0(oh.M.S(obj, 128));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return new K0(this.f7149b, this.f7150c);
    }

    public int x() {
        return this.f7149b;
    }

    public InterfaceC14516g z() {
        return this.f7150c;
    }

    public n0(oh.M m10) {
        int g10 = m10.g();
        this.f7149b = g10;
        if (g10 != 0) {
            throw new IllegalArgumentException("invalid choice value " + g10);
        }
        AbstractC14551y F10 = AbstractC14551y.F(m10.O());
        if (F10.H().length != 16) {
            throw new IllegalArgumentException("aes128ccm string not 16 bytes");
        }
        this.f7150c = F10;
    }
}
