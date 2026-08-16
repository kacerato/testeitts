package ck;

import java.security.PrivateKey;
import java.security.spec.AlgorithmParameterSpec;

public class o implements AlgorithmParameterSpec {

    public final PrivateKey f34930b;

    public final byte[] f34931c;

    public final String f34932d;

    public final int f34933e;

    public o(PrivateKey privateKey, byte[] bArr, String str) {
        this(privateKey, bArr, str, 256);
    }

    public byte[] a() {
        return org.bouncycastle.util.a.p(this.f34931c);
    }

    public String b() {
        return this.f34932d;
    }

    public int c() {
        return this.f34933e;
    }

    public PrivateKey d() {
        return this.f34930b;
    }

    public o(PrivateKey privateKey, byte[] bArr, String str, int i10) {
        this.f34930b = privateKey;
        this.f34931c = org.bouncycastle.util.a.p(bArr);
        this.f34932d = str;
        this.f34933e = i10;
    }
}
