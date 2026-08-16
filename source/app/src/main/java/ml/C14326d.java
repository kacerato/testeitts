package ml;

import Bi.B;
import Bi.P;
import Xi.C3335c;
import java.security.SecureRandom;
import pl.C15017e;

public class C14326d implements B {

    public final SecureRandom f97499a;

    public C14326d(SecureRandom secureRandom) {
        this.f97499a = secureRandom;
    }

    @Override
    public P a(C3335c c3335c) {
        j jVar = (j) c3335c;
        C14324b a10 = jVar.d().a();
        byte[] bArr = new byte[a10.e()];
        byte[] bArr2 = new byte[a10.s()];
        a10.c(bArr, bArr2, jVar.e(), this.f97499a);
        return new C15017e(bArr2, bArr);
    }
}
