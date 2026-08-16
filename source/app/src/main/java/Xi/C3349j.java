package Xi;

import java.math.BigInteger;

public class C3349j extends C3343g {

    public BigInteger f29363d;

    public BigInteger f29364e;

    public BigInteger f29365f;

    public C3349j(C3345h c3345h, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        super(false, c3345h);
        this.f29363d = bigInteger;
        this.f29364e = bigInteger2;
        this.f29365f = bigInteger3;
    }

    public BigInteger e() {
        return this.f29363d;
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof C3349j)) {
            return false;
        }
        C3349j c3349j = (C3349j) obj;
        return c3349j.e().equals(this.f29363d) && c3349j.f().equals(this.f29364e) && c3349j.g().equals(this.f29365f) && super.equals(obj);
    }

    public BigInteger f() {
        return this.f29364e;
    }

    public BigInteger g() {
        return this.f29365f;
    }

    @Override
    public int hashCode() {
        return ((this.f29363d.hashCode() ^ this.f29364e.hashCode()) ^ this.f29365f.hashCode()) ^ super.hashCode();
    }
}
