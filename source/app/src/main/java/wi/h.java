package Wi;

import java.security.SecureRandom;
import org.bouncycastle.crypto.InvalidCipherTextException;

public class h implements a {
    @Override
    public int a(byte[] bArr, int i10) {
        int length = bArr.length - i10;
        while (i10 < bArr.length) {
            bArr[i10] = 0;
            i10++;
        }
        return length;
    }

    @Override
    public int b(byte[] bArr) throws InvalidCipherTextException {
        int length = bArr.length;
        int i10 = 0;
        int i11 = -1;
        while (true) {
            length--;
            if (length < 0) {
                return i10;
            }
            i11 &= ((bArr[length] & 255) - 1) >> 31;
            i10 -= i11;
        }
    }

    @Override
    public void c(SecureRandom secureRandom) throws IllegalArgumentException {
    }

    @Override
    public String d() {
        return "ZeroByte";
    }
}
