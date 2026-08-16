package jk;

import java.math.BigInteger;
import jk.AbstractC13875e;
import jk.i;

public class x {

    public static final BigInteger f93944a;

    public static final BigInteger f93945b;

    public static final BigInteger f93946c;

    public static final byte f93947d = 4;

    public static final E[] f93948e;

    public static final byte[][] f93949f;

    public static final E[] f93950g;

    public static final byte[][] f93951h;

    static {
        BigInteger bigInteger = InterfaceC13874d.f93854b;
        BigInteger negate = bigInteger.negate();
        f93944a = negate;
        f93945b = InterfaceC13874d.f93855c.negate();
        BigInteger bigInteger2 = InterfaceC13874d.f93856d;
        BigInteger negate2 = bigInteger2.negate();
        f93946c = negate2;
        BigInteger bigInteger3 = InterfaceC13874d.f93853a;
        f93948e = new E[]{null, new E(bigInteger, bigInteger3), null, new E(negate2, negate), null, new E(negate, negate), null, new E(bigInteger, negate), null, new E(negate, bigInteger), null, new E(bigInteger, bigInteger), null, new E(bigInteger2, bigInteger), null, new E(negate, bigInteger3)};
        f93949f = new byte[][]{null, new byte[]{1}, null, new byte[]{-1, 0, 1}, null, new byte[]{1, 0, 1}, null, new byte[]{-1, 0, 0, 1}};
        f93950g = new E[]{null, new E(bigInteger, bigInteger3), null, new E(negate2, bigInteger), null, new E(negate, bigInteger), null, new E(bigInteger, bigInteger), null, new E(negate, negate), null, new E(bigInteger, negate), null, new E(bigInteger2, negate), null, new E(negate, bigInteger3)};
        f93951h = new byte[][]{null, new byte[]{1}, null, new byte[]{-1, 0, 1}, null, new byte[]{1, 0, 1}, null, new byte[]{-1, 0, 0, -1}};
    }

    public static v a(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, byte b10, int i10, int i11) {
        BigInteger multiply = bigInteger2.multiply(bigInteger.shiftRight(((i10 - r0) - 2) + b10));
        BigInteger add = multiply.add(bigInteger3.multiply(multiply.shiftRight(i10)));
        int i12 = (((i10 + 5) / 2) + i11) - i11;
        BigInteger shiftRight = add.shiftRight(i12);
        if (add.testBit(i12 - 1)) {
            shiftRight = shiftRight.add(InterfaceC13874d.f93854b);
        }
        return new v(shiftRight, i11);
    }

    public static BigInteger[] b(byte b10, int i10, boolean z10) {
        BigInteger bigInteger;
        BigInteger bigInteger2;
        if (b10 != 1 && b10 != -1) {
            throw new IllegalArgumentException("mu must be 1 or -1");
        }
        if (z10) {
            bigInteger = InterfaceC13874d.f93855c;
            bigInteger2 = BigInteger.valueOf(b10);
        } else {
            bigInteger = InterfaceC13874d.f93853a;
            bigInteger2 = InterfaceC13874d.f93854b;
        }
        int i11 = 1;
        while (i11 < i10) {
            i11++;
            BigInteger bigInteger3 = bigInteger2;
            bigInteger2 = (b10 < 0 ? bigInteger2.negate() : bigInteger2).subtract(bigInteger.shiftLeft(1));
            bigInteger = bigInteger3;
        }
        return new BigInteger[]{bigInteger, bigInteger2};
    }

    public static byte c(int i10) {
        return (byte) (i10 == 0 ? -1 : 1);
    }

    public static byte d(AbstractC13875e.b bVar) {
        if (bVar.P()) {
            return bVar.p().j() ? (byte) -1 : (byte) 1;
        }
        throw new IllegalArgumentException("No Koblitz curve (ABC), TNAF multiplication not possible");
    }

    public static byte e(f fVar) {
        return (byte) (fVar.j() ? -1 : 1);
    }

    public static i.b[] f(i.b bVar, byte b10) {
        i.b bVar2 = (i.b) bVar.A();
        byte[][] bArr = b10 == 0 ? f93949f : f93951h;
        i.b[] bVarArr = new i.b[(bArr.length + 1) >>> 1];
        bVarArr[0] = bVar;
        int length = bArr.length;
        for (int i10 = 3; i10 < length; i10 += 2) {
            bVarArr[i10 >>> 1] = k(bVar, bVar2, bArr[i10]);
        }
        bVar.i().E(bVarArr);
        return bVarArr;
    }

    public static int g(BigInteger bigInteger) {
        if (bigInteger != null) {
            if (bigInteger.equals(InterfaceC13874d.f93855c)) {
                return 1;
            }
            if (bigInteger.equals(InterfaceC13874d.f93857e)) {
                return 2;
            }
        }
        throw new IllegalArgumentException("h (Cofactor) must be 2 or 4");
    }

    public static BigInteger[] h(int i10, int i11, BigInteger bigInteger) {
        byte c10 = c(i11);
        int g10 = g(bigInteger);
        BigInteger[] b10 = b(c10, (i10 + 3) - i11, false);
        if (c10 == 1) {
            b10[0] = b10[0].negate();
            b10[1] = b10[1].negate();
        }
        BigInteger bigInteger2 = InterfaceC13874d.f93854b;
        return new BigInteger[]{bigInteger2.add(b10[1]).shiftRight(g10), bigInteger2.add(b10[0]).shiftRight(g10).negate()};
    }

    public static BigInteger[] i(AbstractC13875e.b bVar) {
        if (bVar.P()) {
            return h(bVar.w(), bVar.p().v().intValue(), bVar.s());
        }
        throw new IllegalArgumentException("si is defined for Koblitz curves only");
    }

    public static BigInteger j(byte b10, int i10) {
        if (i10 == 4) {
            return b10 == 1 ? BigInteger.valueOf(6L) : BigInteger.valueOf(10L);
        }
        BigInteger[] b11 = b(b10, i10, false);
        BigInteger bit = InterfaceC13874d.f93853a.setBit(i10);
        return b11[0].shiftLeft(1).multiply(b11[1].modInverse(bit)).mod(bit);
    }

    public static i.b k(i.b bVar, i.b bVar2, byte[] bArr) {
        i.b bVar3 = (i.b) bVar.i().x();
        int i10 = 0;
        for (int length = bArr.length - 1; length >= 0; length--) {
            i10++;
            byte b10 = bArr[length];
            if (b10 != 0) {
                bVar3 = (i.b) bVar3.P(i10).a(b10 > 0 ? bVar : bVar2);
                i10 = 0;
            }
        }
        return i10 > 0 ? bVar3.P(i10) : bVar3;
    }

    public static i.b l(i.b bVar, BigInteger bigInteger) {
        AbstractC13875e.b bVar2 = (AbstractC13875e.b) bVar.i();
        int intValue = bVar2.p().v().intValue();
        return m(bVar, p(bVar2, bigInteger, (byte) intValue, c(intValue), (byte) 10));
    }

    public static i.b m(i.b bVar, E e10) {
        return k(bVar, (i.b) bVar.A(), s(e(((AbstractC13875e.b) bVar.i()).p()), e10));
    }

    public static BigInteger n(byte b10, E e10) {
        BigInteger subtract;
        BigInteger bigInteger = e10.f93851a;
        BigInteger multiply = bigInteger.multiply(bigInteger);
        if (b10 == 1) {
            subtract = e10.f93852b.shiftLeft(1).add(e10.f93851a);
        } else {
            if (b10 != -1) {
                throw new IllegalArgumentException("mu must be 1 or -1");
            }
            subtract = e10.f93852b.shiftLeft(1).subtract(e10.f93851a);
        }
        return subtract.multiply(e10.f93852b).add(multiply);
    }

    public static v o(byte b10, v vVar, v vVar2) {
        v t10;
        v o10 = vVar.o(vVar);
        v o11 = vVar.o(vVar2);
        v r10 = vVar2.o(vVar2).r(1);
        if (b10 == 1) {
            t10 = o10.b(o11);
        } else {
            if (b10 != -1) {
                throw new IllegalArgumentException("mu must be 1 or -1");
            }
            t10 = o10.t(o11);
        }
        return t10.b(r10);
    }

    public static E p(AbstractC13875e.b bVar, BigInteger bigInteger, byte b10, byte b11, byte b12) {
        BigInteger bigInteger2;
        int w10 = bVar.w();
        BigInteger[] M10 = bVar.M();
        BigInteger add = b11 == 1 ? M10[0].add(M10[1]) : M10[0].subtract(M10[1]);
        if (bVar.P()) {
            BigInteger bigInteger3 = InterfaceC13874d.f93854b;
            bigInteger2 = bigInteger3.shiftLeft(w10).add(bigInteger3).subtract(bVar.A().multiply(bVar.s()));
        } else {
            bigInteger2 = b(b11, w10, true)[1];
        }
        BigInteger bigInteger4 = bigInteger2;
        E q10 = q(a(bigInteger, M10[0], bigInteger4, b10, w10, b12), a(bigInteger, M10[1], bigInteger4, b10, w10, b12), b11);
        return new E(bigInteger.subtract(add.multiply(q10.f93851a)).subtract(M10[1].multiply(q10.f93852b).shiftLeft(1)), M10[1].multiply(q10.f93851a).subtract(M10[0].multiply(q10.f93852b)));
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0066, code lost:
    
        if (r5.e(jk.x.f93944a) < 0) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0081, code lost:
    
        if (r5.e(r9) >= 0) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x008d, code lost:
    
        if (r8.e(jk.x.f93945b) < 0) goto L31;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static E q(v vVar, v vVar2, byte b10) {
        v b11;
        v t10;
        if (vVar2.k() != vVar.k()) {
            throw new IllegalArgumentException("lambda0 and lambda1 do not have same scale");
        }
        int i10 = -1;
        int i11 = 1;
        if (b10 != 1 && b10 != -1) {
            throw new IllegalArgumentException("mu must be 1 or -1");
        }
        BigInteger q10 = vVar.q();
        BigInteger q11 = vVar2.q();
        v s10 = vVar.s(q10);
        v s11 = vVar2.s(q11);
        v b12 = s10.b(s10);
        v b13 = b10 == 1 ? b12.b(s11) : b12.t(s11);
        v b14 = s11.b(s11).b(s11);
        v b15 = b14.b(s11);
        if (b10 == 1) {
            b11 = s10.t(b14);
            t10 = s10.b(b15);
        } else {
            b11 = s10.b(b14);
            t10 = s10.t(b15);
        }
        BigInteger bigInteger = InterfaceC13874d.f93854b;
        byte b16 = 0;
        if (b13.e(bigInteger) < 0) {
            if (t10.e(InterfaceC13874d.f93855c) < 0) {
                i11 = 0;
            }
            i11 = 0;
            b16 = b10;
        }
        if (b13.e(f93944a) < 0) {
        }
        b16 = (byte) (-b10);
        i10 = i11;
        return new E(q10.add(BigInteger.valueOf(i10)), q11.add(BigInteger.valueOf(b16)));
    }

    public static i.b r(i.b bVar) {
        return bVar.O();
    }

    public static byte[] s(byte b10, E e10) {
        if (b10 != 1 && b10 != -1) {
            throw new IllegalArgumentException("mu must be 1 or -1");
        }
        int bitLength = n(b10, e10).bitLength();
        byte[] bArr = new byte[bitLength > 30 ? bitLength + 4 : 34];
        BigInteger bigInteger = e10.f93851a;
        BigInteger bigInteger2 = e10.f93852b;
        int i10 = 0;
        int i11 = 0;
        while (true) {
            BigInteger bigInteger3 = InterfaceC13874d.f93853a;
            if (bigInteger.equals(bigInteger3) && bigInteger2.equals(bigInteger3)) {
                int i12 = i10 + 1;
                byte[] bArr2 = new byte[i12];
                System.arraycopy(bArr, 0, bArr2, 0, i12);
                return bArr2;
            }
            if (bigInteger.testBit(0)) {
                byte intValue = (byte) InterfaceC13874d.f93855c.subtract(bigInteger.subtract(bigInteger2.shiftLeft(1)).mod(InterfaceC13874d.f93857e)).intValue();
                bArr[i11] = intValue;
                bigInteger = intValue == 1 ? bigInteger.clearBit(0) : bigInteger.add(InterfaceC13874d.f93854b);
                i10 = i11;
            } else {
                bArr[i11] = 0;
            }
            BigInteger shiftRight = bigInteger.shiftRight(1);
            BigInteger add = b10 == 1 ? bigInteger2.add(shiftRight) : bigInteger2.subtract(shiftRight);
            BigInteger negate = bigInteger.shiftRight(1).negate();
            i11++;
            bigInteger = add;
            bigInteger2 = negate;
        }
    }

    public static byte[] t(byte b10, E e10, int i10, int i11, E[] eArr) {
        if (b10 != 1 && b10 != -1) {
            throw new IllegalArgumentException("mu must be 1 or -1");
        }
        int bitLength = n(b10, e10).bitLength();
        byte[] bArr = new byte[bitLength > 30 ? bitLength + 4 + i10 : i10 + 34];
        int i12 = (1 << i10) - 1;
        int i13 = 32 - i10;
        BigInteger bigInteger = e10.f93851a;
        BigInteger bigInteger2 = e10.f93852b;
        int i14 = 0;
        while (true) {
            if (bigInteger.bitLength() <= 62 && bigInteger2.bitLength() <= 62) {
                break;
            }
            if (bigInteger.testBit(0)) {
                int intValue = bigInteger.intValue() + (bigInteger2.intValue() * i11);
                int i15 = intValue & i12;
                bArr[i14] = (byte) ((intValue << i13) >> i13);
                bigInteger = bigInteger.subtract(eArr[i15].f93851a);
                bigInteger2 = bigInteger2.subtract(eArr[i15].f93852b);
            }
            i14++;
            BigInteger shiftRight = bigInteger.shiftRight(1);
            BigInteger add = b10 == 1 ? bigInteger2.add(shiftRight) : bigInteger2.subtract(shiftRight);
            BigInteger negate = shiftRight.negate();
            bigInteger = add;
            bigInteger2 = negate;
        }
        long m10 = org.bouncycastle.util.b.m(bigInteger);
        long m11 = org.bouncycastle.util.b.m(bigInteger2);
        while ((m10 | m11) != 0) {
            if ((1 & m10) != 0) {
                int i16 = ((int) m10) + (((int) m11) * i11);
                int i17 = i16 & i12;
                bArr[i14] = (byte) ((i16 << i13) >> i13);
                m10 -= eArr[i17].f93851a.intValue();
                m11 -= eArr[i17].f93852b.intValue();
            }
            i14++;
            long j10 = m10 >> 1;
            long j11 = b10 == 1 ? m11 + j10 : m11 - j10;
            long j12 = -j10;
            m10 = j11;
            m11 = j12;
        }
        return bArr;
    }
}
