package org.bouncycastle.jcajce.provider.asymmetric.ecgost;

import Bi.InterfaceC2387t;
import Bi.InterfaceC2392y;
import Ii.C2654l;
import Xh.t;
import Xi.C3335c;
import Xi.x0;
import bj.g;
import fk.InterfaceC13236b;
import fk.InterfaceC13239e;
import fk.InterfaceC13243i;
import hi.E0;
import hi.h0;
import java.math.BigInteger;
import java.security.AlgorithmParameters;
import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.SignatureException;
import java.security.SignatureSpi;
import java.security.spec.AlgorithmParameterSpec;
import org.bouncycastle.jcajce.provider.asymmetric.util.i;
import org.bouncycastle.jcajce.provider.asymmetric.util.j;
import org.bouncycastle.jce.provider.C14720a;

public class e extends SignatureSpi implements t, E0 {

    public InterfaceC2392y f101276b = new C2654l();

    public InterfaceC2387t f101277c = new g();

    public static C3335c a(PublicKey publicKey) throws InvalidKeyException {
        return publicKey instanceof b ? ((b) publicKey).c() : i.d(publicKey);
    }

    @Override
    public Object engineGetParameter(String str) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override
    public AlgorithmParameters engineGetParameters() {
        return null;
    }

    @Override
    public void engineInitSign(PrivateKey privateKey) throws InvalidKeyException {
        C3335c c10 = privateKey instanceof InterfaceC13236b ? i.c(privateKey) : j.a(privateKey);
        this.f101276b.reset();
        SecureRandom secureRandom = this.appRandom;
        if (secureRandom != null) {
            this.f101277c.a(true, new x0(c10, secureRandom));
        } else {
            this.f101277c.a(true, c10);
        }
    }

    @Override
    public void engineInitVerify(PublicKey publicKey) throws InvalidKeyException {
        C3335c d10;
        if (publicKey instanceof InterfaceC13239e) {
            d10 = a(publicKey);
        } else if (publicKey instanceof InterfaceC13243i) {
            d10 = j.b(publicKey);
        } else {
            try {
                d10 = i.d(C14720a.q(h0.w(publicKey.getEncoded())));
            } catch (Exception unused) {
                throw new InvalidKeyException("can't recognise key type in DSA based signer");
            }
        }
        this.f101276b.reset();
        this.f101277c.a(false, d10);
    }

    @Override
    public void engineSetParameter(String str, Object obj) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override
    public byte[] engineSign() throws SignatureException {
        byte[] bArr = new byte[this.f101276b.f()];
        this.f101276b.c(bArr, 0);
        try {
            byte[] bArr2 = new byte[64];
            BigInteger[] b10 = this.f101277c.b(bArr);
            byte[] byteArray = b10[0].toByteArray();
            byte[] byteArray2 = b10[1].toByteArray();
            if (byteArray2[0] != 0) {
                System.arraycopy(byteArray2, 0, bArr2, 32 - byteArray2.length, byteArray2.length);
            } else {
                System.arraycopy(byteArray2, 1, bArr2, 32 - (byteArray2.length - 1), byteArray2.length - 1);
            }
            if (byteArray[0] != 0) {
                System.arraycopy(byteArray, 0, bArr2, 64 - byteArray.length, byteArray.length);
            } else {
                System.arraycopy(byteArray, 1, bArr2, 64 - (byteArray.length - 1), byteArray.length - 1);
            }
            return bArr2;
        } catch (Exception e10) {
            throw new SignatureException(e10.toString());
        }
    }

    @Override
    public void engineUpdate(byte b10) throws SignatureException {
        this.f101276b.update(b10);
    }

    @Override
    public boolean engineVerify(byte[] bArr) throws SignatureException {
        byte[] bArr2 = new byte[this.f101276b.f()];
        this.f101276b.c(bArr2, 0);
        try {
            byte[] bArr3 = new byte[32];
            byte[] bArr4 = new byte[32];
            System.arraycopy(bArr, 0, bArr4, 0, 32);
            System.arraycopy(bArr, 32, bArr3, 0, 32);
            BigInteger[] bigIntegerArr = {new BigInteger(1, bArr3), new BigInteger(1, bArr4)};
            return this.f101277c.c(bArr2, bigIntegerArr[0], bigIntegerArr[1]);
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
        this.f101276b.update(bArr, i10, i11);
    }
}
