package dj;

import org.bouncycastle.dvcs.DVCSConstructionException;

public class C12932d extends AbstractC12936h {
    public C12932d(zh.k kVar) throws DVCSConstructionException {
        super(kVar);
        c();
    }

    public byte[] b() {
        return this.f84730a.x().H();
    }

    public final void c() throws DVCSConstructionException {
        if (this.f84730a.x() == null) {
            throw new DVCSConstructionException("DVCSRequest.data.message should be specified for CPD service");
        }
    }
}
