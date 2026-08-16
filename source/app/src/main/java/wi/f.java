package Wi;

import java.security.SecureRandom;
import org.bouncycastle.crypto.InvalidCipherTextException;

public class f implements a {
    @Override
    public int a(byte[] bArr, int i10) {
        int length = bArr.length - i10;
        int i11 = 0;
        if (i10 <= 0 ? (bArr[bArr.length - 1] & 1) == 0 : (bArr[i10 - 1] & 1) == 0) {
            i11 = 255;
        }
        byte b10 = (byte) i11;
        while (i10 < bArr.length) {
            bArr[i10] = b10;
            i10++;
        }
        return length;
    }

    @Override
    public int b(byte[] bArr) throws InvalidCipherTextException {
        int length = bArr.length - 1;
        int i10 = bArr[length] & 255;
        int i11 = -1;
        int i12 = 1;
        while (true) {
            length--;
            if (length < 0) {
                return i12;
            }
            i11 &= (((bArr[length] & 255) ^ i10) - 1) >> 31;
            i12 -= i11;
        }
    }

    @Override
    public void c(SecureRandom secureRandom) throws IllegalArgumentException {
    }

    @Override
    public String d() {
        return "TBC";
    }
}
