package rk;

import java.math.BigInteger;

public class C15197h implements InterfaceC15191b {

    public final BigInteger f109082a;

    public C15197h(BigInteger bigInteger) {
        this.f109082a = bigInteger;
    }

    @Override
    public BigInteger b() {
        return this.f109082a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C15197h) {
            return this.f109082a.equals(((C15197h) obj).f109082a);
        }
        return false;
    }

    @Override
    public int getDimension() {
        return 1;
    }

    public int hashCode() {
        return this.f109082a.hashCode();
    }
}
