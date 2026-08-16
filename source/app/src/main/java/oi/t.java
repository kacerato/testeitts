package Oi;

import Xi.W;
import java.math.BigInteger;
import java.security.SecureRandom;

public class t {

    public int f20242a;

    public int f20243b;

    public SecureRandom f20244c;

    public W a() {
        BigInteger[] a10 = C2936l.a(this.f20242a, this.f20243b, this.f20244c);
        BigInteger bigInteger = a10[0];
        return new W(bigInteger, C2936l.b(bigInteger, a10[1], this.f20244c));
    }

    public void b(int i10, int i11, SecureRandom secureRandom) {
        this.f20242a = i10;
        this.f20243b = i11;
        this.f20244c = secureRandom;
    }
}
