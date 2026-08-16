package Ji;

import Bi.InterfaceC2379k;
import Xi.L;
import jk.AbstractC13875e;
import jk.C13873c;

public class c implements b {

    public L f10613a;

    @Override
    public void a(InterfaceC2379k interfaceC2379k) {
        if (!(interfaceC2379k instanceof L)) {
            throw new IllegalArgumentException("ECPrivateKeyParameters are required for decryption.");
        }
        this.f10613a = (L) interfaceC2379k;
    }

    @Override
    public jk.i b(i iVar) {
        L l10 = this.f10613a;
        if (l10 == null) {
            throw new IllegalStateException("ECElGamalDecryptor not initialised");
        }
        AbstractC13875e a10 = l10.d().a();
        return C13873c.a(a10, iVar.c()).J(C13873c.a(a10, iVar.b()).z(this.f10613a.e())).B();
    }
}
