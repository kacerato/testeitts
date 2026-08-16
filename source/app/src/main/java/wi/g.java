package Wi;

import java.security.SecureRandom;
import org.bouncycastle.crypto.InvalidCipherTextException;

public class g implements a {

    public SecureRandom f27791a = null;

    @Override
    public int a(byte[] bArr, int i10) {
        byte length = (byte) (bArr.length - i10);
        while (i10 < bArr.length - 1) {
            SecureRandom secureRandom = this.f27791a;
            if (secureRandom == null) {
                bArr[i10] = 0;
            } else {
                bArr[i10] = (byte) secureRandom.nextInt();
            }
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
        this.f27791a = secureRandom;
    }

    @Override
    public String d() {
        return "X9.23";
    }
}
