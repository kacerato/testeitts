package org.bouncycastle.jcajce.provider.asymmetric.ec;

import Bi.InterfaceC2379k;
import Ii.L;
import Xi.v0;
import Xi.x0;
import android.security.keystore.KeyProperties;
import ck.y;
import dk.C12947c;
import dk.InterfaceC12950f;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.SignatureException;
import java.security.SignatureSpi;
import java.security.spec.AlgorithmParameterSpec;
import org.bouncycastle.crypto.CryptoException;

public class g extends SignatureSpi {

    public final InterfaceC12950f f101203a = new C12947c();

    public AlgorithmParameters f101204b;

    public y f101205c;

    public final bj.y f101206d;

    public static class a extends g {
        public a() {
            super(new bj.y(L.x()));
        }
    }

    public static class b extends g {
        public b() {
            super(new bj.y());
        }
    }

    public g(bj.y yVar) {
        this.f101206d = yVar;
    }

    @Override
    public Object engineGetParameter(String str) {
        throw new UnsupportedOperationException("engineGetParameter unsupported");
    }

    @Override
    public AlgorithmParameters engineGetParameters() {
        if (this.f101204b == null && this.f101205c != null) {
            try {
                AlgorithmParameters l10 = this.f101203a.l(KeyProperties.SIGNATURE_PADDING_RSA_PSS);
                this.f101204b = l10;
                l10.init(this.f101205c);
            } catch (Exception e10) {
                throw new RuntimeException(e10.toString());
            }
        }
        return this.f101204b;
    }

    @Override
    public void engineInitSign(PrivateKey privateKey) throws InvalidKeyException {
        InterfaceC2379k c10 = org.bouncycastle.jcajce.provider.asymmetric.util.i.c(privateKey);
        SecureRandom secureRandom = this.appRandom;
        if (secureRandom != null) {
            c10 = new x0(c10, secureRandom);
        }
        y yVar = this.f101205c;
        if (yVar != null) {
            this.f101206d.a(true, new v0(c10, yVar.a()));
        } else {
            this.f101206d.a(true, c10);
        }
    }

    @Override
    public void engineInitVerify(PublicKey publicKey) throws InvalidKeyException {
        InterfaceC2379k b10 = d.b(publicKey);
        y yVar = this.f101205c;
        if (yVar != null) {
            b10 = new v0(b10, yVar.a());
        }
        this.f101206d.a(false, b10);
    }

    @Override
    public void engineSetParameter(String str, Object obj) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override
    public byte[] engineSign() throws SignatureException {
        try {
            return this.f101206d.c();
        } catch (CryptoException e10) {
            throw new SignatureException("unable to create signature: " + e10.getMessage());
        }
    }

    @Override
    public void engineUpdate(byte b10) throws SignatureException {
        this.f101206d.update(b10);
    }

    @Override
    public boolean engineVerify(byte[] bArr) throws SignatureException {
        return this.f101206d.b(bArr);
    }

    @Override
    public void engineSetParameter(AlgorithmParameterSpec algorithmParameterSpec) throws InvalidAlgorithmParameterException {
        if (!(algorithmParameterSpec instanceof y)) {
            throw new InvalidAlgorithmParameterException("only SM2ParameterSpec supported");
        }
        this.f101205c = (y) algorithmParameterSpec;
    }

    @Override
    public void engineUpdate(byte[] bArr, int i10, int i11) throws SignatureException {
        this.f101206d.update(bArr, i10, i11);
    }
}
