package oi;

import Qk.A;
import hi.h0;
import java.io.IOException;
import java.io.OutputStream;
import oh.C14538r0;
import oh.InterfaceC14520i;
import org.bouncycastle.cert.crmf.CRMFException;

public abstract class AbstractC14572r {
    public static wh.q a(C14571q c14571q, char[] cArr, h0 h0Var) throws CRMFException {
        A c10 = c14571q.c(cArr);
        OutputStream outputStream = c10.getOutputStream();
        try {
            outputStream.write(h0Var.s(InterfaceC14520i.f98892a));
            outputStream.close();
            return new wh.q(c10.a(), new C14538r0(c10.e()));
        } catch (IOException e10) {
            throw new CRMFException("exception encoding mac input: " + e10.getMessage(), e10);
        }
    }
}
