package jk;

import java.math.BigInteger;
import jk.AbstractC13875e;
import nk.InterfaceC14455a;
import rk.InterfaceC15191b;
import rk.InterfaceC15196g;
import sk.AbstractC15329o;

public class C13873c {
    public static i a(AbstractC13875e abstractC13875e, i iVar) {
        if (abstractC13875e.n(iVar.i())) {
            return abstractC13875e.l(iVar.l(false));
        }
        throw new IllegalArgumentException("Point must be on the same curve");
    }

    public static i b(i iVar) {
        if (iVar.y()) {
            return iVar;
        }
        throw new IllegalStateException("Invalid result");
    }

    public static i c(i iVar, BigInteger bigInteger, i iVar2, BigInteger bigInteger2) {
        i a10;
        i b10;
        AbstractC13875e i10 = iVar.i();
        int a11 = m.a(i10);
        if (bigInteger.bitLength() > a11 || bigInteger2.bitLength() > a11) {
            throw new IllegalStateException("fixed-point comb doesn't support scalars larger than the curve order");
        }
        l c10 = m.c(iVar);
        l c11 = m.c(iVar2);
        g a12 = c10.a();
        g a13 = c11.a();
        int c12 = c10.c();
        if (c12 != c11.c()) {
            k kVar = new k();
            a10 = kVar.a(iVar, bigInteger);
            b10 = kVar.a(iVar2, bigInteger2);
        } else {
            int i11 = ((a11 + c12) - 1) / c12;
            i x10 = i10.x();
            int i12 = c12 * i11;
            int[] U10 = AbstractC15329o.U(i12, bigInteger);
            int[] U11 = AbstractC15329o.U(i12, bigInteger2);
            int i13 = i12 - 1;
            for (int i14 = 0; i14 < i11; i14++) {
                int i15 = 0;
                int i16 = 0;
                for (int i17 = i13 - i14; i17 >= 0; i17 -= i11) {
                    int i18 = i17 >>> 5;
                    int i19 = i17 & 31;
                    int i20 = U10[i18] >>> i19;
                    i15 = ((i15 ^ (i20 >>> 1)) << 1) ^ i20;
                    int i21 = U11[i18] >>> i19;
                    i16 = ((i16 ^ (i21 >>> 1)) << 1) ^ i21;
                }
                x10 = x10.N(a12.b(i15).a(a13.b(i16)));
            }
            a10 = x10.a(c10.b());
            b10 = c11.b();
        }
        return a10.a(b10);
    }

    public static i d(i iVar, BigInteger bigInteger, i iVar2, BigInteger bigInteger2) {
        AbstractC13875e i10 = iVar.i();
        i x10 = i10.x();
        i[] iVarArr = {iVar2, iVar.J(iVar2), iVar, iVar.a(iVar2)};
        i10.E(iVarArr);
        i[] iVarArr2 = {iVarArr[3].A(), iVarArr[2].A(), iVarArr[1].A(), iVarArr[0].A(), x10, iVarArr[0], iVarArr[1], iVarArr[2], iVarArr[3]};
        byte[] f10 = B.f(bigInteger, bigInteger2);
        int length = f10.length;
        while (true) {
            length--;
            if (length < 0) {
                return x10;
            }
            byte b10 = f10[length];
            x10 = x10.N(iVarArr2[(((b10 << 24) >> 28) * 3) + 4 + ((b10 << 28) >> 28)]);
        }
    }

    public static i e(i iVar, BigInteger bigInteger, i iVar2, BigInteger bigInteger2) {
        boolean z10 = bigInteger.signum() < 0;
        boolean z11 = bigInteger2.signum() < 0;
        BigInteger abs = bigInteger.abs();
        BigInteger abs2 = bigInteger2.abs();
        int m10 = B.m(abs.bitLength(), 8);
        int m11 = B.m(abs2.bitLength(), 8);
        C13870A p10 = B.p(iVar, m10, true);
        C13870A p11 = B.p(iVar2, m11, true);
        int a10 = m.a(iVar.i());
        if (!z10 && !z11 && bigInteger.bitLength() <= a10 && bigInteger2.bitLength() <= a10 && p10.h() && p11.h()) {
            return c(iVar, bigInteger, iVar2, bigInteger2);
        }
        int min = Math.min(8, p10.g());
        int min2 = Math.min(8, p11.g());
        return g(z10 ? p10.d() : p10.c(), z10 ? p10.c() : p10.d(), B.h(min, abs), z11 ? p11.d() : p11.c(), z11 ? p11.c() : p11.d(), B.h(min2, abs2));
    }

    public static i f(InterfaceC14455a interfaceC14455a, i iVar, BigInteger bigInteger, BigInteger bigInteger2) {
        boolean z10 = bigInteger.signum() < 0;
        boolean z11 = bigInteger2.signum() < 0;
        BigInteger abs = bigInteger.abs();
        BigInteger abs2 = bigInteger2.abs();
        C13870A p10 = B.p(iVar, B.m(Math.max(abs.bitLength(), abs2.bitLength()), 8), true);
        C13870A q10 = B.q(nk.c.c(interfaceC14455a, iVar), interfaceC14455a.c(), p10, true);
        int min = Math.min(8, p10.g());
        int min2 = Math.min(8, q10.g());
        return g(z10 ? p10.d() : p10.c(), z10 ? p10.c() : p10.d(), B.h(min, abs), z11 ? q10.d() : q10.c(), z11 ? q10.c() : q10.d(), B.h(min2, abs2));
    }

    public static i g(i[] iVarArr, i[] iVarArr2, byte[] bArr, i[] iVarArr3, i[] iVarArr4, byte[] bArr2) {
        i iVar;
        int max = Math.max(bArr.length, bArr2.length);
        i x10 = iVarArr[0].i().x();
        int i10 = max - 1;
        int i11 = 0;
        i iVar2 = x10;
        while (i10 >= 0) {
            byte b10 = i10 < bArr.length ? bArr[i10] : (byte) 0;
            byte b11 = i10 < bArr2.length ? bArr2[i10] : (byte) 0;
            if ((b10 | b11) == 0) {
                i11++;
            } else {
                if (b10 != 0) {
                    iVar = x10.a((b10 < 0 ? iVarArr2 : iVarArr)[Math.abs((int) b10) >>> 1]);
                } else {
                    iVar = x10;
                }
                if (b11 != 0) {
                    iVar = iVar.a((b11 < 0 ? iVarArr4 : iVarArr3)[Math.abs((int) b11) >>> 1]);
                }
                if (i11 > 0) {
                    iVar2 = iVar2.L(i11);
                    i11 = 0;
                }
                iVar2 = iVar2.N(iVar);
            }
            i10--;
        }
        return i11 > 0 ? iVar2.L(i11) : iVar2;
    }

    public static i h(InterfaceC14455a interfaceC14455a, i[] iVarArr, BigInteger[] bigIntegerArr) {
        i[] iVarArr2 = iVarArr;
        int length = iVarArr2.length;
        int i10 = length << 1;
        boolean[] zArr = new boolean[i10];
        C13870A[] c13870aArr = new C13870A[i10];
        byte[][] bArr = new byte[i10];
        j c10 = interfaceC14455a.c();
        int i11 = 0;
        while (i11 < length) {
            int i12 = i11 << 1;
            int i13 = i12 + 1;
            BigInteger bigInteger = bigIntegerArr[i12];
            zArr[i12] = bigInteger.signum() < 0;
            BigInteger abs = bigInteger.abs();
            BigInteger bigInteger2 = bigIntegerArr[i13];
            zArr[i13] = bigInteger2.signum() < 0;
            BigInteger abs2 = bigInteger2.abs();
            int m10 = B.m(Math.max(abs.bitLength(), abs2.bitLength()), 8);
            i iVar = iVarArr2[i11];
            C13870A p10 = B.p(iVar, m10, true);
            C13870A q10 = B.q(nk.c.c(interfaceC14455a, iVar), c10, p10, true);
            int min = Math.min(8, p10.g());
            int min2 = Math.min(8, q10.g());
            c13870aArr[i12] = p10;
            c13870aArr[i13] = q10;
            bArr[i12] = B.h(min, abs);
            bArr[i13] = B.h(min2, abs2);
            i11++;
            iVarArr2 = iVarArr;
        }
        return j(zArr, c13870aArr, bArr);
    }

    public static i i(i[] iVarArr, BigInteger[] bigIntegerArr) {
        int length = iVarArr.length;
        boolean[] zArr = new boolean[length];
        C13870A[] c13870aArr = new C13870A[length];
        byte[][] bArr = new byte[length];
        for (int i10 = 0; i10 < length; i10++) {
            BigInteger bigInteger = bigIntegerArr[i10];
            zArr[i10] = bigInteger.signum() < 0;
            BigInteger abs = bigInteger.abs();
            C13870A p10 = B.p(iVarArr[i10], B.m(abs.bitLength(), 8), true);
            int min = Math.min(8, p10.g());
            c13870aArr[i10] = p10;
            bArr[i10] = B.h(min, abs);
        }
        return j(zArr, c13870aArr, bArr);
    }

    public static i j(boolean[] zArr, C13870A[] c13870aArr, byte[][] bArr) {
        int length = bArr.length;
        int i10 = 0;
        for (byte[] bArr2 : bArr) {
            i10 = Math.max(i10, bArr2.length);
        }
        i x10 = c13870aArr[0].c()[0].i().x();
        int i11 = i10 - 1;
        int i12 = 0;
        i iVar = x10;
        while (i11 >= 0) {
            i iVar2 = x10;
            for (int i13 = 0; i13 < length; i13++) {
                byte[] bArr3 = bArr[i13];
                byte b10 = i11 < bArr3.length ? bArr3[i11] : (byte) 0;
                if (b10 != 0) {
                    int abs = Math.abs((int) b10);
                    C13870A c13870a = c13870aArr[i13];
                    iVar2 = iVar2.a(((b10 < 0) == zArr[i13] ? c13870a.c() : c13870a.d())[abs >>> 1]);
                }
            }
            if (iVar2 == x10) {
                i12++;
            } else {
                if (i12 > 0) {
                    iVar = iVar.L(i12);
                    i12 = 0;
                }
                iVar = iVar.N(iVar2);
            }
            i11--;
        }
        return i12 > 0 ? iVar.L(i12) : iVar;
    }

    public static i k(i[] iVarArr, BigInteger[] bigIntegerArr, nk.d dVar) {
        BigInteger A10 = iVarArr[0].i().A();
        int length = iVarArr.length;
        int i10 = length << 1;
        BigInteger[] bigIntegerArr2 = new BigInteger[i10];
        int i11 = 0;
        for (int i12 = 0; i12 < length; i12++) {
            BigInteger[] a10 = dVar.a(bigIntegerArr[i12].mod(A10));
            int i13 = i11 + 1;
            bigIntegerArr2[i11] = a10[0];
            i11 += 2;
            bigIntegerArr2[i13] = a10[1];
        }
        if (dVar.b()) {
            return h(dVar, iVarArr, bigIntegerArr2);
        }
        i[] iVarArr2 = new i[i10];
        int i14 = 0;
        for (i iVar : iVarArr) {
            i c10 = nk.c.c(dVar, iVar);
            int i15 = i14 + 1;
            iVarArr2[i14] = iVar;
            i14 += 2;
            iVarArr2[i15] = c10;
        }
        return i(iVarArr2, bigIntegerArr2);
    }

    public static i l(AbstractC13875e abstractC13875e, i iVar) {
        if (abstractC13875e.n(iVar.i())) {
            return abstractC13875e.C(iVar);
        }
        throw new IllegalArgumentException("Point must be on the same curve");
    }

    public static boolean m(AbstractC13875e abstractC13875e) {
        return n(abstractC13875e.v());
    }

    public static boolean n(InterfaceC15191b interfaceC15191b) {
        return interfaceC15191b.getDimension() > 1 && interfaceC15191b.b().equals(InterfaceC13874d.f93855c) && (interfaceC15191b instanceof InterfaceC15196g);
    }

    public static boolean o(AbstractC13875e abstractC13875e) {
        return p(abstractC13875e.v());
    }

    public static boolean p(InterfaceC15191b interfaceC15191b) {
        return interfaceC15191b.getDimension() == 1;
    }

    public static void q(f[] fVarArr, int i10, int i11) {
        r(fVarArr, i10, i11, null);
    }

    public static void r(f[] fVarArr, int i10, int i11, f fVar) {
        f[] fVarArr2 = new f[i11];
        int i12 = 0;
        fVarArr2[0] = fVarArr[i10];
        while (true) {
            int i13 = i12 + 1;
            if (i13 >= i11) {
                break;
            }
            fVarArr2[i13] = fVarArr2[i12].k(fVarArr[i10 + i13]);
            i12 = i13;
        }
        if (fVar != null) {
            fVarArr2[i12] = fVarArr2[i12].k(fVar);
        }
        f h10 = fVarArr2[i12].h();
        while (i12 > 0) {
            int i14 = i12 - 1;
            int i15 = i12 + i10;
            f fVar2 = fVarArr[i15];
            fVarArr[i15] = fVarArr2[i14].k(h10);
            h10 = h10.k(fVar2);
            i12 = i14;
        }
        fVarArr[i10] = h10;
    }

    public static i s(i iVar, BigInteger bigInteger) {
        BigInteger abs = bigInteger.abs();
        i x10 = iVar.i().x();
        int bitLength = abs.bitLength();
        if (bitLength > 0) {
            if (abs.testBit(0)) {
                x10 = iVar;
            }
            for (int i10 = 1; i10 < bitLength; i10++) {
                iVar = iVar.M();
                if (abs.testBit(i10)) {
                    x10 = x10.a(iVar);
                }
            }
        }
        return bigInteger.signum() < 0 ? x10.A() : x10;
    }

    public static i t(i iVar, BigInteger bigInteger, i iVar2, BigInteger bigInteger2) {
        return b(d(iVar, bigInteger, l(iVar.i(), iVar2), bigInteger2));
    }

    public static i u(i[] iVarArr, BigInteger[] bigIntegerArr) {
        if (iVarArr != null && bigIntegerArr != null && iVarArr.length == bigIntegerArr.length) {
            if (iVarArr.length >= 1) {
                int length = iVarArr.length;
                if (length == 1) {
                    return iVarArr[0].z(bigIntegerArr[0]);
                }
                if (length == 2) {
                    return v(iVarArr[0], bigIntegerArr[0], iVarArr[1], bigIntegerArr[1]);
                }
                i iVar = iVarArr[0];
                AbstractC13875e i10 = iVar.i();
                i[] iVarArr2 = new i[length];
                iVarArr2[0] = iVar;
                for (int i11 = 1; i11 < length; i11++) {
                    iVarArr2[i11] = l(i10, iVarArr[i11]);
                }
                InterfaceC14455a u10 = i10.u();
                return u10 instanceof nk.d ? b(k(iVarArr2, bigIntegerArr, (nk.d) u10)) : b(i(iVarArr2, bigIntegerArr));
            }
        }
        throw new IllegalArgumentException("point and scalar arrays should be non-null, and of equal, non-zero, length");
    }

    public static i v(i iVar, BigInteger bigInteger, i iVar2, BigInteger bigInteger2) {
        i k10;
        AbstractC13875e i10 = iVar.i();
        i l10 = l(i10, iVar2);
        if ((i10 instanceof AbstractC13875e.b) && ((AbstractC13875e.b) i10).P()) {
            k10 = iVar.z(bigInteger).a(l10.z(bigInteger2));
        } else {
            InterfaceC14455a u10 = i10.u();
            k10 = u10 instanceof nk.d ? k(new i[]{iVar, l10}, new BigInteger[]{bigInteger, bigInteger2}, (nk.d) u10) : e(iVar, bigInteger, l10, bigInteger2);
        }
        return b(k10);
    }

    public static i w(i iVar) {
        if (iVar.x()) {
            return iVar;
        }
        throw new IllegalStateException("Invalid point");
    }
}
