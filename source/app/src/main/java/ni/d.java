package Ni;

import Bi.InterfaceC2374f;
import java.math.BigInteger;
import org.bouncycastle.crypto.util.r;
import org.bouncycastle.util.k;
import org.bouncycastle.util.p;

public class d {

    public static final String f16383a = "org.bouncycastle.fpe.disable";

    public static final String f16384b = "org.bouncycastle.fpe.disable_ff1";

    public static final int f16385c = 16;

    public static final double f16386d = Math.log(2.0d);

    public static final double f16387e = Math.pow(2.0d, 96.0d);

    public static short[] A(InterfaceC2374f interfaceC2374f, r rVar, byte[] bArr, short[] sArr, int i10, int i11) {
        h(interfaceC2374f, false, rVar.d(), sArr, i10, i11);
        if (bArr.length == 8) {
            return E(interfaceC2374f, rVar, bArr, sArr, i10, i11);
        }
        throw new IllegalArgumentException();
    }

    public static byte[] B(InterfaceC2374f interfaceC2374f, r rVar, byte[] bArr, byte[] bArr2, int i10, int i11) {
        int i12 = i11 / 2;
        int i13 = i11 - i12;
        return H(n(interfaceC2374f, rVar, bArr, i11, i12, i13, I(bArr2, i10, i13), I(bArr2, i10 + i13, i12)));
    }

    public static short[] C(InterfaceC2374f interfaceC2374f, r rVar, byte[] bArr, short[] sArr, int i10, int i11) {
        int i12 = i11 / 2;
        int i13 = i11 - i12;
        short[] sArr2 = new short[i13];
        short[] sArr3 = new short[i12];
        System.arraycopy(sArr, i10, sArr2, 0, i13);
        System.arraycopy(sArr, i10 + i13, sArr3, 0, i12);
        return n(interfaceC2374f, rVar, bArr, i11, i12, i13, sArr2, sArr3);
    }

    public static byte[] D(InterfaceC2374f interfaceC2374f, r rVar, byte[] bArr, byte[] bArr2, int i10, int i11) {
        int i12 = i11 / 2;
        int i13 = i11 - i12;
        return H(u(interfaceC2374f, rVar, bArr, i11, i12, i13, I(bArr2, i10, i13), I(bArr2, i10 + i13, i12)));
    }

    public static short[] E(InterfaceC2374f interfaceC2374f, r rVar, byte[] bArr, short[] sArr, int i10, int i11) {
        int i12 = i11 / 2;
        int i13 = i11 - i12;
        short[] sArr2 = new short[i13];
        short[] sArr3 = new short[i12];
        System.arraycopy(sArr, i10, sArr2, 0, i13);
        System.arraycopy(sArr, i10 + i13, sArr3, 0, i12);
        return u(interfaceC2374f, rVar, bArr, i11, i12, i13, sArr2, sArr3);
    }

    public static BigInteger F(byte[] bArr, int i10, int i11) {
        return new BigInteger(1, org.bouncycastle.util.a.X(bArr, i10, i11 + i10));
    }

    public static byte[] G(InterfaceC2374f interfaceC2374f, byte[] bArr) {
        if (bArr.length % 16 != 0) {
            throw new IllegalArgumentException();
        }
        int length = bArr.length / 16;
        byte[] bArr2 = new byte[16];
        for (int i10 = 0; i10 < length; i10++) {
            org.bouncycastle.util.c.c(16, bArr, i10 * 16, bArr2, 0);
            interfaceC2374f.g(bArr2, 0, bArr2, 0);
        }
        return bArr2;
    }

    public static byte[] H(short[] sArr) {
        int length = sArr.length;
        byte[] bArr = new byte[length];
        for (int i10 = 0; i10 != length; i10++) {
            bArr[i10] = (byte) sArr[i10];
        }
        return bArr;
    }

    public static short[] I(byte[] bArr, int i10, int i11) {
        short[] sArr = new short[i11];
        for (int i12 = 0; i12 != i11; i12++) {
            sArr[i12] = (short) (bArr[i10 + i12] & 255);
        }
        return sArr;
    }

    public static int a(int i10, int i11) {
        int e10 = k.e(i10);
        int i12 = e10 * i11;
        int i13 = i10 >>> e10;
        if (i13 != 1) {
            i12 += BigInteger.valueOf(i13).pow(i11).bitLength();
        }
        return (i12 + 7) / 8;
    }

    public static BigInteger[] b(BigInteger bigInteger, int i10, int i11) {
        BigInteger pow = bigInteger.pow(i10);
        BigInteger[] bigIntegerArr = {pow, pow};
        if (i11 != i10) {
            bigIntegerArr[1] = pow.multiply(bigInteger);
        }
        return bigIntegerArr;
    }

    public static byte[] c(int i10, byte b10, int i11, int i12) {
        byte[] bArr = {1, 2, 1, 0, (byte) (i10 >> 8), (byte) i10, 10, b10};
        p.h(i11, bArr, 8);
        p.h(i12, bArr, 12);
        return bArr;
    }

    public static byte[] d(byte[] bArr) {
        byte b10 = bArr[0];
        byte b11 = bArr[1];
        byte b12 = bArr[2];
        byte b13 = bArr[3];
        return new byte[]{b10, b11, b12, (byte) (b13 & 240), bArr[4], bArr[5], bArr[6], (byte) (b13 << 4)};
    }

    public static BigInteger e(InterfaceC2374f interfaceC2374f, byte[] bArr, int i10, int i11, int i12, byte[] bArr2, short[] sArr, r rVar) {
        int length = bArr.length;
        byte[] c10 = org.bouncycastle.util.b.c(rVar.b(sArr));
        int i13 = ((-(length + i10 + 1)) & 15) + length;
        int i14 = i13 + 1 + i10;
        byte[] bArr3 = new byte[i14];
        System.arraycopy(bArr, 0, bArr3, 0, length);
        bArr3[i13] = (byte) i12;
        System.arraycopy(c10, 0, bArr3, i14 - c10.length, c10.length);
        byte[] G10 = G(interfaceC2374f, org.bouncycastle.util.a.B(bArr2, bArr3));
        if (i11 > 16) {
            int i15 = (i11 + 15) / 16;
            byte[] bArr4 = new byte[i15 * 16];
            int a10 = p.a(G10, 12);
            System.arraycopy(G10, 0, bArr4, 0, 16);
            for (int i16 = 1; i16 < i15; i16++) {
                int i17 = i16 * 16;
                System.arraycopy(G10, 0, bArr4, i17, 12);
                p.h(a10 ^ i16, bArr4, i17 + 12);
                interfaceC2374f.g(bArr4, i17, bArr4, i17);
            }
            G10 = bArr4;
        }
        return F(G10, 0, i11);
    }

    public static BigInteger f(InterfaceC2374f interfaceC2374f, byte[] bArr, int i10, int i11, short[] sArr, r rVar) {
        byte[] bArr2 = new byte[16];
        p.h(p.a(bArr, i10) ^ i11, bArr2, 0);
        org.bouncycastle.util.b.a(rVar.b(sArr), bArr2, 4, 12);
        org.bouncycastle.util.a.Q0(bArr2);
        interfaceC2374f.g(bArr2, 0, bArr2, 0);
        org.bouncycastle.util.a.Q0(bArr2);
        return F(bArr2, 0, 16);
    }

    public static void g(InterfaceC2374f interfaceC2374f, boolean z10, int i10, byte[] bArr, int i11, int i12) {
        i(interfaceC2374f);
        if (i10 < 2 || i10 > 256) {
            throw new IllegalArgumentException();
        }
        j(z10, i10, bArr, i11, i12);
    }

    public static void h(InterfaceC2374f interfaceC2374f, boolean z10, int i10, short[] sArr, int i11, int i12) {
        i(interfaceC2374f);
        if (i10 < 2 || i10 > 65536) {
            throw new IllegalArgumentException();
        }
        k(z10, i10, sArr, i11, i12);
    }

    public static void i(InterfaceC2374f interfaceC2374f) {
        if (16 != interfaceC2374f.c()) {
            throw new IllegalArgumentException();
        }
    }

    public static void j(boolean z10, int i10, byte[] bArr, int i11, int i12) {
        l(z10, i10, i12);
        for (int i13 = 0; i13 < i12; i13++) {
            if ((bArr[i11 + i13] & 255) >= i10) {
                throw new IllegalArgumentException("input data outside of radix");
            }
        }
    }

    public static void k(boolean z10, int i10, short[] sArr, int i11, int i12) {
        l(z10, i10, i12);
        for (int i13 = 0; i13 < i12; i13++) {
            if ((sArr[i11 + i13] & 65535) >= i10) {
                throw new IllegalArgumentException("input data outside of radix");
            }
        }
    }

    public static void l(boolean z10, int i10, int i11) {
        int floor;
        if (i11 >= 2) {
            double d10 = i10;
            if (Math.pow(d10, i11) >= 1000000.0d) {
                if (z10 || i11 <= (floor = ((int) Math.floor(Math.log(f16387e) / Math.log(d10))) * 2)) {
                    return;
                }
                throw new IllegalArgumentException("maximum input length is " + floor);
            }
        }
        throw new IllegalArgumentException("input too short");
    }

    public static short[] m(InterfaceC2374f interfaceC2374f, r rVar, byte[] bArr, int i10, int i11, int i12, short[] sArr, short[] sArr2) {
        int d10 = rVar.d();
        int length = bArr.length;
        int a10 = a(d10, i12);
        int i13 = (a10 + 7) & (-4);
        byte[] c10 = c(d10, (byte) i11, i10, length);
        BigInteger[] b10 = b(BigInteger.valueOf(d10), i11, i12);
        short[] sArr3 = sArr;
        short[] sArr4 = sArr2;
        int i14 = i11;
        int i15 = 9;
        while (i15 >= 0) {
            short[] sArr5 = sArr4;
            int i16 = a10;
            short[] sArr6 = sArr3;
            i14 = i10 - i14;
            rVar.g(rVar.b(sArr5).subtract(e(interfaceC2374f, bArr, a10, i13, i15, c10, sArr3, rVar)).mod(b10[i15 & 1]), i14, sArr5);
            i15--;
            sArr3 = sArr5;
            sArr4 = sArr6;
            a10 = i16;
        }
        return org.bouncycastle.util.a.G(sArr3, sArr4);
    }

    public static short[] n(InterfaceC2374f interfaceC2374f, r rVar, byte[] bArr, int i10, int i11, int i12, short[] sArr, short[] sArr2) {
        int i13 = i12;
        BigInteger[] b10 = b(BigInteger.valueOf(rVar.d()), i11, i13);
        org.bouncycastle.util.a.S0(sArr);
        org.bouncycastle.util.a.S0(sArr2);
        short[] sArr3 = sArr;
        short[] sArr4 = sArr2;
        int i14 = 7;
        while (i14 >= 0) {
            int i15 = i10 - i13;
            int i16 = i14 & 1;
            rVar.g(rVar.b(sArr4).subtract(f(interfaceC2374f, bArr, 4 - (i16 * 4), i14, sArr3, rVar)).mod(b10[1 - i16]), i15, sArr4);
            i14--;
            i13 = i15;
            short[] sArr5 = sArr4;
            sArr4 = sArr3;
            sArr3 = sArr5;
        }
        org.bouncycastle.util.a.S0(sArr3);
        org.bouncycastle.util.a.S0(sArr4);
        return org.bouncycastle.util.a.G(sArr3, sArr4);
    }

    public static byte[] o(InterfaceC2374f interfaceC2374f, r rVar, byte[] bArr, byte[] bArr2, int i10, int i11) {
        g(interfaceC2374f, true, rVar.d(), bArr2, i10, i11);
        int i12 = i11 / 2;
        int i13 = i11 - i12;
        return H(m(interfaceC2374f, rVar, bArr, i11, i12, i13, I(bArr2, i10, i12), I(bArr2, i10 + i12, i13)));
    }

    public static short[] p(InterfaceC2374f interfaceC2374f, r rVar, byte[] bArr, short[] sArr, int i10, int i11) {
        h(interfaceC2374f, true, rVar.d(), sArr, i10, i11);
        int i12 = i11 / 2;
        int i13 = i11 - i12;
        short[] sArr2 = new short[i12];
        short[] sArr3 = new short[i13];
        System.arraycopy(sArr, i10, sArr2, 0, i12);
        System.arraycopy(sArr, i10 + i12, sArr3, 0, i13);
        return m(interfaceC2374f, rVar, bArr, i11, i12, i13, sArr2, sArr3);
    }

    public static byte[] q(InterfaceC2374f interfaceC2374f, r rVar, byte[] bArr, byte[] bArr2, int i10, int i11) {
        g(interfaceC2374f, false, rVar.d(), bArr2, i10, i11);
        if (bArr.length == 8) {
            return B(interfaceC2374f, rVar, bArr, bArr2, i10, i11);
        }
        throw new IllegalArgumentException();
    }

    public static byte[] r(InterfaceC2374f interfaceC2374f, r rVar, byte[] bArr, byte[] bArr2, int i10, int i11) {
        g(interfaceC2374f, false, rVar.d(), bArr2, i10, i11);
        if (bArr.length == 7) {
            return B(interfaceC2374f, rVar, d(bArr), bArr2, i10, i11);
        }
        throw new IllegalArgumentException("tweak should be 56 bits");
    }

    public static short[] s(InterfaceC2374f interfaceC2374f, r rVar, byte[] bArr, short[] sArr, int i10, int i11) {
        h(interfaceC2374f, false, rVar.d(), sArr, i10, i11);
        if (bArr.length == 7) {
            return C(interfaceC2374f, rVar, d(bArr), sArr, i10, i11);
        }
        throw new IllegalArgumentException("tweak should be 56 bits");
    }

    public static short[] t(InterfaceC2374f interfaceC2374f, r rVar, byte[] bArr, int i10, int i11, int i12, short[] sArr, short[] sArr2) {
        int d10 = rVar.d();
        int length = bArr.length;
        int a10 = a(d10, i12);
        int i13 = (a10 + 7) & (-4);
        byte[] c10 = c(d10, (byte) i11, i10, length);
        BigInteger[] b10 = b(BigInteger.valueOf(d10), i11, i12);
        short[] sArr3 = sArr;
        short[] sArr4 = sArr2;
        int i14 = 0;
        int i15 = i12;
        while (i14 < 10) {
            short[] sArr5 = sArr4;
            int i16 = i14;
            short[] sArr6 = sArr3;
            i15 = i10 - i15;
            rVar.g(rVar.b(sArr6).add(e(interfaceC2374f, bArr, a10, i13, i14, c10, sArr5, rVar)).mod(b10[i16 & 1]), i15, sArr6);
            i14 = i16 + 1;
            sArr3 = sArr5;
            sArr4 = sArr6;
        }
        return org.bouncycastle.util.a.G(sArr3, sArr4);
    }

    public static short[] u(InterfaceC2374f interfaceC2374f, r rVar, byte[] bArr, int i10, int i11, int i12, short[] sArr, short[] sArr2) {
        int i13 = i11;
        BigInteger[] b10 = b(BigInteger.valueOf(rVar.d()), i13, i12);
        org.bouncycastle.util.a.S0(sArr);
        org.bouncycastle.util.a.S0(sArr2);
        short[] sArr3 = sArr;
        short[] sArr4 = sArr2;
        int i14 = 0;
        while (i14 < 8) {
            int i15 = i10 - i13;
            int i16 = i14 & 1;
            rVar.g(rVar.b(sArr3).add(f(interfaceC2374f, bArr, 4 - (i16 * 4), i14, sArr4, rVar)).mod(b10[1 - i16]), i15, sArr3);
            i14++;
            i13 = i15;
            short[] sArr5 = sArr4;
            sArr4 = sArr3;
            sArr3 = sArr5;
        }
        org.bouncycastle.util.a.S0(sArr3);
        org.bouncycastle.util.a.S0(sArr4);
        return org.bouncycastle.util.a.G(sArr3, sArr4);
    }

    public static byte[] v(InterfaceC2374f interfaceC2374f, r rVar, byte[] bArr, byte[] bArr2, int i10, int i11) {
        g(interfaceC2374f, true, rVar.d(), bArr2, i10, i11);
        int i12 = i11 / 2;
        int i13 = i11 - i12;
        return H(t(interfaceC2374f, rVar, bArr, i11, i12, i13, I(bArr2, i10, i12), I(bArr2, i10 + i12, i13)));
    }

    public static short[] w(InterfaceC2374f interfaceC2374f, r rVar, byte[] bArr, short[] sArr, int i10, int i11) {
        h(interfaceC2374f, true, rVar.d(), sArr, i10, i11);
        int i12 = i11 / 2;
        int i13 = i11 - i12;
        short[] sArr2 = new short[i12];
        short[] sArr3 = new short[i13];
        System.arraycopy(sArr, i10, sArr2, 0, i12);
        System.arraycopy(sArr, i10 + i12, sArr3, 0, i13);
        return t(interfaceC2374f, rVar, bArr, i11, i12, i13, sArr2, sArr3);
    }

    public static byte[] x(InterfaceC2374f interfaceC2374f, r rVar, byte[] bArr, byte[] bArr2, int i10, int i11) {
        g(interfaceC2374f, false, rVar.d(), bArr2, i10, i11);
        if (bArr.length == 8) {
            return D(interfaceC2374f, rVar, bArr, bArr2, i10, i11);
        }
        throw new IllegalArgumentException();
    }

    public static byte[] y(InterfaceC2374f interfaceC2374f, r rVar, byte[] bArr, byte[] bArr2, int i10, int i11) {
        g(interfaceC2374f, false, rVar.d(), bArr2, i10, i11);
        if (bArr.length == 7) {
            return x(interfaceC2374f, rVar, d(bArr), bArr2, i10, i11);
        }
        throw new IllegalArgumentException("tweak should be 56 bits");
    }

    public static short[] z(InterfaceC2374f interfaceC2374f, r rVar, byte[] bArr, short[] sArr, int i10, int i11) {
        h(interfaceC2374f, false, rVar.d(), sArr, i10, i11);
        if (bArr.length == 7) {
            return A(interfaceC2374f, rVar, d(bArr), sArr, i10, i11);
        }
        throw new IllegalArgumentException("tweak should be 56 bits");
    }
}
