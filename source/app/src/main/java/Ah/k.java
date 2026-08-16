package Ah;

import java.math.BigInteger;
import java.util.Enumeration;
import oh.AbstractC14551y;
import oh.B;
import oh.C0;
import oh.C14518h;
import oh.C14549x;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;
import oh.M;

public class k extends n {

    public static final int f756k = 1;

    public static final int f757l = 2;

    public static final int f758m = 4;

    public static final int f759n = 8;

    public static final int f760o = 16;

    public static final int f761p = 32;

    public static final int f762q = 64;

    public C14549x f763b;

    public BigInteger f764c;

    public BigInteger f765d;

    public BigInteger f766e;

    public byte[] f767f;

    public BigInteger f768g;

    public byte[] f769h;

    public BigInteger f770i;

    public int f771j;

    public k(C14549x c14549x, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, byte[] bArr, BigInteger bigInteger4, byte[] bArr2, int i10) {
        this.f763b = c14549x;
        J(bigInteger);
        H(bigInteger2);
        L(bigInteger3);
        F(new C0(bArr));
        I(bigInteger4);
        K(new C0(bArr2));
        G(BigInteger.valueOf(i10));
    }

    public BigInteger A() {
        if ((this.f771j & 16) != 0) {
            return this.f768g;
        }
        return null;
    }

    public BigInteger B() {
        if ((this.f771j & 1) != 0) {
            return this.f764c;
        }
        return null;
    }

    public byte[] C() {
        if ((this.f771j & 32) != 0) {
            return org.bouncycastle.util.a.p(this.f769h);
        }
        return null;
    }

    public BigInteger D() {
        if ((this.f771j & 4) != 0) {
            return this.f766e;
        }
        return null;
    }

    public boolean E() {
        return this.f764c != null;
    }

    public final void F(AbstractC14551y abstractC14551y) throws IllegalArgumentException {
        int i10 = this.f771j;
        if ((i10 & 8) != 0) {
            throw new IllegalArgumentException("Base Point G already set");
        }
        this.f771j = i10 | 8;
        this.f767f = abstractC14551y.H();
    }

    public final void G(BigInteger bigInteger) throws IllegalArgumentException {
        int i10 = this.f771j;
        if ((i10 & 64) != 0) {
            throw new IllegalArgumentException("Cofactor F already set");
        }
        this.f771j = i10 | 64;
        this.f770i = bigInteger;
    }

    public final void H(BigInteger bigInteger) throws IllegalArgumentException {
        int i10 = this.f771j;
        if ((i10 & 2) != 0) {
            throw new IllegalArgumentException("First Coef A already set");
        }
        this.f771j = i10 | 2;
        this.f765d = bigInteger;
    }

    public final void I(BigInteger bigInteger) throws IllegalArgumentException {
        int i10 = this.f771j;
        if ((i10 & 16) != 0) {
            throw new IllegalArgumentException("Order of base point R already set");
        }
        this.f771j = i10 | 16;
        this.f768g = bigInteger;
    }

    public final void J(BigInteger bigInteger) {
        int i10 = this.f771j;
        if ((i10 & 1) != 0) {
            throw new IllegalArgumentException("Prime Modulus P already set");
        }
        this.f771j = i10 | 1;
        this.f764c = bigInteger;
    }

    public final void K(AbstractC14551y abstractC14551y) throws IllegalArgumentException {
        int i10 = this.f771j;
        if ((i10 & 32) != 0) {
            throw new IllegalArgumentException("Public Point Y already set");
        }
        this.f771j = i10 | 32;
        this.f769h = abstractC14551y.H();
    }

    public final void L(BigInteger bigInteger) throws IllegalArgumentException {
        int i10 = this.f771j;
        if ((i10 & 4) != 0) {
            throw new IllegalArgumentException("Second Coef B already set");
        }
        this.f771j = i10 | 4;
        this.f766e = bigInteger;
    }

    @Override
    public B r() {
        return new G0(w(this.f763b, !E()));
    }

    @Override
    public C14549x v() {
        return this.f763b;
    }

    public C14518h w(C14549x c14549x, boolean z10) {
        C14518h c14518h = new C14518h(8);
        c14518h.a(c14549x);
        if (!z10) {
            c14518h.a(new p(1, B()));
            c14518h.a(new p(2, z()));
            c14518h.a(new p(3, D()));
            c14518h.a(new K0(false, 4, (InterfaceC14516g) new C0(x())));
            c14518h.a(new p(5, A()));
        }
        c14518h.a(new K0(false, 6, (InterfaceC14516g) new C0(C())));
        if (!z10) {
            c14518h.a(new p(7, y()));
        }
        return c14518h;
    }

    public byte[] x() {
        if ((this.f771j & 8) != 0) {
            return org.bouncycastle.util.a.p(this.f767f);
        }
        return null;
    }

    public BigInteger y() {
        if ((this.f771j & 64) != 0) {
            return this.f770i;
        }
        return null;
    }

    public BigInteger z() {
        if ((this.f771j & 2) != 0) {
            return this.f765d;
        }
        return null;
    }

    public k(C14549x c14549x, byte[] bArr) throws IllegalArgumentException {
        this.f763b = c14549x;
        K(new C0(bArr));
    }

    public k(E e10) throws IllegalArgumentException {
        Enumeration J10 = e10.J();
        this.f763b = C14549x.K(J10.nextElement());
        this.f771j = 0;
        while (J10.hasMoreElements()) {
            Object nextElement = J10.nextElement();
            if (!(nextElement instanceof M)) {
                throw new IllegalArgumentException("Unknown Object Identifier!");
            }
            M m10 = (M) nextElement;
            switch (m10.g()) {
                case 1:
                    J(p.v(m10).x());
                    break;
                case 2:
                    H(p.v(m10).x());
                    break;
                case 3:
                    L(p.v(m10).x());
                    break;
                case 4:
                    F(AbstractC14551y.G(m10, false));
                    break;
                case 5:
                    I(p.v(m10).x());
                    break;
                case 6:
                    K(AbstractC14551y.G(m10, false));
                    break;
                case 7:
                    G(p.v(m10).x());
                    break;
                default:
                    this.f771j = 0;
                    throw new IllegalArgumentException("Unknown Object Identifier!");
            }
        }
        int i10 = this.f771j;
        if (i10 != 32 && i10 != 127) {
            throw new IllegalArgumentException("All options must be either present or absent!");
        }
    }
}
