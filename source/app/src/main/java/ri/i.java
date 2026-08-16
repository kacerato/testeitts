package ri;

import org.bouncycastle.cert.dane.DANEException;

public class i {

    public final InterfaceC15186e f109049a;

    public i(InterfaceC15186e interfaceC15186e) {
        this.f109049a = interfaceC15186e;
    }

    public h a(String str) throws DANEException {
        return new h(this.f109049a.a(str).getEntries());
    }
}
