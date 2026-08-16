package Nj;

import java.io.IOException;
import java.security.SignatureException;
import oh.AbstractC14551y;
import oh.B;
import oh.C0;

public class f extends e {
    public void b(byte[] bArr) {
        for (int i10 = 0; i10 < bArr.length / 2; i10++) {
            byte b10 = bArr[i10];
            bArr[i10] = bArr[(bArr.length - 1) - i10];
            bArr[(bArr.length - 1) - i10] = b10;
        }
    }

    @Override
    public byte[] engineSign() throws SignatureException {
        byte[] H10 = AbstractC14551y.F(super.engineSign()).H();
        b(H10);
        try {
            return new C0(H10).getEncoded();
        } catch (Exception e10) {
            throw new SignatureException(e10.toString());
        }
    }

    @Override
    public boolean engineVerify(byte[] bArr) throws SignatureException {
        try {
            byte[] H10 = ((AbstractC14551y) B.B(bArr)).H();
            b(H10);
            try {
                return super.engineVerify(new C0(H10).getEncoded());
            } catch (SignatureException e10) {
                throw e10;
            } catch (Exception e11) {
                throw new SignatureException(e11.toString());
            }
        } catch (IOException unused) {
            throw new SignatureException("error decoding signature bytes.");
        }
    }
}
