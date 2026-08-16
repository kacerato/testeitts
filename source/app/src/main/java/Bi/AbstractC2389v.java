package Bi;

import org.bouncycastle.crypto.DataLengthException;

public abstract class AbstractC2389v implements K {
    @Override
    public int e(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) throws DataLengthException, IllegalStateException {
        int h10 = h();
        int i13 = 0;
        for (int i14 = 0; i14 != i11; i14++) {
            i13 += g(bArr, i10, bArr2, i12 + i13);
            i10 += h10;
        }
        return i13;
    }

    @Override
    public int h() {
        return c();
    }
}
