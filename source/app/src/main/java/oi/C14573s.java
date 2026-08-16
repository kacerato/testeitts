package oi;

import Qk.A;
import hi.h0;
import java.io.IOException;
import java.io.OutputStream;
import oh.InterfaceC14520i;
import org.bouncycastle.cert.crmf.CRMFException;
import th.B;

public class C14573s {

    public final C14571q f99061a;

    public C14573s(C14571q c14571q) {
        this.f99061a = c14571q;
    }

    public boolean a(wh.q qVar, char[] cArr, h0 h0Var) throws CRMFException {
        this.f99061a.h(B.u(qVar.u().x()));
        A c10 = this.f99061a.c(cArr);
        OutputStream outputStream = c10.getOutputStream();
        try {
            outputStream.write(h0Var.s(InterfaceC14520i.f98892a));
            outputStream.close();
            return org.bouncycastle.util.a.I(c10.e(), qVar.x().J());
        } catch (IOException e10) {
            throw new CRMFException("exception encoding mac input: " + e10.getMessage(), e10);
        }
    }
}
