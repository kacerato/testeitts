package Qj;

import Bi.InterfaceC2387t;
import Bi.InterfaceC2392y;
import Ii.C2654l;
import Xh.t;
import Xi.C3335c;
import Xi.x0;
import bj.o;
import fk.InterfaceC13236b;
import fk.InterfaceC13239e;
import fk.InterfaceC13243i;
import hi.E0;
import hi.h0;
import java.math.BigInteger;
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

public class h extends SignatureSpi implements t, E0 {

    public InterfaceC2392y f22455b = new C2654l();

    public InterfaceC2387t f22456c = new o();

    public SecureRandom f22457d;

    @Override
    public Object engineGetParameter(String str) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override
    public void engineInitSign(PrivateKey privateKey) throws InvalidKeyException {
        C3335c c10 = privateKey instanceof InterfaceC13236b ? i.c(privateKey) : j.a(privateKey);
        this.f22455b.reset();
        SecureRandom secureRandom = this.f22457d;
        if (secureRandom != null) {
            this.f22456c.a(true, new x0(c10, secureRandom));
        } else {
            this.f22456c.a(true, c10);
        }
    }

    @Override
    public void engineInitVerify(PublicKey publicKey) throws InvalidKeyException {
        C3335c d10;
        if (publicKey instanceof InterfaceC13239e) {
            d10 = i.d(publicKey);
        } else if (publicKey instanceof InterfaceC13243i) {
            d10 = j.b(publicKey);
        } else {
            try {
                PublicKey q10 = C14720a.q(h0.w(publicKey.getEncoded()));
                if (!(q10 instanceof InterfaceC13239e)) {
                    throw new InvalidKeyException("can't recognise key type in DSA based signer");
                }
                d10 = i.d(q10);
            } catch (Exception unused) {
                throw new InvalidKeyException("can't recognise key type in DSA based signer");
            }
        }
        this.f22455b.reset();
        this.f22456c.a(false, d10);
    }

    @Override
    public void engineSetParameter(String str, Object obj) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override
    public byte[] engineSign() throws SignatureException {
        byte[] bArr = new byte[this.f22455b.f()];
        this.f22455b.c(bArr, 0);
        try {
            byte[] bArr2 = new byte[64];
            BigInteger[] b10 = this.f22456c.b(bArr);
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
        this.f22455b.update(b10);
    }

    @Override
    public boolean engineVerify(byte[] bArr) throws SignatureException {
        byte[] bArr2 = new byte[this.f22455b.f()];
        this.f22455b.c(bArr2, 0);
        try {
            byte[] bArr3 = new byte[32];
            byte[] bArr4 = new byte[32];
            System.arraycopy(bArr, 0, bArr4, 0, 32);
            System.arraycopy(bArr, 32, bArr3, 0, 32);
            BigInteger[] bigIntegerArr = {new BigInteger(1, bArr3), new BigInteger(1, bArr4)};
            return this.f22456c.c(bArr2, bigIntegerArr[0], bigIntegerArr[1]);
        } catch (Exception unused) {
            throw new SignatureException("error decoding signature bytes.");
        }
    }

    @Override
    public void engineInitSign(PrivateKey privateKey, SecureRandom secureRandom) throws InvalidKeyException {
        this.f22457d = secureRandom;
        engineInitSign(privateKey);
    }

    @Override
    public void engineSetParameter(AlgorithmParameterSpec algorithmParameterSpec) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override
    public void engineUpdate(byte[] bArr, int i10, int i11) throws SignatureException {
        this.f22455b.update(bArr, i10, i11);
    }
}
