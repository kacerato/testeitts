package org.bouncycastle.jcajce.provider.asymmetric.ecgost12;

import Bi.InterfaceC2387t;
import Bi.InterfaceC2392y;
import Ii.C2656n;
import Xh.t;
import Xi.C3335c;
import Xi.J;
import Xi.x0;
import bj.g;
import fk.InterfaceC13236b;
import fk.InterfaceC13239e;
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
import org.bouncycastle.jce.provider.C14720a;

public class c extends SignatureSpi implements t, E0 {

    public int f101298d = 64;

    public int f101299e = 64 / 2;

    public InterfaceC2392y f101296b = new C2656n();

    public InterfaceC2387t f101297c = new g();

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
        if (!(privateKey instanceof InterfaceC13236b)) {
            throw new InvalidKeyException("cannot recognise key type in ECGOST-2012-256 signer");
        }
        J j10 = (J) i.c(privateKey);
        if (j10.d().e().bitLength() > 256) {
            throw new InvalidKeyException("key out of range for ECGOST-2012-256");
        }
        this.f101296b.reset();
        SecureRandom secureRandom = this.appRandom;
        if (secureRandom != null) {
            this.f101297c.a(true, new x0(j10, secureRandom));
        } else {
            this.f101297c.a(true, j10);
        }
    }

    @Override
    public void engineInitVerify(PublicKey publicKey) throws InvalidKeyException {
        J j10;
        if (publicKey instanceof InterfaceC13239e) {
            j10 = (J) a(publicKey);
        } else {
            try {
                j10 = (J) i.d(C14720a.q(h0.w(publicKey.getEncoded())));
            } catch (Exception unused) {
                throw new InvalidKeyException("cannot recognise key type in ECGOST-2012-256 signer");
            }
        }
        if (j10.d().e().bitLength() > 256) {
            throw new InvalidKeyException("key out of range for ECGOST-2012-256");
        }
        this.f101296b.reset();
        this.f101297c.a(false, j10);
    }

    @Override
    public void engineSetParameter(String str, Object obj) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override
    public byte[] engineSign() throws SignatureException {
        byte[] bArr = new byte[this.f101296b.f()];
        this.f101296b.c(bArr, 0);
        try {
            byte[] bArr2 = new byte[this.f101298d];
            BigInteger[] b10 = this.f101297c.b(bArr);
            byte[] byteArray = b10[0].toByteArray();
            byte[] byteArray2 = b10[1].toByteArray();
            if (byteArray2[0] != 0) {
                System.arraycopy(byteArray2, 0, bArr2, this.f101299e - byteArray2.length, byteArray2.length);
            } else {
                System.arraycopy(byteArray2, 1, bArr2, this.f101299e - (byteArray2.length - 1), byteArray2.length - 1);
            }
            if (byteArray[0] != 0) {
                System.arraycopy(byteArray, 0, bArr2, this.f101298d - byteArray.length, byteArray.length);
            } else {
                System.arraycopy(byteArray, 1, bArr2, this.f101298d - (byteArray.length - 1), byteArray.length - 1);
            }
            return bArr2;
        } catch (Exception e10) {
            throw new SignatureException(e10.toString());
        }
    }

    @Override
    public void engineUpdate(byte b10) throws SignatureException {
        this.f101296b.update(b10);
    }

    @Override
    public boolean engineVerify(byte[] bArr) throws SignatureException {
        byte[] bArr2 = new byte[this.f101296b.f()];
        this.f101296b.c(bArr2, 0);
        try {
            int i10 = this.f101299e;
            byte[] bArr3 = new byte[i10];
            byte[] bArr4 = new byte[i10];
            System.arraycopy(bArr, 0, bArr4, 0, i10);
            int i11 = this.f101299e;
            System.arraycopy(bArr, i11, bArr3, 0, i11);
            BigInteger[] bigIntegerArr = {new BigInteger(1, bArr3), new BigInteger(1, bArr4)};
            return this.f101297c.c(bArr2, bigIntegerArr[0], bigIntegerArr[1]);
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
        this.f101296b.update(bArr, i10, i11);
    }
}
