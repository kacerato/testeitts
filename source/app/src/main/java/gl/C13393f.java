package gl;

import Bi.B;
import Bi.P;
import Xi.C3335c;
import java.security.SecureRandom;
import pl.C15017e;

public class C13393f implements B {

    public final SecureRandom f90072a;

    public C13393f(SecureRandom secureRandom) {
        this.f90072a = secureRandom;
    }

    @Override
    public P a(C3335c c3335c) {
        C13399l c13399l = (C13399l) c3335c;
        C13391d b10 = c13399l.d().b();
        byte[] bArr = new byte[c13399l.d().k()];
        byte[] bArr2 = new byte[c13399l.d().h()];
        byte[] bArr3 = new byte[c13399l.d().f()];
        byte[] bArr4 = new byte[c13399l.d().k()];
        byte[] bArr5 = new byte[c13399l.d().j()];
        byte[] e10 = c13399l.e();
        byte[] bArr6 = new byte[48];
        this.f90072a.nextBytes(bArr6);
        b10.c(bArr2, bArr3, bArr, bArr4, e10, bArr6, bArr5);
        return new C15017e(org.bouncycastle.util.a.X(bArr, 0, c13399l.d().c()), org.bouncycastle.util.a.D(bArr2, bArr3, bArr4, bArr5));
    }
}
