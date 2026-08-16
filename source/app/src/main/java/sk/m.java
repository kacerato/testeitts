package Sk;

import Qk.u;
import Xh.C;
import Xh.t;
import oh.AbstractC14551y;
import oh.E;
import org.bouncycastle.cms.C14680v;
import org.bouncycastle.cms.CMSException;
import org.bouncycastle.pkcs.PKCSException;
import uh.C15624o;

public class m {

    public E f23628a;

    public m(Xh.g gVar) {
        if (gVar.v().A(t.f29038O1)) {
            throw new IllegalArgumentException("encryptedData requires constructor with decryptor.");
        }
        this.f23628a = E.G(AbstractC14551y.F(gVar.u()).H());
    }

    public k[] a() {
        k[] kVarArr = new k[this.f23628a.size()];
        for (int i10 = 0; i10 != this.f23628a.size(); i10++) {
            kVarArr[i10] = new k(C.y(this.f23628a.I(i10)));
        }
        return kVarArr;
    }

    public m(Xh.g gVar, u uVar) throws PKCSException {
        if (!gVar.v().A(t.f29038O1)) {
            throw new IllegalArgumentException("encryptedData requires constructor with decryptor.");
        }
        try {
            this.f23628a = E.G(new C14680v(C15624o.w(gVar)).a(uVar));
        } catch (CMSException e10) {
            throw new PKCSException("unable to extract data: " + e10.getMessage(), e10);
        }
    }
}
