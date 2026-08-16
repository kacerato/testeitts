package org.bouncycastle.jcajce.provider.asymmetric.x509;

import dk.InterfaceC12950f;
import hi.C13500l;
import hi.C13505q;
import java.security.cert.CertificateEncodingException;

public class i extends h {

    public final byte[] f101392h;

    public final CertificateEncodingException f101393i;

    public i(InterfaceC12950f interfaceC12950f, C13505q c13505q, C13500l c13500l, boolean[] zArr, String str, byte[] bArr, byte[] bArr2, CertificateEncodingException certificateEncodingException) {
        super(interfaceC12950f, c13505q, c13500l, zArr, str, bArr);
        this.f101392h = bArr2;
        this.f101393i = certificateEncodingException;
    }

    @Override
    public byte[] getEncoded() throws CertificateEncodingException {
        CertificateEncodingException certificateEncodingException = this.f101393i;
        if (certificateEncodingException != null) {
            throw certificateEncodingException;
        }
        byte[] bArr = this.f101392h;
        if (bArr != null) {
            return bArr;
        }
        throw new CertificateEncodingException();
    }
}
