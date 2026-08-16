package Ol;

import java.security.spec.AlgorithmParameterSpec;
import org.bouncycastle.pqc.crypto.lms.A;

public class k implements AlgorithmParameterSpec {

    public final A f20370b;

    public final org.bouncycastle.pqc.crypto.lms.j f20371c;

    public k(A a10, org.bouncycastle.pqc.crypto.lms.j jVar) {
        this.f20370b = a10;
        this.f20371c = jVar;
    }

    public org.bouncycastle.pqc.crypto.lms.j a() {
        return this.f20371c;
    }

    public A b() {
        return this.f20370b;
    }
}
