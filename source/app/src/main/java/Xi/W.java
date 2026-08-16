package Xi;

import Bi.InterfaceC2379k;
import java.math.BigInteger;

public class W implements InterfaceC2379k {

    public BigInteger f29286b;

    public BigInteger f29287c;

    public int f29288d;

    public W(BigInteger bigInteger, BigInteger bigInteger2) {
        this(bigInteger, bigInteger2, 0);
    }

    public BigInteger a() {
        return this.f29286b;
    }

    public int b() {
        return this.f29288d;
    }

    public BigInteger c() {
        return this.f29287c;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof W)) {
            return false;
        }
        W w10 = (W) obj;
        return w10.c().equals(this.f29287c) && w10.a().equals(this.f29286b) && w10.b() == this.f29288d;
    }

    public int hashCode() {
        return (c().hashCode() ^ a().hashCode()) + this.f29288d;
    }

    public W(BigInteger bigInteger, BigInteger bigInteger2, int i10) {
        this.f29286b = bigInteger2;
        this.f29287c = bigInteger;
        this.f29288d = i10;
    }
}
