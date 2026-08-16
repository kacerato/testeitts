package nl;

import Bi.C2371c;
import Bi.G;
import Bi.InterfaceC2372d;
import Bi.InterfaceC2392y;
import Xi.C3335c;
import java.security.SecureRandom;
import nl.l;

public class C14462f implements InterfaceC2372d {

    public SecureRandom f98319g;

    public InterfaceC2392y f98320h;

    @Override
    public C2371c a() {
        l.a aVar = new l.a();
        byte[] bArr = new byte[1088];
        this.f98319g.nextBytes(bArr);
        byte[] bArr2 = new byte[1056];
        System.arraycopy(bArr, 32, bArr2, 0, 1024);
        aVar.f98328a = 11;
        aVar.f98329b = 0L;
        aVar.f98330c = 0L;
        l.c(new C14457a(this.f98320h), bArr2, 1024, 5, bArr, aVar, bArr2, 0);
        return new C2371c((C3335c) new C14466j(bArr2, this.f98320h.b()), (C3335c) new C14465i(bArr, this.f98320h.b()));
    }

    @Override
    public void b(G g10) {
        this.f98319g = g10.a();
        this.f98320h = ((C14461e) g10).c();
    }
}
