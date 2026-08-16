package dj;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.bouncycastle.dvcs.DVCSConstructionException;

public class C12944p extends AbstractC12936h {

    public List f84738b;

    public C12944p(zh.k kVar) throws DVCSConstructionException {
        super(kVar);
        zh.n[] u10 = kVar.u();
        if (u10 == null) {
            throw new DVCSConstructionException("DVCSRequest.data.certs should be specified for VPKC service");
        }
        this.f84738b = new ArrayList(u10.length);
        for (int i10 = 0; i10 != u10.length; i10++) {
            this.f84738b.add(new C12942n(u10[i10]));
        }
    }

    public List b() {
        return Collections.unmodifiableList(this.f84738b);
    }
}
