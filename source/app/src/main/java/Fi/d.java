package Fi;

import Bi.InterfaceC2392y;
import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.crypto.CryptoException;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;

public class d {

    public static BigInteger f6950a = BigInteger.valueOf(0);

    public static BigInteger f6951b = BigInteger.valueOf(1);

    public static BigInteger a(InterfaceC2392y interfaceC2392y, BigInteger bigInteger, BigInteger bigInteger2) {
        return i(interfaceC2392y, bigInteger, bigInteger, bigInteger2);
    }

    public static BigInteger b(InterfaceC2392y interfaceC2392y, BigInteger bigInteger, BigInteger bigInteger2) {
        byte[] h10 = h(bigInteger2, (bigInteger.bitLength() + 7) / 8);
        interfaceC2392y.update(h10, 0, h10.length);
        byte[] bArr = new byte[interfaceC2392y.f()];
        interfaceC2392y.c(bArr, 0);
        return new BigInteger(1, bArr);
    }

    public static BigInteger c(InterfaceC2392y interfaceC2392y, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4) {
        return j(interfaceC2392y, bigInteger, bigInteger2, bigInteger3, bigInteger4);
    }

    public static BigInteger d(InterfaceC2392y interfaceC2392y, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4) {
        return j(interfaceC2392y, bigInteger, bigInteger2, bigInteger3, bigInteger4);
    }

    public static BigInteger e(InterfaceC2392y interfaceC2392y, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        return i(interfaceC2392y, bigInteger, bigInteger2, bigInteger3);
    }

    public static BigInteger f(InterfaceC2392y interfaceC2392y, BigInteger bigInteger, byte[] bArr, byte[] bArr2, byte[] bArr3) {
        int f10 = interfaceC2392y.f();
        byte[] bArr4 = new byte[f10];
        interfaceC2392y.update(bArr2, 0, bArr2.length);
        interfaceC2392y.update(Opcodes.OPC_astore);
        interfaceC2392y.update(bArr3, 0, bArr3.length);
        interfaceC2392y.c(bArr4, 0);
        interfaceC2392y.update(bArr, 0, bArr.length);
        interfaceC2392y.update(bArr4, 0, f10);
        interfaceC2392y.c(bArr4, 0);
        return new BigInteger(1, bArr4);
    }

    public static BigInteger g(InterfaceC2392y interfaceC2392y, BigInteger bigInteger, BigInteger bigInteger2, SecureRandom secureRandom) {
        return org.bouncycastle.util.b.g(f6951b.shiftLeft(Math.min(256, bigInteger.bitLength() / 2) - 1), bigInteger.subtract(f6951b), secureRandom);
    }

    public static byte[] h(BigInteger bigInteger, int i10) {
        byte[] c10 = org.bouncycastle.util.b.c(bigInteger);
        if (c10.length >= i10) {
            return c10;
        }
        byte[] bArr = new byte[i10];
        System.arraycopy(c10, 0, bArr, i10 - c10.length, c10.length);
        return bArr;
    }

    public static BigInteger i(InterfaceC2392y interfaceC2392y, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        int bitLength = (bigInteger.bitLength() + 7) / 8;
        byte[] h10 = h(bigInteger2, bitLength);
        byte[] h11 = h(bigInteger3, bitLength);
        interfaceC2392y.update(h10, 0, h10.length);
        interfaceC2392y.update(h11, 0, h11.length);
        byte[] bArr = new byte[interfaceC2392y.f()];
        interfaceC2392y.c(bArr, 0);
        return new BigInteger(1, bArr);
    }

    public static BigInteger j(InterfaceC2392y interfaceC2392y, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4) {
        int bitLength = (bigInteger.bitLength() + 7) / 8;
        byte[] h10 = h(bigInteger2, bitLength);
        byte[] h11 = h(bigInteger3, bitLength);
        byte[] h12 = h(bigInteger4, bitLength);
        interfaceC2392y.update(h10, 0, h10.length);
        interfaceC2392y.update(h11, 0, h11.length);
        interfaceC2392y.update(h12, 0, h12.length);
        byte[] bArr = new byte[interfaceC2392y.f()];
        interfaceC2392y.c(bArr, 0);
        return new BigInteger(1, bArr);
    }

    public static BigInteger k(BigInteger bigInteger, BigInteger bigInteger2) throws CryptoException {
        BigInteger mod = bigInteger2.mod(bigInteger);
        if (mod.equals(f6950a)) {
            throw new CryptoException("Invalid public value: 0");
        }
        return mod;
    }
}
