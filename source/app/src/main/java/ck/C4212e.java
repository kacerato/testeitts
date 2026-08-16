package ck;

import java.math.BigInteger;
import javax.crypto.spec.DHParameterSpec;
import javax.crypto.spec.DHPublicKeySpec;

public class C4212e extends DHPublicKeySpec {

    public final DHParameterSpec f34902b;

    public C4212e(BigInteger bigInteger, DHParameterSpec dHParameterSpec) {
        super(bigInteger, dHParameterSpec.getP(), dHParameterSpec.getG());
        this.f34902b = dHParameterSpec;
    }

    public DHParameterSpec a() {
        return this.f34902b;
    }
}
