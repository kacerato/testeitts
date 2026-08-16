package Xi;

import java.math.BigInteger;

public class X extends V {

    public BigInteger f29289d;

    public X(BigInteger bigInteger, W w10) {
        super(true, w10);
        this.f29289d = bigInteger;
    }

    public BigInteger e() {
        return this.f29289d;
    }

    @Override
    public boolean equals(Object obj) {
        if ((obj instanceof X) && ((X) obj).e().equals(this.f29289d)) {
            return super.equals(obj);
        }
        return false;
    }

    @Override
    public int hashCode() {
        return e().hashCode();
    }
}
