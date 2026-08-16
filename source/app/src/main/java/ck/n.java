package ck;

import java.security.spec.AlgorithmParameterSpec;

public class n implements AlgorithmParameterSpec {

    public final byte[] f34928b;

    public final boolean f34929c;

    public n(byte[] bArr) {
        this(bArr, false);
    }

    public byte[] a() {
        return org.bouncycastle.util.a.p(this.f34928b);
    }

    public boolean b() {
        return this.f34929c;
    }

    public n(byte[] bArr, boolean z10) {
        this.f34928b = org.bouncycastle.util.a.p(bArr);
        this.f34929c = z10;
    }
}
