package Ek;

import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.C0;
import oh.InterfaceC14514f;
import oh.InterfaceC14516g;
import oh.K0;

public class C2502m extends AbstractC14545v implements InterfaceC14514f {

    public static final int f5975d = 0;

    public static final int f5976e = 1;

    public static final int f5977f = 2;

    public final int f5978b;

    public final InterfaceC14516g f5979c;

    public C2502m(int i10, InterfaceC14516g interfaceC14516g) {
        this.f5978b = i10;
        this.f5979c = interfaceC14516g;
    }

    public static C2502m A(byte[] bArr) {
        return new C2502m(0, new C0(org.bouncycastle.util.a.p(bArr)));
    }

    public static C2502m B(AbstractC14551y abstractC14551y) {
        return new C2502m(1, abstractC14551y);
    }

    public static C2502m C(byte[] bArr) {
        return new C2502m(1, new C0(org.bouncycastle.util.a.p(bArr)));
    }

    public static C2502m w(Object obj) {
        if (obj instanceof C2502m) {
            return (C2502m) obj;
        }
        if (obj != null) {
            return new C2502m(oh.M.S(obj, 128));
        }
        return null;
    }

    public static C2502m x(AbstractC14551y abstractC14551y) {
        return new C2502m(2, abstractC14551y);
    }

    public static C2502m y(byte[] bArr) {
        return new C2502m(2, new C0(org.bouncycastle.util.a.p(bArr)));
    }

    public static C2502m z(AbstractC14551y abstractC14551y) {
        return new C2502m(0, abstractC14551y);
    }

    @Override
    public oh.B r() {
        return new K0(this.f5978b, this.f5979c);
    }

    public int u() {
        return this.f5978b;
    }

    public InterfaceC14516g v() {
        return this.f5979c;
    }

    public C2502m(oh.M m10) {
        int g10 = m10.g();
        if (g10 == 0 || g10 == 1 || g10 == 2) {
            this.f5978b = m10.g();
            this.f5979c = AbstractC14551y.F(m10.O());
        } else {
            throw new IllegalArgumentException("invalid choice value " + m10.g());
        }
    }
}
