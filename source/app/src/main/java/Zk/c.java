package Zk;

import Bi.B;
import Bi.P;
import Xi.C3335c;
import java.security.SecureRandom;
import pl.C15017e;

public class c implements B {

    public final SecureRandom f31479a;

    public c(SecureRandom secureRandom) {
        this.f31479a = secureRandom;
    }

    @Override
    public P a(C3335c c3335c) {
        i iVar = (i) c3335c;
        a a10 = iVar.d().a();
        byte[] bArr = new byte[iVar.d().c()];
        byte[] bArr2 = new byte[iVar.d().g()];
        byte[] bArr3 = new byte[iVar.d().c()];
        a10.j(bArr2, bArr3, bArr, iVar.f31503d, this.f31479a);
        return new C15017e(org.bouncycastle.util.a.X(bArr, 0, iVar.d().h() / 8), org.bouncycastle.util.a.B(bArr2, bArr3));
    }
}
