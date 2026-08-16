package Wi;

import Bi.r;
import java.security.SecureRandom;
import org.bouncycastle.crypto.InvalidCipherTextException;

public class b implements a {

    public SecureRandom f27789a;

    @Override
    public int a(byte[] bArr, int i10) {
        byte length = (byte) (bArr.length - i10);
        while (i10 < bArr.length - 1) {
            bArr[i10] = (byte) this.f27789a.nextInt();
            i10++;
        }
        bArr[i10] = length;
        return length;
    }

    @Override
    public int b(byte[] bArr) throws InvalidCipherTextException {
        int i10 = bArr[bArr.length - 1] & 255;
        if ((((bArr.length - i10) | (i10 - 1)) >> 31) == 0) {
            return i10;
        }
        throw new InvalidCipherTextException("pad block corrupted");
    }

    @Override
    public void c(SecureRandom secureRandom) throws IllegalArgumentException {
        this.f27789a = r.i(secureRandom);
    }

    @Override
    public String d() {
        return "ISO10126-2";
    }
}
