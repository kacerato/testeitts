package ck;

import java.math.BigInteger;
import javax.crypto.spec.DHParameterSpec;
import javax.crypto.spec.DHPrivateKeySpec;

public class C4211d extends DHPrivateKeySpec {

    public final DHParameterSpec f34901b;

    public C4211d(BigInteger bigInteger, DHParameterSpec dHParameterSpec) {
        super(bigInteger, dHParameterSpec.getP(), dHParameterSpec.getG());
        this.f34901b = dHParameterSpec;
    }

    public DHParameterSpec a() {
        return this.f34901b;
    }
}
