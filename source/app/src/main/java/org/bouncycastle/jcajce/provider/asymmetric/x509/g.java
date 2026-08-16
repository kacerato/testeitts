package org.bouncycastle.jcajce.provider.asymmetric.x509;

import dk.InterfaceC12950f;
import hi.r;
import java.security.cert.CRLException;

public class g extends f {

    public final byte[] f101379g;

    public final CRLException f101380h;

    public g(InterfaceC12950f interfaceC12950f, r rVar, String str, byte[] bArr, boolean z10, byte[] bArr2, CRLException cRLException) {
        super(interfaceC12950f, rVar, str, bArr, z10);
        this.f101379g = bArr2;
        this.f101380h = cRLException;
    }

    @Override
    public byte[] getEncoded() throws CRLException {
        CRLException cRLException = this.f101380h;
        if (cRLException != null) {
            throw cRLException;
        }
        byte[] bArr = this.f101379g;
        if (bArr != null) {
            return bArr;
        }
        throw new CRLException();
    }
}
