package Xi;

import java.math.BigInteger;

public class C3347i extends C3343g {

    public BigInteger f29356d;

    public BigInteger f29357e;

    public BigInteger f29358f;

    public BigInteger f29359g;

    public BigInteger f29360h;

    public C3349j f29361i;

    public C3347i(C3345h c3345h, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, BigInteger bigInteger5) {
        super(true, c3345h);
        this.f29356d = bigInteger;
        this.f29357e = bigInteger2;
        this.f29358f = bigInteger3;
        this.f29359g = bigInteger4;
        this.f29360h = bigInteger5;
    }

    public C3349j e() {
        return this.f29361i;
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof C3347i)) {
            return false;
        }
        C3347i c3347i = (C3347i) obj;
        return c3347i.f().equals(this.f29356d) && c3347i.g().equals(this.f29357e) && c3347i.h().equals(this.f29358f) && c3347i.i().equals(this.f29359g) && c3347i.j().equals(this.f29360h) && super.equals(obj);
    }

    public BigInteger f() {
        return this.f29356d;
    }

    public BigInteger g() {
        return this.f29357e;
    }

    public BigInteger h() {
        return this.f29358f;
    }

    @Override
    public int hashCode() {
        return ((((this.f29356d.hashCode() ^ this.f29357e.hashCode()) ^ this.f29358f.hashCode()) ^ this.f29359g.hashCode()) ^ this.f29360h.hashCode()) ^ super.hashCode();
    }

    public BigInteger i() {
        return this.f29359g;
    }

    public BigInteger j() {
        return this.f29360h;
    }

    public void k(C3349j c3349j) {
        this.f29361i = c3349j;
    }
}
