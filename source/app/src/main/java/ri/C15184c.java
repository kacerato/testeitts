package ri;

import Qk.p;
import li.C14146h;
import org.bouncycastle.cert.dane.DANEException;

public class C15184c {

    public final C15188g f109045a;

    public C15184c(p pVar) {
        this.f109045a = new C15188g(pVar);
    }

    public C15183b a(String str, int i10, C14146h c14146h) throws DANEException {
        if (i10 >= 0 && i10 <= 3) {
            return new C15183b(this.f109045a.a(str).a(), new byte[]{(byte) i10, 0, 0}, c14146h);
        }
        throw new DANEException("unknown certificate usage: " + i10);
    }

    public C15183b b(String str, C14146h c14146h) throws DANEException {
        return a(str, 3, c14146h);
    }
}
