package ni;

import Qk.o;
import Qk.p;
import Qk.q;
import hi.C13486b;
import java.io.IOException;
import java.io.OutputStream;
import oh.AbstractC14545v;
import oh.InterfaceC14520i;
import org.bouncycastle.cert.cmp.CMPException;
import org.bouncycastle.cert.cmp.CMPRuntimeException;
import org.bouncycastle.operator.OperatorCreationException;

public class C14448a {
    public static byte[] a(AbstractC14545v abstractC14545v, C13486b c13486b, q qVar, o oVar) throws CMPException {
        C13486b c10 = oVar.c(c13486b);
        if (c10 != null) {
            return b(abstractC14545v, c10, qVar);
        }
        throw new CMPException("cannot find digest algorithm from signature algorithm");
    }

    public static byte[] b(AbstractC14545v abstractC14545v, C13486b c13486b, q qVar) throws CMPException {
        p d10 = d(c13486b, qVar);
        c(abstractC14545v, d10.getOutputStream());
        return d10.b();
    }

    public static void c(AbstractC14545v abstractC14545v, OutputStream outputStream) {
        try {
            abstractC14545v.f(outputStream, InterfaceC14520i.f98892a);
            outputStream.close();
        } catch (IOException e10) {
            throw new CMPRuntimeException("unable to DER encode object: " + e10.getMessage(), e10);
        }
    }

    public static p d(C13486b c13486b, q qVar) throws CMPException {
        try {
            return qVar.a(c13486b);
        } catch (OperatorCreationException e10) {
            throw new CMPException("unable to create digester: " + e10.getMessage(), e10);
        }
    }
}
