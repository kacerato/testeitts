package Gk;

import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C0;
import oh.InterfaceC14514f;
import oh.InterfaceC14516g;
import oh.K0;
import oh.M;

public class b extends AbstractC14545v implements InterfaceC14514f {

    public static final int f7856d = 0;

    public final int f7857b;

    public final InterfaceC14516g f7858c;

    public b(int i10, InterfaceC14516g interfaceC14516g) {
        this.f7857b = i10;
        this.f7858c = interfaceC14516g;
    }

    public static b u(AbstractC14551y abstractC14551y) {
        return v(abstractC14551y.H());
    }

    public static b v(byte[] bArr) {
        if (bArr.length == 16) {
            return new b(0, new C0(bArr));
        }
        throw new IllegalArgumentException("length must be 16");
    }

    public static b z(Object obj) {
        if (obj instanceof b) {
            return (b) obj;
        }
        if (obj != null) {
            return new b(M.S(obj, 128));
        }
        return null;
    }

    @Override
    public B r() {
        return new K0(this.f7857b, this.f7858c);
    }

    public InterfaceC14516g x() {
        return this.f7858c;
    }

    public int y() {
        return this.f7857b;
    }

    public b(M m10) {
        int g10 = m10.g();
        this.f7857b = g10;
        if (g10 == 0) {
            this.f7858c = AbstractC14551y.F(m10.O());
            return;
        }
        throw new IllegalArgumentException("invalid choice value " + g10);
    }
}
