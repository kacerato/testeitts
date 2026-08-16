package kl;

import Bi.C2371c;
import Bi.G;
import Bi.InterfaceC2372d;
import Xi.C3335c;
import java.security.SecureRandom;

public class j implements InterfaceC2372d {

    public SecureRandom f95441g;

    public l f95442h;

    @Override
    public C2371c a() {
        h a10 = this.f95442h.a();
        byte[] bArr = new byte[a10.G()];
        byte[] bArr2 = new byte[a10.F()];
        a10.w(bArr2, bArr, this.f95441g);
        return new C2371c((C3335c) new n(this.f95442h, bArr2), (C3335c) new m(this.f95442h, bArr));
    }

    @Override
    public void b(G g10) {
        this.f95441g = g10.a();
        this.f95442h = ((i) g10).c();
    }
}
