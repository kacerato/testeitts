package nk;

import java.math.BigInteger;

public class i {

    public final BigInteger f98289a;

    public final BigInteger f98290b;

    public final BigInteger f98291c;

    public final BigInteger f98292d;

    public final BigInteger f98293e;

    public final BigInteger f98294f;

    public final int f98295g;

    public i(BigInteger[] bigIntegerArr, BigInteger[] bigIntegerArr2, BigInteger bigInteger, BigInteger bigInteger2, int i10) {
        a(bigIntegerArr, g3.c.f88110m);
        a(bigIntegerArr2, "v2");
        this.f98289a = bigIntegerArr[0];
        this.f98290b = bigIntegerArr[1];
        this.f98291c = bigIntegerArr2[0];
        this.f98292d = bigIntegerArr2[1];
        this.f98293e = bigInteger;
        this.f98294f = bigInteger2;
        this.f98295g = i10;
    }

    public static void a(BigInteger[] bigIntegerArr, String str) {
        if (bigIntegerArr == null || bigIntegerArr.length != 2 || bigIntegerArr[0] == null || bigIntegerArr[1] == null) {
            throw new IllegalArgumentException("'" + str + "' must consist of exactly 2 (non-null) values");
        }
    }

    public int b() {
        return this.f98295g;
    }

    public BigInteger c() {
        return this.f98293e;
    }

    public BigInteger d() {
        return this.f98294f;
    }

    public BigInteger e() {
        return this.f98289a;
    }

    public BigInteger f() {
        return this.f98290b;
    }

    public BigInteger g() {
        return this.f98291c;
    }

    public BigInteger h() {
        return this.f98292d;
    }
}
