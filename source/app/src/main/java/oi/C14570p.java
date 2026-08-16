package oi;

import Qk.F;
import hi.C13481E;
import java.io.IOException;
import org.bouncycastle.cms.C14684z;
import org.bouncycastle.cms.CMSException;
import org.bouncycastle.cms.G;
import org.bouncycastle.cms.G0;
import uh.C15629u;
import wh.InterfaceC16004b;

public class C14570p {

    public C14684z f99047a;

    public G f99048b;

    public C14570p(Xh.v vVar, C13481E c13481e) {
        try {
            this.f99048b = new G(InterfaceC16004b.f127481h, new wh.k(vVar, c13481e).getEncoded());
            this.f99047a = new C14684z();
        } catch (IOException unused) {
            throw new IllegalStateException("unable to encode key and general name info");
        }
    }

    public C14570p a(G0 g02) {
        this.f99047a.a(g02);
        return this;
    }

    public C14569o b(F f10) throws CMSException {
        return new C14569o(new wh.o(new wh.l(C15629u.w(this.f99047a.e(this.f99048b, f10).g().u()))));
    }
}
