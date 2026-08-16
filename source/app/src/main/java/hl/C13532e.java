package hl;

import Bi.C2371c;
import Bi.G;
import Bi.InterfaceC2372d;
import Xi.C3335c;
import java.security.SecureRandom;

public class C13532e implements InterfaceC2372d {

    public SecureRandom f91104g;

    @Override
    public C2371c a() {
        byte[] bArr = new byte[k.f91125d];
        short[] sArr = new short[1024];
        k.f(this.f91104g, bArr, sArr);
        return new C2371c((C3335c) new h(bArr), (C3335c) new g(sArr));
    }

    @Override
    public void b(G g10) {
        this.f91104g = g10.a();
    }
}
