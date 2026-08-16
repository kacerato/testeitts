package cm;

import Qk.p;
import java.io.IOException;
import oh.InterfaceC14520i;
import oh.J;
import org.bouncycastle.cms.CMSException;
import uh.C15612c;
import uh.G;

public class C4228e {

    public final G f35049a;

    public C4228e(G g10) {
        this.f35049a = g10;
    }

    public final String a(J j10) {
        if (j10 != null) {
            return j10.toString();
        }
        return null;
    }

    public String b() {
        G g10 = this.f35049a;
        if (g10 != null) {
            return a(g10.v());
        }
        return null;
    }

    public String c() {
        G g10 = this.f35049a;
        if (g10 != null) {
            return a(g10.y());
        }
        return null;
    }

    public C15612c d() {
        G g10 = this.f35049a;
        if (g10 != null) {
            return g10.z();
        }
        return null;
    }

    public void e(p pVar) throws CMSException {
        G g10 = this.f35049a;
        if (g10 == null || !g10.A()) {
            return;
        }
        try {
            pVar.getOutputStream().write(this.f35049a.s(InterfaceC14520i.f98892a));
        } catch (IOException e10) {
            throw new CMSException("unable to initialise calculator from metaData: " + e10.getMessage(), e10);
        }
    }
}
