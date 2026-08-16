package Hj;

import javax.crypto.interfaces.PBEKey;

public class m extends l implements PBEKey {

    public final byte[] f8521d;

    public final int f8522e;

    public m(char[] cArr, boolean z10, byte[] bArr, int i10) {
        super(cArr, z10);
        this.f8521d = org.bouncycastle.util.a.p(bArr);
        this.f8522e = i10;
    }

    @Override
    public int getIterationCount() {
        return this.f8522e;
    }

    @Override
    public byte[] getSalt() {
        return this.f8521d;
    }

    public m(char[] cArr, byte[] bArr, int i10) {
        super(cArr);
        this.f8521d = org.bouncycastle.util.a.p(bArr);
        this.f8522e = i10;
    }
}
