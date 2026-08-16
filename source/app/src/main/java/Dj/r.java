package dj;

import org.bouncycastle.cms.CMSException;
import org.bouncycastle.cms.O;
import org.bouncycastle.dvcs.DVCSConstructionException;

public class r extends AbstractC12936h {

    public O f84739b;

    public r(zh.k kVar) throws DVCSConstructionException {
        super(kVar);
        d();
    }

    public byte[] b() {
        return this.f84730a.x().H();
    }

    public O c() {
        return this.f84739b;
    }

    public final void d() throws DVCSConstructionException {
        if (this.f84739b == null) {
            if (this.f84730a.x() == null) {
                throw new DVCSConstructionException("DVCSRequest.data.message should be specified for VSD service");
            }
            try {
                this.f84739b = new O(this.f84730a.x().H());
            } catch (CMSException e10) {
                throw new DVCSConstructionException("Can't read CMS SignedData from input", e10);
            }
        }
    }
}
