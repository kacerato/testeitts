package Xi;

import java.math.BigInteger;

public class Y extends V {

    public BigInteger f29290d;

    public Y(BigInteger bigInteger, W w10) {
        super(false, w10);
        this.f29290d = bigInteger;
    }

    public BigInteger e() {
        return this.f29290d;
    }

    @Override
    public boolean equals(Object obj) {
        return (obj instanceof Y) && ((Y) obj).e().equals(this.f29290d) && super.equals(obj);
    }

    @Override
    public int hashCode() {
        return this.f29290d.hashCode() ^ super.hashCode();
    }
}
