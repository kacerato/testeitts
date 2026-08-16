package ej;

import Ah.n;
import gj.InterfaceC13385a;
import java.io.IOException;
import java.io.OutputStream;
import oh.InterfaceC14520i;
import org.bouncycastle.asn1.ASN1ParsingException;
import org.bouncycastle.eac.EACException;
import org.bouncycastle.eac.EACIOException;

public class C13159c {

    public Ah.c f85822a;

    public C13159c(Ah.c cVar) {
        this.f85822a = cVar;
    }

    public static Ah.c c(byte[] bArr) throws IOException {
        try {
            return Ah.c.w(bArr);
        } catch (ClassCastException e10) {
            throw new EACIOException("malformed data: " + e10.getMessage(), e10);
        } catch (IllegalArgumentException e11) {
            throw new EACIOException("malformed data: " + e11.getMessage(), e11);
        } catch (ASN1ParsingException e12) {
            if (e12.getCause() instanceof IOException) {
                throw ((IOException) e12.getCause());
            }
            throw new EACIOException("malformed data: " + e12.getMessage(), e12);
        }
    }

    public n a() {
        return this.f85822a.y();
    }

    public boolean b(InterfaceC13385a interfaceC13385a) throws EACException {
        try {
            OutputStream outputStream = interfaceC13385a.getOutputStream();
            outputStream.write(this.f85822a.u().s(InterfaceC14520i.f98892a));
            outputStream.close();
            return interfaceC13385a.verify(this.f85822a.v());
        } catch (Exception e10) {
            throw new EACException("unable to process signature: " + e10.getMessage(), e10);
        }
    }

    public Ah.c d() {
        return this.f85822a;
    }

    public C13159c(byte[] bArr) throws IOException {
        this(c(bArr));
    }
}
