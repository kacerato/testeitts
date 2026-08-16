package Xi;

import java.math.BigInteger;

public class r extends C3357n {

    public BigInteger f29408d;

    public r(BigInteger bigInteger, C3363q c3363q) {
        super(true, c3363q);
        this.f29408d = bigInteger;
    }

    public BigInteger e() {
        return this.f29408d;
    }

    @Override
    public boolean equals(Object obj) {
        return (obj instanceof r) && ((r) obj).e().equals(this.f29408d) && super.equals(obj);
    }

    @Override
    public int hashCode() {
        return this.f29408d.hashCode() ^ super.hashCode();
    }
}
