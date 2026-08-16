package cm;

import Qk.p;
import java.net.URI;
import oh.AbstractC14536q;
import oh.C14512e;
import oh.C14554z0;
import oh.M0;
import oh.Q;
import org.bouncycastle.cms.CMSException;
import uh.C15612c;
import uh.G;

public class C4227d {

    public G f35047a;

    public URI f35048b;

    public void a(p pVar) throws CMSException {
        new C4228e(this.f35047a).e(pVar);
    }

    public void b(URI uri) {
        this.f35048b = uri;
    }

    public void c(boolean z10, String str, String str2) {
        d(z10, str, str2, null);
    }

    public void d(boolean z10, String str, String str2, C15612c c15612c) {
        e(z10, str != null ? new M0(str) : null, str2 != null ? new C14554z0(str2) : null, c15612c);
    }

    public final void e(boolean z10, Q q10, AbstractC14536q abstractC14536q, C15612c c15612c) {
        this.f35047a = new G(C14512e.I(z10), q10, abstractC14536q, c15612c);
    }
}
