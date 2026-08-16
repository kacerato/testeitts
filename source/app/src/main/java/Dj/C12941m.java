package dj;

import java.io.IOException;
import oh.InterfaceC14520i;
import org.bouncycastle.cms.CMSException;
import org.bouncycastle.cms.G;
import org.bouncycastle.cms.O;
import org.bouncycastle.cms.P;
import org.bouncycastle.dvcs.DVCSException;

public class C12941m {

    public final P f84735a;

    public C12941m(P p10) {
        this.f84735a = p10;
    }

    public O a(AbstractC12933e abstractC12933e) throws DVCSException {
        try {
            return this.f84735a.o(new G(abstractC12933e.b(), abstractC12933e.a().r().s(InterfaceC14520i.f98892a)), true);
        } catch (IOException e10) {
            throw new DVCSException("Could not encode DVCS request", e10);
        } catch (CMSException e11) {
            throw new DVCSException("Could not sign DVCS request", e11);
        }
    }
}
