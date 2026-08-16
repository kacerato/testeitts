package ck;

import java.security.spec.AlgorithmParameterSpec;

public class C4216i implements AlgorithmParameterSpec {

    public final org.bouncycastle.crypto.util.r f34912b;

    public final byte[] f34913c;

    public final boolean f34914d;

    public C4216i(int i10, byte[] bArr) {
        this(i10, bArr, false);
    }

    public int a() {
        return this.f34912b.d();
    }

    public org.bouncycastle.crypto.util.r b() {
        return this.f34912b;
    }

    public byte[] c() {
        return org.bouncycastle.util.a.p(this.f34913c);
    }

    public boolean d() {
        return this.f34914d;
    }

    public C4216i(int i10, byte[] bArr, boolean z10) {
        this(new org.bouncycastle.crypto.util.r(i10), bArr, z10);
    }

    public C4216i(org.bouncycastle.crypto.util.r rVar, byte[] bArr, boolean z10) {
        this.f34912b = rVar;
        this.f34913c = org.bouncycastle.util.a.p(bArr);
        this.f34914d = z10;
    }
}
