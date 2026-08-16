package ck;

import java.security.spec.AlgorithmParameterSpec;

public class C4206D implements AlgorithmParameterSpec {

    public final byte[] f34886b;

    public final byte[] f34887c;

    public C4206D(byte[] bArr) {
        this(bArr, null);
    }

    public byte[] a() {
        return org.bouncycastle.util.a.p(this.f34887c);
    }

    public byte[] b() {
        return org.bouncycastle.util.a.p(this.f34886b);
    }

    public C4206D(byte[] bArr, byte[] bArr2) {
        this.f34886b = org.bouncycastle.util.a.p(bArr);
        this.f34887c = org.bouncycastle.util.a.p(bArr2);
    }
}
