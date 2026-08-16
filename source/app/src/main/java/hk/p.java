package hk;

import java.math.BigInteger;

public class p {

    public BigInteger f91086a;

    public BigInteger f91087b;

    public BigInteger f91088c;

    public p(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        this.f91086a = bigInteger;
        this.f91087b = bigInteger2;
        this.f91088c = bigInteger3;
    }

    public BigInteger a() {
        return this.f91088c;
    }

    public BigInteger b() {
        return this.f91086a;
    }

    public BigInteger c() {
        return this.f91087b;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof p)) {
            return false;
        }
        p pVar = (p) obj;
        return this.f91088c.equals(pVar.f91088c) && this.f91086a.equals(pVar.f91086a) && this.f91087b.equals(pVar.f91087b);
    }

    public int hashCode() {
        return (this.f91088c.hashCode() ^ this.f91086a.hashCode()) ^ this.f91087b.hashCode();
    }
}
