package rl;

import Xi.C3335c;
import Xi.O0;
import cl.i;
import cl.k;

public class C15204g extends C15202e {

    public final k f109089c;

    public final O0 f109090d;

    public C15204g(C3335c c3335c, C3335c c3335c2) {
        super(false);
        this.f109089c = (k) c3335c;
        this.f109090d = (O0) c3335c2;
    }

    public k d() {
        return this.f109089c;
    }

    public O0 e() {
        return this.f109090d;
    }

    public byte[] getEncoded() {
        return org.bouncycastle.util.a.B(this.f109089c.getEncoded(), this.f109090d.getEncoded());
    }

    public C15204g(byte[] bArr) {
        super(false);
        this.f109089c = new k(i.f35009g, org.bouncycastle.util.a.X(bArr, 0, bArr.length - 32));
        this.f109090d = new O0(bArr, bArr.length - 32);
    }
}
