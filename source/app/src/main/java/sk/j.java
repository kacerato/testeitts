package Sk;

import Qk.F;
import Xh.C3327b;
import Xh.t;
import Xh.u;
import java.io.IOException;
import oh.C0;
import oh.C14518h;
import oh.E;
import oh.G0;
import oh.V0;
import org.bouncycastle.cms.C14681w;
import org.bouncycastle.cms.CMSException;
import org.bouncycastle.cms.G;
import org.bouncycastle.pkcs.PKCSException;
import org.bouncycastle.pkcs.PKCSIOException;

public class j {

    public C14518h f23621a = new C14518h();

    public j a(k kVar) throws IOException {
        this.f23621a.a(new Xh.g(t.f29014G1, new C0(new V0(kVar.d()).getEncoded())));
        return this;
    }

    public j b(F f10, k kVar) throws IOException {
        return c(f10, new G0(kVar.d()));
    }

    public final j c(F f10, E e10) throws IOException {
        try {
            this.f23621a.a(new C14681w().c(new G(e10.getEncoded()), f10).c());
            return this;
        } catch (CMSException e11) {
            throw new PKCSIOException(e11.getMessage(), e11.getCause());
        }
    }

    public j d(F f10, k[] kVarArr) throws IOException {
        C14518h c14518h = new C14518h();
        for (int i10 = 0; i10 != kVarArr.length; i10++) {
            c14518h.a(kVarArr[i10].d());
        }
        return c(f10, new V0(c14518h));
    }

    public i e(g gVar, char[] cArr) throws PKCSException {
        try {
            byte[] encoded = C3327b.w(new V0(this.f23621a)).getEncoded();
            return new i(new u(new Xh.g(t.f29014G1, new C0(encoded)), gVar != null ? new d(gVar).a(cArr, encoded) : null));
        } catch (IOException e10) {
            throw new PKCSException("unable to encode AuthenticatedSafe: " + e10.getMessage(), e10);
        }
    }
}
