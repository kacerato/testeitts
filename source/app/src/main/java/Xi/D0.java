package Xi;

import Bi.InterfaceC2379k;
import java.math.BigInteger;

public class D0 implements InterfaceC2379k {

    public F0 f29203b;

    public BigInteger f29204c;

    public D0(F0 f02, BigInteger bigInteger) {
        if (f02 instanceof G0) {
            throw new IllegalArgumentException("RSA parameters should be for a public key");
        }
        this.f29203b = f02;
        this.f29204c = bigInteger;
    }

    public BigInteger a() {
        return this.f29204c;
    }

    public F0 b() {
        return this.f29203b;
    }
}
