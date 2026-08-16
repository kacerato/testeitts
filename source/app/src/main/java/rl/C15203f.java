package rl;

import Xi.C3335c;
import Xi.N0;
import cl.i;
import cl.j;

public class C15203f extends C15202e {

    public final j f109087c;

    public final N0 f109088d;

    public C15203f(C3335c c3335c, C3335c c3335c2) {
        super(true);
        this.f109087c = (j) c3335c;
        this.f109088d = (N0) c3335c2;
    }

    public j d() {
        return this.f109087c;
    }

    public N0 e() {
        return this.f109088d;
    }

    public byte[] getEncoded() {
        return org.bouncycastle.util.a.B(this.f109087c.getEncoded(), this.f109088d.getEncoded());
    }

    public C15203f(byte[] bArr) {
        super(false);
        this.f109087c = new j(i.f35009g, org.bouncycastle.util.a.X(bArr, 0, bArr.length - 32));
        this.f109088d = new N0(bArr, bArr.length - 32);
    }
}
