package ej;

import Ah.n;
import gj.InterfaceC13385a;
import java.io.IOException;
import java.io.OutputStream;
import oh.InterfaceC14520i;
import org.bouncycastle.asn1.ASN1ParsingException;
import org.bouncycastle.eac.EACException;
import org.bouncycastle.eac.EACIOException;

public class C13158b {

    public Ah.b f85821a;

    public C13158b(Ah.b bVar) {
        this.f85821a = bVar;
    }

    public static Ah.b c(byte[] bArr) throws IOException {
        try {
            return Ah.b.E(bArr);
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
        return this.f85821a.v().D();
    }

    public boolean b(InterfaceC13385a interfaceC13385a) throws EACException {
        try {
            OutputStream outputStream = interfaceC13385a.getOutputStream();
            outputStream.write(this.f85821a.v().s(InterfaceC14520i.f98892a));
            outputStream.close();
            return interfaceC13385a.verify(this.f85821a.G());
        } catch (Exception e10) {
            throw new EACException("unable to process signature: " + e10.getMessage(), e10);
        }
    }

    public Ah.b d() {
        return this.f85821a;
    }

    public C13158b(byte[] bArr) throws IOException {
        this(c(bArr));
    }
}
