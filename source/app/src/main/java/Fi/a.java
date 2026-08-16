package Fi;

import Bi.InterfaceC2392y;
import Xi.J0;
import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.crypto.CryptoException;

public class a {

    public BigInteger f6903a;

    public BigInteger f6904b;

    public BigInteger f6905c;

    public BigInteger f6906d;

    public BigInteger f6907e;

    public BigInteger f6908f;

    public BigInteger f6909g;

    public BigInteger f6910h;

    public BigInteger f6911i;

    public BigInteger f6912j;

    public BigInteger f6913k;

    public InterfaceC2392y f6914l;

    public SecureRandom f6915m;

    public BigInteger a() throws CryptoException {
        BigInteger bigInteger;
        BigInteger bigInteger2;
        BigInteger bigInteger3 = this.f6906d;
        if (bigInteger3 == null || (bigInteger = this.f6907e) == null || (bigInteger2 = this.f6910h) == null) {
            throw new CryptoException("Impossible to compute M1: some data are missing from the previous operations (A,B,S)");
        }
        BigInteger c10 = d.c(this.f6914l, this.f6903a, bigInteger3, bigInteger, bigInteger2);
        this.f6911i = c10;
        return c10;
    }

    public final BigInteger b() {
        BigInteger a10 = d.a(this.f6914l, this.f6903a, this.f6904b);
        return this.f6907e.subtract(this.f6904b.modPow(this.f6908f, this.f6903a).multiply(a10).mod(this.f6903a)).mod(this.f6903a).modPow(this.f6909g.multiply(this.f6908f).add(this.f6905c), this.f6903a);
    }

    public BigInteger c(BigInteger bigInteger) throws CryptoException {
        BigInteger k10 = d.k(this.f6903a, bigInteger);
        this.f6907e = k10;
        this.f6909g = d.e(this.f6914l, this.f6903a, this.f6906d, k10);
        BigInteger b10 = b();
        this.f6910h = b10;
        return b10;
    }

    public BigInteger d() throws CryptoException {
        BigInteger bigInteger = this.f6910h;
        if (bigInteger == null || this.f6911i == null || this.f6912j == null) {
            throw new CryptoException("Impossible to compute Key: some data are missing from the previous operations (S,M1,M2)");
        }
        BigInteger b10 = d.b(this.f6914l, this.f6903a, bigInteger);
        this.f6913k = b10;
        return b10;
    }

    public BigInteger e(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        this.f6908f = d.f(this.f6914l, this.f6903a, bArr, bArr2, bArr3);
        BigInteger h10 = h();
        this.f6905c = h10;
        BigInteger modPow = this.f6904b.modPow(h10, this.f6903a);
        this.f6906d = modPow;
        return modPow;
    }

    public void f(J0 j02, InterfaceC2392y interfaceC2392y, SecureRandom secureRandom) {
        g(j02.b(), j02.a(), interfaceC2392y, secureRandom);
    }

    public void g(BigInteger bigInteger, BigInteger bigInteger2, InterfaceC2392y interfaceC2392y, SecureRandom secureRandom) {
        this.f6903a = bigInteger;
        this.f6904b = bigInteger2;
        this.f6914l = interfaceC2392y;
        this.f6915m = secureRandom;
    }

    public BigInteger h() {
        return d.g(this.f6914l, this.f6903a, this.f6904b, this.f6915m);
    }

    public boolean i(BigInteger bigInteger) throws CryptoException {
        BigInteger bigInteger2;
        BigInteger bigInteger3;
        BigInteger bigInteger4 = this.f6906d;
        if (bigInteger4 == null || (bigInteger2 = this.f6911i) == null || (bigInteger3 = this.f6910h) == null) {
            throw new CryptoException("Impossible to compute and verify M2: some data are missing from the previous operations (A,M1,S)");
        }
        if (!d.d(this.f6914l, this.f6903a, bigInteger4, bigInteger2, bigInteger3).equals(bigInteger)) {
            return false;
        }
        this.f6912j = bigInteger;
        return true;
    }
}
