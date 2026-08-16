package ck;

import javax.crypto.spec.IvParameterSpec;

public class C4208a extends IvParameterSpec {

    public final byte[] f34891b;

    public final int f34892c;

    public C4208a(byte[] bArr, int i10) {
        this(bArr, i10, null);
    }

    public byte[] a() {
        return org.bouncycastle.util.a.p(this.f34891b);
    }

    public int b() {
        return this.f34892c;
    }

    public byte[] c() {
        return getIV();
    }

    public C4208a(byte[] bArr, int i10, byte[] bArr2) {
        super(bArr);
        this.f34892c = i10;
        this.f34891b = org.bouncycastle.util.a.p(bArr2);
    }
}
