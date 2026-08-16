package Fk;

import oh.AbstractC14541t;
import oh.AbstractC14551y;
import oh.C0;
import oh.InterfaceC14514f;
import oh.InterfaceC14516g;
import oh.K0;

public class C2540l extends AbstractC2538j implements InterfaceC14514f {

    public static final int f7132d = 0;

    public static final int f7133e = 1;

    public static final int f7134f = 2;

    public static final int f7135g = 3;

    public static final int f7136h = 4;

    public final int f7137b;

    public final InterfaceC14516g f7138c;

    public C2540l(int i10, InterfaceC14516g interfaceC14516g) {
        this.f7137b = i10;
        this.f7138c = interfaceC14516g;
    }

    public static C2540l C(Object obj) {
        if (obj instanceof C2540l) {
            return (C2540l) obj;
        }
        if (obj != null) {
            return new C2540l(oh.M.S(obj, 128));
        }
        return null;
    }

    public static C2540l D(M m10) {
        return new C2540l(4, m10);
    }

    public static C2540l E(AbstractC14551y abstractC14551y) {
        return new C2540l(0, abstractC14551y);
    }

    public static C2540l F(byte[] bArr) {
        return new C2540l(0, new C0(org.bouncycastle.util.a.p(bArr)));
    }

    public static C2540l v(AbstractC14551y abstractC14551y) {
        return new C2540l(2, abstractC14551y);
    }

    public static C2540l w(byte[] bArr) {
        return new C2540l(2, new C0(org.bouncycastle.util.a.p(bArr)));
    }

    public static C2540l x(AbstractC14551y abstractC14551y) {
        return new C2540l(3, abstractC14551y);
    }

    public static C2540l y(byte[] bArr) {
        return new C2540l(3, new C0(org.bouncycastle.util.a.p(bArr)));
    }

    public static C2540l z() {
        return new C2540l(1, oh.A0.f98776c);
    }

    public int A() {
        return this.f7137b;
    }

    public InterfaceC14516g B() {
        return this.f7138c;
    }

    @Override
    public oh.B r() {
        return new K0(this.f7137b, this.f7138c);
    }

    @Override
    public byte[] u() {
        byte[] bArr;
        int i10 = this.f7137b;
        if (i10 == 0) {
            throw new IllegalStateException("x Only not implemented");
        }
        if (i10 == 2) {
            byte[] H10 = AbstractC14551y.F(this.f7138c).H();
            bArr = new byte[H10.length + 1];
            bArr[0] = 2;
            System.arraycopy(H10, 0, bArr, 1, H10.length);
        } else {
            if (i10 != 3) {
                if (i10 != 4) {
                    throw new IllegalStateException("unknown point choice");
                }
                oh.E G10 = oh.E.G(this.f7138c);
                return org.bouncycastle.util.a.C(new byte[]{4}, AbstractC14551y.F(G10.I(0)).H(), AbstractC14551y.F(G10.I(1)).H());
            }
            byte[] H11 = AbstractC14551y.F(this.f7138c).H();
            bArr = new byte[H11.length + 1];
            bArr[0] = 3;
            System.arraycopy(H11, 0, bArr, 1, H11.length);
        }
        return bArr;
    }

    public C2540l(oh.M m10) {
        InterfaceC14516g F10;
        this.f7137b = m10.g();
        int g10 = m10.g();
        if (g10 != 0) {
            if (g10 == 1) {
                F10 = AbstractC14541t.F(m10.O());
            } else if (g10 != 2 && g10 != 3) {
                if (g10 != 4) {
                    throw new IllegalArgumentException("invalid choice value " + m10.g());
                }
                F10 = oh.E.G(m10.O());
            }
            this.f7138c = F10;
        }
        F10 = AbstractC14551y.F(m10.O());
        this.f7138c = F10;
    }
}
