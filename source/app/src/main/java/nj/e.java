package Nj;

import Bi.InterfaceC2379k;
import Bi.InterfaceC2387t;
import Bi.InterfaceC2392y;
import Ii.C2654l;
import Xh.t;
import Xi.C3335c;
import Xi.x0;
import di.C12925d;
import fk.InterfaceC13236b;
import hi.E0;
import java.math.BigInteger;
import java.security.AlgorithmParameters;
import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.SignatureException;
import java.security.SignatureSpi;
import java.security.spec.AlgorithmParameterSpec;
import oh.AbstractC14551y;
import oh.B;
import oh.C0;
import org.bouncycastle.jcajce.provider.asymmetric.util.i;

public class e extends SignatureSpi implements t, E0 {

    public InterfaceC2392y f16407b;

    public InterfaceC2387t f16408c = new bj.e();

    public byte[] a(byte[] bArr) {
        byte[] bArr2 = new byte[128];
        for (int i10 = 0; i10 < bArr.length; i10++) {
            int i11 = i10 * 2;
            bArr2[i11] = (byte) ((bArr[i10] >> 4) & 15);
            bArr2[i11 + 1] = (byte) (bArr[i10] & 15);
        }
        return bArr2;
    }

    @Override
    public Object engineGetParameter(String str) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override
    public AlgorithmParameters engineGetParameters() {
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0034  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void engineInitSign(PrivateKey privateKey) throws InvalidKeyException {
        C3335c c3335c;
        C2654l c2654l;
        SecureRandom secureRandom;
        if (privateKey instanceof a) {
            c3335c = i.c(privateKey);
            c2654l = new C2654l(a(C12925d.v()));
        } else {
            if (!(privateKey instanceof InterfaceC13236b)) {
                c3335c = null;
                secureRandom = this.appRandom;
                if (secureRandom == null) {
                    this.f16408c.a(true, new x0(c3335c, secureRandom));
                    return;
                } else {
                    this.f16408c.a(true, c3335c);
                    return;
                }
            }
            c3335c = i.c(privateKey);
            c2654l = new C2654l(a(C12925d.v()));
        }
        this.f16407b = c2654l;
        secureRandom = this.appRandom;
        if (secureRandom == null) {
        }
    }

    @Override
    public void engineInitVerify(PublicKey publicKey) throws InvalidKeyException {
        InterfaceC2379k d10;
        if (publicKey instanceof b) {
            b bVar = (b) publicKey;
            d10 = bVar.c();
            this.f16407b = new C2654l(a(bVar.e()));
        } else {
            d10 = i.d(publicKey);
            this.f16407b = new C2654l(a(C12925d.v()));
        }
        this.f16408c.a(false, d10);
    }

    @Override
    public void engineSetParameter(String str, Object obj) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override
    public byte[] engineSign() throws SignatureException {
        byte[] bArr = new byte[this.f16407b.f()];
        this.f16407b.c(bArr, 0);
        try {
            BigInteger[] b10 = this.f16408c.b(bArr);
            byte[] byteArray = b10[0].toByteArray();
            byte[] byteArray2 = b10[1].toByteArray();
            int length = (byteArray.length > byteArray2.length ? byteArray.length : byteArray2.length) * 2;
            byte[] bArr2 = new byte[length];
            System.arraycopy(byteArray2, 0, bArr2, (length / 2) - byteArray2.length, byteArray2.length);
            System.arraycopy(byteArray, 0, bArr2, length - byteArray.length, byteArray.length);
            return new C0(bArr2).getEncoded();
        } catch (Exception e10) {
            throw new SignatureException(e10.toString());
        }
    }

    @Override
    public void engineUpdate(byte b10) throws SignatureException {
        this.f16407b.update(b10);
    }

    @Override
    public boolean engineVerify(byte[] bArr) throws SignatureException {
        byte[] bArr2 = new byte[this.f16407b.f()];
        this.f16407b.c(bArr2, 0);
        try {
            byte[] H10 = ((AbstractC14551y) B.B(bArr)).H();
            byte[] bArr3 = new byte[H10.length / 2];
            byte[] bArr4 = new byte[H10.length / 2];
            System.arraycopy(H10, 0, bArr4, 0, H10.length / 2);
            System.arraycopy(H10, H10.length / 2, bArr3, 0, H10.length / 2);
            BigInteger[] bigIntegerArr = {new BigInteger(1, bArr3), new BigInteger(1, bArr4)};
            return this.f16408c.c(bArr2, bigIntegerArr[0], bigIntegerArr[1]);
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
        this.f16407b.update(bArr, i10, i11);
    }
}
