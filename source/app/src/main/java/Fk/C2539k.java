package Fk;

import java.math.BigInteger;
import oh.AbstractC14541t;
import oh.AbstractC14551y;
import oh.C0;
import oh.InterfaceC14514f;
import oh.InterfaceC14516g;
import oh.K0;

public class C2539k extends AbstractC2538j implements InterfaceC14514f {

    public static final int f7120d = 0;

    public static final int f7121e = 1;

    public static final int f7122f = 2;

    public static final int f7123g = 3;

    public static final int f7124h = 4;

    public final int f7125b;

    public final InterfaceC14516g f7126c;

    public C2539k(int i10, InterfaceC14516g interfaceC14516g) {
        this.f7125b = i10;
        this.f7126c = interfaceC14516g;
    }

    public static C2539k A(byte[] bArr) {
        byte b10 = bArr[0];
        if (b10 == 2) {
            int length = bArr.length - 1;
            byte[] bArr2 = new byte[length];
            System.arraycopy(bArr, 1, bArr2, 0, length);
            return new C2539k(2, new C0(bArr2));
        }
        if (b10 == 3) {
            int length2 = bArr.length - 1;
            byte[] bArr3 = new byte[length2];
            System.arraycopy(bArr, 1, bArr3, 0, length2);
            return new C2539k(3, new C0(bArr3));
        }
        if (b10 == 4) {
            return new C2539k(4, new L(new C0(org.bouncycastle.util.a.X(bArr, 1, 34)), new C0(org.bouncycastle.util.a.X(bArr, 34, 66))));
        }
        throw new IllegalArgumentException("unrecognised encoding " + ((int) bArr[0]));
    }

    public static C2539k B() {
        return new C2539k(1, oh.A0.f98776c);
    }

    public static C2539k E(Object obj) {
        if (obj instanceof C2539k) {
            return (C2539k) obj;
        }
        if (obj != null) {
            return new C2539k(oh.M.S(obj, 128));
        }
        return null;
    }

    public static C2539k F(L l10) {
        return new C2539k(4, l10);
    }

    public static C2539k G(BigInteger bigInteger, BigInteger bigInteger2) {
        return new C2539k(4, L.u().b(bigInteger).e(bigInteger2).a());
    }

    public static C2539k H(AbstractC14551y abstractC14551y) {
        return new C2539k(0, abstractC14551y);
    }

    public static C2539k I(byte[] bArr) {
        return new C2539k(0, new C0(org.bouncycastle.util.a.p(bArr)));
    }

    public static C2539k v(AbstractC14551y abstractC14551y) {
        return new C2539k(2, abstractC14551y);
    }

    public static C2539k w(byte[] bArr) {
        return new C2539k(2, new C0(org.bouncycastle.util.a.p(bArr)));
    }

    public static C2539k x(AbstractC14551y abstractC14551y) {
        return new C2539k(3, abstractC14551y);
    }

    public static C2539k y(byte[] bArr) {
        return new C2539k(3, new C0(org.bouncycastle.util.a.p(bArr)));
    }

    public int C() {
        return this.f7125b;
    }

    public InterfaceC14516g D() {
        return this.f7126c;
    }

    @Override
    public oh.B r() {
        return new K0(this.f7125b, this.f7126c);
    }

    @Override
    public byte[] u() {
        byte[] bArr;
        int i10 = this.f7125b;
        if (i10 == 0) {
            throw new IllegalStateException("x Only not implemented");
        }
        if (i10 == 2) {
            byte[] H10 = AbstractC14551y.F(this.f7126c).H();
            bArr = new byte[H10.length + 1];
            bArr[0] = 2;
            System.arraycopy(H10, 0, bArr, 1, H10.length);
        } else {
            if (i10 != 3) {
                if (i10 != 4) {
                    throw new IllegalStateException("unknown point choice");
                }
                L v10 = L.v(this.f7126c);
                return org.bouncycastle.util.a.C(new byte[]{4}, v10.x().H(), v10.y().H());
            }
            byte[] H11 = AbstractC14551y.F(this.f7126c).H();
            bArr = new byte[H11.length + 1];
            bArr[0] = 3;
            System.arraycopy(H11, 0, bArr, 1, H11.length);
        }
        return bArr;
    }

    public C2539k z(jk.i iVar) {
        byte[] l10 = iVar.l(true);
        byte b10 = l10[0];
        int i10 = 2;
        if (b10 != 2) {
            i10 = 3;
            if (b10 != 3) {
                i10 = 0;
            }
        }
        int length = l10.length - 1;
        byte[] bArr = new byte[length];
        System.arraycopy(l10, 1, bArr, 0, length);
        return new C2539k(i10, new C0(bArr));
    }

    public C2539k(oh.M m10) {
        InterfaceC14516g F10;
        this.f7125b = m10.g();
        int g10 = m10.g();
        if (g10 != 0) {
            if (g10 == 1) {
                F10 = AbstractC14541t.F(m10.O());
            } else if (g10 != 2 && g10 != 3) {
                if (g10 != 4) {
                    throw new IllegalArgumentException("invalid choice value " + m10.g());
                }
                F10 = L.v(m10.O());
            }
            this.f7126c = F10;
        }
        F10 = AbstractC14551y.F(m10.O());
        this.f7126c = F10;
    }
}
