package ck;

import java.security.spec.KeySpec;

public class C4204B implements KeySpec {

    public static final String f34879f = "master secret";

    public static final String f34880g = "key expansion";

    public final byte[] f34881b;

    public final String f34882c;

    public final int f34883d;

    public final byte[] f34884e;

    public C4204B(byte[] bArr, String str, int i10, byte[]... bArr2) {
        this.f34881b = org.bouncycastle.util.a.p(bArr);
        this.f34882c = str;
        this.f34883d = i10;
        this.f34884e = org.bouncycastle.util.a.E(bArr2);
    }

    public String a() {
        return this.f34882c;
    }

    public int b() {
        return this.f34883d;
    }

    public byte[] c() {
        return org.bouncycastle.util.a.p(this.f34881b);
    }

    public byte[] d() {
        return org.bouncycastle.util.a.p(this.f34884e);
    }
}
