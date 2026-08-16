package ck;

import java.security.spec.AlgorithmParameterSpec;

public class y implements AlgorithmParameterSpec {

    public byte[] f34957b;

    public y(byte[] bArr) {
        if (bArr == null) {
            throw new NullPointerException("id string cannot be null");
        }
        this.f34957b = org.bouncycastle.util.a.p(bArr);
    }

    public byte[] a() {
        return org.bouncycastle.util.a.p(this.f34957b);
    }
}
