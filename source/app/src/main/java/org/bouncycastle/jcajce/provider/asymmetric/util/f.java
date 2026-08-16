package org.bouncycastle.jcajce.provider.asymmetric.util;

import Bi.InterfaceC2387t;
import Bi.InterfaceC2392y;
import Xh.t;
import bj.InterfaceC3894b;
import hi.E0;
import java.math.BigInteger;
import java.security.SignatureException;
import java.security.SignatureSpi;
import java.security.spec.AlgorithmParameterSpec;

public abstract class f extends SignatureSpi implements t, E0 {

    public InterfaceC2392y f101329b;

    public InterfaceC2387t f101330c;

    public InterfaceC3894b f101331d;

    public f(InterfaceC2392y interfaceC2392y, InterfaceC2387t interfaceC2387t, InterfaceC3894b interfaceC3894b) {
        this.f101329b = interfaceC2392y;
        this.f101330c = interfaceC2387t;
        this.f101331d = interfaceC3894b;
    }

    @Override
    public Object engineGetParameter(String str) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override
    public void engineSetParameter(String str, Object obj) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override
    public byte[] engineSign() throws SignatureException {
        byte[] bArr = new byte[this.f101329b.f()];
        this.f101329b.c(bArr, 0);
        try {
            BigInteger[] b10 = this.f101330c.b(bArr);
            return this.f101331d.b(this.f101330c.getOrder(), b10[0], b10[1]);
        } catch (Exception e10) {
            throw new SignatureException(e10.toString());
        }
    }

    @Override
    public void engineUpdate(byte b10) throws SignatureException {
        this.f101329b.update(b10);
    }

    @Override
    public boolean engineVerify(byte[] bArr) throws SignatureException {
        byte[] bArr2 = new byte[this.f101329b.f()];
        this.f101329b.c(bArr2, 0);
        try {
            BigInteger[] a10 = this.f101331d.a(this.f101330c.getOrder(), bArr);
            return this.f101330c.c(bArr2, a10[0], a10[1]);
        } catch (Exception unused) {
            throw new SignatureException("error decoding signature bytes.");
        }
    }

    @Override
    public void engineSetParameter(AlgorithmParameterSpec algorithmParameterSpec) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override
    public void engineUpdate(byte[] bArr, int i10, int i11) throws SignatureException {
        this.f101329b.update(bArr, i10, i11);
    }
}
