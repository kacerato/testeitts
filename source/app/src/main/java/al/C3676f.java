package al;

import Bi.B;
import Bi.P;
import Xi.C3335c;
import java.security.SecureRandom;
import pl.C15017e;

public class C3676f implements B {

    public final SecureRandom f32361a;

    public C3676f(SecureRandom secureRandom) {
        this.f32361a = secureRandom;
    }

    @Override
    public P a(C3335c c3335c) {
        return b(c3335c, ((l) c3335c).d().a().p());
    }

    public P b(C3335c c3335c, int i10) {
        l lVar = (l) c3335c;
        C3674d a10 = lVar.d().a();
        byte[] bArr = new byte[a10.n()];
        byte[] bArr2 = new byte[i10 / 8];
        a10.v(bArr, bArr2, lVar.e(), this.f32361a);
        return new C15017e(bArr2, bArr);
    }
}
