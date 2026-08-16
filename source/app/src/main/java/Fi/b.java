package Fi;

import Bi.InterfaceC2392y;
import Xi.J0;
import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.crypto.CryptoException;

public class b {

    public BigInteger f6916a;

    public BigInteger f6917b;

    public BigInteger f6918c;

    public SecureRandom f6919d;

    public InterfaceC2392y f6920e;

    public BigInteger f6921f;

    public BigInteger f6922g;

    public BigInteger f6923h;

    public BigInteger f6924i;

    public BigInteger f6925j;

    public BigInteger f6926k;

    public BigInteger f6927l;

    public BigInteger f6928m;

    public final BigInteger a() {
        return this.f6918c.modPow(this.f6924i, this.f6916a).multiply(this.f6921f).mod(this.f6916a).modPow(this.f6922g, this.f6916a);
    }

    public BigInteger b(BigInteger bigInteger) throws CryptoException {
        BigInteger k10 = d.k(this.f6916a, bigInteger);
        this.f6921f = k10;
        this.f6924i = d.e(this.f6920e, this.f6916a, k10, this.f6923h);
        BigInteger a10 = a();
        this.f6925j = a10;
        return a10;
    }

    public BigInteger c() throws CryptoException {
        BigInteger bigInteger;
        BigInteger bigInteger2;
        BigInteger bigInteger3 = this.f6921f;
        if (bigInteger3 == null || (bigInteger = this.f6926k) == null || (bigInteger2 = this.f6925j) == null) {
            throw new CryptoException("Impossible to compute M2: some data are missing from the previous operations (A,M1,S)");
        }
        BigInteger d10 = d.d(this.f6920e, this.f6916a, bigInteger3, bigInteger, bigInteger2);
        this.f6927l = d10;
        return d10;
    }

    public BigInteger d() throws CryptoException {
        BigInteger bigInteger = this.f6925j;
        if (bigInteger == null || this.f6926k == null || this.f6927l == null) {
            throw new CryptoException("Impossible to compute Key: some data are missing from the previous operations (S,M1,M2)");
        }
        BigInteger b10 = d.b(this.f6920e, this.f6916a, bigInteger);
        this.f6928m = b10;
        return b10;
    }

    public BigInteger e() {
        BigInteger a10 = d.a(this.f6920e, this.f6916a, this.f6917b);
        this.f6922g = h();
        BigInteger mod = a10.multiply(this.f6918c).mod(this.f6916a).add(this.f6917b.modPow(this.f6922g, this.f6916a)).mod(this.f6916a);
        this.f6923h = mod;
        return mod;
    }

    public void f(J0 j02, BigInteger bigInteger, InterfaceC2392y interfaceC2392y, SecureRandom secureRandom) {
        g(j02.b(), j02.a(), bigInteger, interfaceC2392y, secureRandom);
    }

    public void g(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, InterfaceC2392y interfaceC2392y, SecureRandom secureRandom) {
        this.f6916a = bigInteger;
        this.f6917b = bigInteger2;
        this.f6918c = bigInteger3;
        this.f6919d = secureRandom;
        this.f6920e = interfaceC2392y;
    }

    public BigInteger h() {
        return d.g(this.f6920e, this.f6916a, this.f6917b, this.f6919d);
    }

    public boolean i(BigInteger bigInteger) throws CryptoException {
        BigInteger bigInteger2;
        BigInteger bigInteger3;
        BigInteger bigInteger4 = this.f6921f;
        if (bigInteger4 == null || (bigInteger2 = this.f6923h) == null || (bigInteger3 = this.f6925j) == null) {
            throw new CryptoException("Impossible to compute and verify M1: some data are missing from the previous operations (A,B,S)");
        }
        if (!d.c(this.f6920e, this.f6916a, bigInteger4, bigInteger2, bigInteger3).equals(bigInteger)) {
            return false;
        }
        this.f6926k = bigInteger;
        return true;
    }
}
