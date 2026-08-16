package ql;

import Bi.C2371c;
import Bi.InterfaceC2372d;
import Xi.C3335c;
import java.security.SecureRandom;
import ql.C15132j;
import ql.I;
import ql.J;

public final class t implements InterfaceC2372d {

    public H f108398g;

    public SecureRandom f108399h;

    @Override
    public C2371c a() {
        I c10 = c(this.f108398g, this.f108399h);
        E f10 = c10.f().f();
        I j10 = new I.b(this.f108398g).r(c10.m()).q(c10.l()).o(c10.j()).p(f10.b()).k(c10.f()).j();
        return new C2371c((C3335c) new J.b(this.f108398g).h(f10.b()).g(j10.j()).e(), (C3335c) j10);
    }

    @Override
    public void b(Bi.G g10) {
        s sVar = (s) g10;
        this.f108399h = sVar.a();
        this.f108398g = sVar.c();
    }

    public final I c(H h10, SecureRandom secureRandom) {
        int h11 = h10.h();
        byte[] bArr = new byte[h11];
        secureRandom.nextBytes(bArr);
        byte[] bArr2 = new byte[h11];
        secureRandom.nextBytes(bArr2);
        byte[] bArr3 = new byte[h11];
        secureRandom.nextBytes(bArr3);
        return new I.b(h10).r(bArr).q(bArr2).o(bArr3).k(new C15123a(h10, bArr3, bArr, (C15132j) new C15132j.b().e())).j();
    }
}
