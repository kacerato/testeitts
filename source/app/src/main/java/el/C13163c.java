package el;

import Bi.B;
import Bi.P;
import Xi.C3335c;
import java.security.SecureRandom;
import pl.C15017e;

public class C13163c implements B {

    public final SecureRandom f85855a;

    public C13163c(SecureRandom secureRandom) {
        this.f85855a = secureRandom;
    }

    @Override
    public P a(C3335c c3335c) {
        j jVar = (j) c3335c;
        C13161a c10 = jVar.d().c();
        byte[] bArr = new byte[c10.e()];
        byte[] bArr2 = new byte[c10.h()];
        c10.j(bArr, bArr2, jVar.e(), this.f85855a);
        return new C15017e(bArr2, bArr);
    }
}
