package oi;

import hi.C13480D;
import java.io.IOException;
import java.io.OutputStream;
import oh.AbstractC14545v;
import oh.C14549x;
import oh.InterfaceC14516g;
import oh.InterfaceC14520i;
import org.bouncycastle.cert.CertIOException;
import org.bouncycastle.cert.crmf.CRMFRuntimeException;

public class C14556b {
    public static void a(C13480D c13480d, C14549x c14549x, boolean z10, InterfaceC14516g interfaceC14516g) throws CertIOException {
        try {
            c13480d.c(c14549x, z10, interfaceC14516g);
        } catch (IOException e10) {
            throw new CertIOException("cannot encode extension: " + e10.getMessage(), e10);
        }
    }

    public static void b(AbstractC14545v abstractC14545v, OutputStream outputStream) {
        try {
            abstractC14545v.f(outputStream, InterfaceC14520i.f98892a);
            outputStream.close();
        } catch (IOException e10) {
            throw new CRMFRuntimeException("unable to DER encode object: " + e10.getMessage(), e10);
        }
    }
}
