package cj;

import Bi.EnumC2383o;
import Bi.r;
import Hi.c;
import Xi.F0;
import Xi.G0;
import android.security.keystore.KeyProperties;
import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.util.b;
import org.bouncycastle.util.p;

public abstract class AbstractC4202a {

    public static final int f34867a = 48;

    public static final BigInteger f34868b = BigInteger.valueOf(1);

    public static int a(int i10, int i11, byte[] bArr, byte[] bArr2) {
        int i12 = i11 & 255;
        int i13 = 0;
        for (int i14 = i10 - 1; i14 >= 0; i14--) {
            int i15 = i13 + (bArr2[i14] & 255) + (bArr[i14] & i12);
            bArr2[i14] = (byte) i15;
            i13 = i15 >>> 8;
        }
        return i13;
    }

    public static int b(byte[] bArr, int i10, int i11) {
        int i12 = (i10 - i11) - 10;
        int length = bArr.length - i10;
        int length2 = (bArr.length - 1) - i11;
        for (int i13 = 0; i13 < length; i13++) {
            i12 |= -(bArr[i13] & 255);
        }
        int i14 = -((bArr[length] & 255) ^ 2);
        while (true) {
            i14 |= i12;
            length++;
            if (length >= length2) {
                return ((-(bArr[length2] & 255)) | i14) >> 31;
            }
            i12 = (bArr[length] & 255) - 1;
        }
    }

    public static BigInteger c(BigInteger bigInteger, byte[] bArr, int i10, int i11) {
        BigInteger j10 = b.j(bArr, i10, i11);
        if (j10.compareTo(bigInteger) < 0) {
            return j10;
        }
        throw new DataLengthException("input too large for RSA cipher.");
    }

    public static byte[] d(byte[] bArr, int i10, int i11, F0 f02, int i12, SecureRandom secureRandom) {
        if (bArr == null || i11 < 1 || i11 > e(f02) || i10 < 0 || i10 > bArr.length - i11) {
            throw new IllegalArgumentException("input not a valid EncryptedPreMasterSecret");
        }
        if (!f02.c()) {
            throw new IllegalArgumentException("'privateKey' must be an RSA private key");
        }
        BigInteger f10 = f02.f();
        int bitLength = f10.bitLength();
        if (bitLength < 512) {
            throw new IllegalArgumentException("'privateKey' must be at least 512 bits");
        }
        r.a(new c(KeyProperties.KEY_ALGORITHM_RSA, Hi.b.a(f10), f02, EnumC2383o.DECRYPTION));
        if ((i12 & 65535) != i12) {
            throw new IllegalArgumentException("'protocolVersion' must be a 16 bit value");
        }
        SecureRandom i13 = r.i(secureRandom);
        byte[] bArr2 = new byte[48];
        i13.nextBytes(bArr2);
        try {
            byte[] g10 = g(f02, c(f10, bArr, i10, i11), i13);
            int length = g10.length - 48;
            int b10 = b(g10, (bitLength - 1) / 8, 48) | ((-((p.g(g10, length) ^ i12) & 65535)) >> 31);
            for (int i14 = 0; i14 < 48; i14++) {
                bArr2[i14] = (byte) ((bArr2[i14] & b10) | (g10[length + i14] & (~b10)));
            }
            org.bouncycastle.util.a.e0(g10, (byte) 0);
        } catch (Exception unused) {
        }
        return bArr2;
    }

    public static int e(F0 f02) {
        return (f02.f().bitLength() + 7) / 8;
    }

    public static BigInteger f(F0 f02, BigInteger bigInteger) {
        return bigInteger.modPow(f02.d(), f02.f());
    }

    public static byte[] g(F0 f02, BigInteger bigInteger, SecureRandom secureRandom) {
        G0 g02;
        BigInteger l10;
        BigInteger f10 = f02.f();
        int bitLength = (f10.bitLength() / 8) + 1;
        if (!(f02 instanceof G0) || (l10 = (g02 = (G0) f02).l()) == null) {
            return j(f(f02, bigInteger), bitLength);
        }
        BigInteger bigInteger2 = f34868b;
        BigInteger g10 = b.g(bigInteger2, f10.subtract(bigInteger2), secureRandom);
        BigInteger modPow = g10.modPow(l10, f10);
        BigInteger n10 = b.n(f10, g10);
        BigInteger h10 = h(g02, modPow.multiply(bigInteger).mod(f10));
        BigInteger mod = n10.add(bigInteger2).multiply(h10).mod(f10);
        byte[] j10 = j(h10, bitLength);
        byte[] j11 = j(f10, bitLength);
        byte[] j12 = j(mod, bitLength);
        a(bitLength, i(bitLength, j10, j12), j11, j12);
        return j12;
    }

    public static BigInteger h(G0 g02, BigInteger bigInteger) {
        BigInteger l10 = g02.l();
        BigInteger k10 = g02.k();
        BigInteger m10 = g02.m();
        BigInteger i10 = g02.i();
        BigInteger j10 = g02.j();
        BigInteger n10 = g02.n();
        BigInteger modPow = bigInteger.remainder(k10).modPow(i10, k10);
        BigInteger modPow2 = bigInteger.remainder(m10).modPow(j10, m10);
        BigInteger add = modPow.subtract(modPow2).multiply(n10).mod(k10).multiply(m10).add(modPow2);
        if (add.modPow(l10, g02.f()).equals(bigInteger)) {
            return add;
        }
        throw new IllegalStateException("RSA engine faulty decryption/signing detected");
    }

    public static int i(int i10, byte[] bArr, byte[] bArr2) {
        int i11 = 0;
        for (int i12 = i10 - 1; i12 >= 0; i12--) {
            int i13 = i11 + ((bArr2[i12] & 255) - (bArr[i12] & 255));
            bArr2[i12] = (byte) i13;
            i11 = i13 >> 8;
        }
        return i11;
    }

    public static byte[] j(BigInteger bigInteger, int i10) {
        byte[] byteArray = bigInteger.toByteArray();
        byte[] bArr = new byte[i10];
        System.arraycopy(byteArray, 0, bArr, i10 - byteArray.length, byteArray.length);
        return bArr;
    }
}
