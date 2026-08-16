package org.bouncycastle.pqc.crypto.lms;

import Bi.C2371c;
import Bi.G;
import Bi.InterfaceC2372d;
import Xi.C3335c;
import java.security.SecureRandom;

public class s implements InterfaceC2372d {

    public r f102215g;

    @Override
    public C2371c a() {
        SecureRandom a10 = this.f102215g.a();
        byte[] bArr = new byte[16];
        a10.nextBytes(bArr);
        A b10 = this.f102215g.c().b();
        byte[] bArr2 = new byte[b10.d()];
        a10.nextBytes(bArr2);
        v a11 = n.a(b10, this.f102215g.c().a(), 0, bArr, bArr2);
        return new C2371c((C3335c) a11.p(), (C3335c) a11);
    }

    @Override
    public void b(G g10) {
        this.f102215g = (r) g10;
    }
}
