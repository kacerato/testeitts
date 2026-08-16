package dj;

import org.bouncycastle.dvcs.DVCSConstructionException;

public class C12930b extends AbstractC12936h {
    public C12930b(zh.k kVar) throws DVCSConstructionException {
        super(kVar);
        c();
    }

    public C12939k b() {
        return new C12939k(this.f84730a.y());
    }

    public final void c() throws DVCSConstructionException {
        if (this.f84730a.y() == null) {
            throw new DVCSConstructionException("DVCSRequest.data.messageImprint should be specified for CCPD service");
        }
    }
}
