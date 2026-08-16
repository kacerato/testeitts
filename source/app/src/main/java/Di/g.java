package Di;

import Bi.I;
import Bi.InterfaceC2392y;
import Si.k;
import Xi.C3360o0;
import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.crypto.CryptoException;
import org.bouncycastle.util.w;

public class g {

    public static final BigInteger f5232a = BigInteger.valueOf(0);

    public static final BigInteger f5233b = BigInteger.valueOf(1);

    public static void A(String str, String str2) throws CryptoException {
        if (str.equals(str2)) {
            return;
        }
        throw new CryptoException("Received payload from incorrect partner (" + str2 + "). Expected to receive payload from " + str + ".");
    }

    public static void B(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, BigInteger[] bigIntegerArr, String str, InterfaceC2392y interfaceC2392y) throws CryptoException {
        BigInteger bigInteger5 = bigIntegerArr[0];
        BigInteger bigInteger6 = bigIntegerArr[1];
        BigInteger d10 = d(bigInteger3, bigInteger5, bigInteger4, str, interfaceC2392y);
        if (bigInteger4.compareTo(f5232a) != 1 || bigInteger4.compareTo(bigInteger) != -1 || bigInteger4.modPow(bigInteger2, bigInteger).compareTo(f5233b) != 0 || bigInteger3.modPow(bigInteger6, bigInteger).multiply(bigInteger4.modPow(d10, bigInteger)).mod(bigInteger).compareTo(bigInteger5) != 0) {
            throw new CryptoException("Zero-knowledge proof validation failed");
        }
    }

    public static BigInteger a(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4) {
        return bigInteger3.modPow(bigInteger4, bigInteger);
    }

    public static BigInteger b(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4) {
        return bigInteger2.multiply(bigInteger3).multiply(bigInteger4).mod(bigInteger);
    }

    public static BigInteger c(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        return bigInteger2.modPow(bigInteger3, bigInteger);
    }

    public static BigInteger d(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, String str, InterfaceC2392y interfaceC2392y) {
        interfaceC2392y.reset();
        s(interfaceC2392y, bigInteger);
        s(interfaceC2392y, bigInteger2);
        s(interfaceC2392y, bigInteger3);
        r(interfaceC2392y, str);
        byte[] bArr = new byte[interfaceC2392y.f()];
        interfaceC2392y.c(bArr, 0);
        return new BigInteger(bArr);
    }

    public static BigInteger e(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, BigInteger bigInteger5, BigInteger bigInteger6) {
        return bigInteger3.modPow(bigInteger4.multiply(bigInteger5).negate().mod(bigInteger2), bigInteger).multiply(bigInteger6).modPow(bigInteger4, bigInteger);
    }

    public static byte[] f(BigInteger bigInteger, InterfaceC2392y interfaceC2392y) {
        interfaceC2392y.reset();
        q(interfaceC2392y, bigInteger);
        p(interfaceC2392y, "JPAKE_KC");
        byte[] bArr = new byte[interfaceC2392y.f()];
        interfaceC2392y.c(bArr, 0);
        return bArr;
    }

    public static BigInteger g(String str, String str2, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, BigInteger bigInteger5, InterfaceC2392y interfaceC2392y) {
        byte[] f10 = f(bigInteger5, interfaceC2392y);
        k kVar = new k(interfaceC2392y);
        byte[] bArr = new byte[kVar.d()];
        kVar.a(new C3360o0(f10));
        t(kVar, "KC_1_U");
        t(kVar, str);
        t(kVar, str2);
        u(kVar, bigInteger);
        u(kVar, bigInteger2);
        u(kVar, bigInteger3);
        u(kVar, bigInteger4);
        kVar.c(bArr, 0);
        org.bouncycastle.util.a.e0(f10, (byte) 0);
        return new BigInteger(bArr);
    }

    public static BigInteger h(BigInteger bigInteger, byte[] bArr) throws CryptoException {
        BigInteger mod = new BigInteger(1, bArr).mod(bigInteger);
        if (mod.signum() != 0) {
            return mod;
        }
        throw new CryptoException("MUST ensure s is not equal to 0 modulo q");
    }

    public static BigInteger i(BigInteger bigInteger, char[] cArr) throws CryptoException {
        return h(bigInteger, w.o(cArr));
    }

    public static BigInteger j(char[] cArr) {
        return new BigInteger(1, w.o(cArr));
    }

    public static BigInteger k(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        return bigInteger2.multiply(bigInteger3).mod(bigInteger);
    }

    public static BigInteger[] l(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, BigInteger bigInteger5, String str, InterfaceC2392y interfaceC2392y, SecureRandom secureRandom) {
        BigInteger g10 = org.bouncycastle.util.b.g(f5232a, bigInteger2.subtract(f5233b), secureRandom);
        BigInteger modPow = bigInteger3.modPow(g10, bigInteger);
        return new BigInteger[]{modPow, g10.subtract(bigInteger5.multiply(d(bigInteger3, modPow, bigInteger4, str, interfaceC2392y))).mod(bigInteger2)};
    }

    public static BigInteger m(BigInteger bigInteger, SecureRandom secureRandom) {
        return org.bouncycastle.util.b.g(f5232a, bigInteger.subtract(f5233b), secureRandom);
    }

    public static BigInteger n(BigInteger bigInteger, SecureRandom secureRandom) {
        BigInteger bigInteger2 = f5233b;
        return org.bouncycastle.util.b.g(bigInteger2, bigInteger.subtract(bigInteger2), secureRandom);
    }

    public static byte[] o(int i10) {
        return new byte[]{(byte) (i10 >>> 24), (byte) (i10 >>> 16), (byte) (i10 >>> 8), (byte) i10};
    }

    public static void p(InterfaceC2392y interfaceC2392y, String str) {
        byte[] n10 = w.n(str);
        interfaceC2392y.update(n10, 0, n10.length);
        org.bouncycastle.util.a.e0(n10, (byte) 0);
    }

    public static void q(InterfaceC2392y interfaceC2392y, BigInteger bigInteger) {
        byte[] c10 = org.bouncycastle.util.b.c(bigInteger);
        interfaceC2392y.update(c10, 0, c10.length);
        org.bouncycastle.util.a.e0(c10, (byte) 0);
    }

    public static void r(InterfaceC2392y interfaceC2392y, String str) {
        byte[] n10 = w.n(str);
        interfaceC2392y.update(o(n10.length), 0, 4);
        interfaceC2392y.update(n10, 0, n10.length);
        org.bouncycastle.util.a.e0(n10, (byte) 0);
    }

    public static void s(InterfaceC2392y interfaceC2392y, BigInteger bigInteger) {
        byte[] c10 = org.bouncycastle.util.b.c(bigInteger);
        interfaceC2392y.update(o(c10.length), 0, 4);
        interfaceC2392y.update(c10, 0, c10.length);
        org.bouncycastle.util.a.e0(c10, (byte) 0);
    }

    public static void t(I i10, String str) {
        byte[] n10 = w.n(str);
        i10.update(n10, 0, n10.length);
        org.bouncycastle.util.a.e0(n10, (byte) 0);
    }

    public static void u(I i10, BigInteger bigInteger) {
        byte[] c10 = org.bouncycastle.util.b.c(bigInteger);
        i10.update(c10, 0, c10.length);
        org.bouncycastle.util.a.e0(c10, (byte) 0);
    }

    public static void v(BigInteger bigInteger) throws CryptoException {
        if (bigInteger.equals(f5233b)) {
            throw new CryptoException("ga is equal to 1.  It should not be.  The chances of this happening are on the order of 2^160 for a 160-bit q.  Try again.");
        }
    }

    public static void w(BigInteger bigInteger) throws CryptoException {
        if (bigInteger.equals(f5233b)) {
            throw new CryptoException("g^x validation failed.  g^x should not be 1.");
        }
    }

    public static void x(String str, String str2, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, BigInteger bigInteger5, InterfaceC2392y interfaceC2392y, BigInteger bigInteger6) throws CryptoException {
        if (!g(str2, str, bigInteger3, bigInteger4, bigInteger, bigInteger2, bigInteger5, interfaceC2392y).equals(bigInteger6)) {
            throw new CryptoException("Partner MacTag validation failed. Therefore, the password, MAC, or digest algorithm of each participant does not match.");
        }
    }

    public static void y(Object obj, String str) {
        if (obj != null) {
            return;
        }
        throw new NullPointerException(str + " must not be null");
    }

    public static void z(String str, String str2) throws CryptoException {
        if (str.equals(str2)) {
            throw new CryptoException("Both participants are using the same participantId (" + str + "). This is not allowed. Each participant must use a unique participantId.");
        }
    }
}
