package Xi;

import Bi.InterfaceC2379k;
import Bi.InterfaceC2392y;
import java.math.BigInteger;

public class C3345h implements InterfaceC2379k {

    public BigInteger f29349b;

    public BigInteger f29350c;

    public BigInteger f29351d;

    public InterfaceC2392y f29352e;

    public C3345h(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, InterfaceC2392y interfaceC2392y) {
        this.f29349b = bigInteger;
        this.f29350c = bigInteger2;
        this.f29351d = bigInteger3;
        InterfaceC2392y interfaceC2392y2 = (InterfaceC2392y) ((org.bouncycastle.util.n) interfaceC2392y).copy();
        this.f29352e = interfaceC2392y2;
        interfaceC2392y2.reset();
    }

    public BigInteger a() {
        return this.f29350c;
    }

    public BigInteger b() {
        return this.f29351d;
    }

    public InterfaceC2392y c() {
        return (InterfaceC2392y) ((org.bouncycastle.util.n) this.f29352e).copy();
    }

    public BigInteger d() {
        return this.f29349b;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C3345h)) {
            return false;
        }
        C3345h c3345h = (C3345h) obj;
        return c3345h.d().equals(this.f29349b) && c3345h.a().equals(this.f29350c) && c3345h.b().equals(this.f29351d);
    }

    public int hashCode() {
        return (d().hashCode() ^ a().hashCode()) ^ b().hashCode();
    }
}
