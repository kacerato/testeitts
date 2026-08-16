package Bi;

import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;

public abstract class X extends AbstractC2389v implements Y {

    public final InterfaceC2374f f1851a;

    public X(InterfaceC2374f interfaceC2374f) {
        this.f1851a = interfaceC2374f;
    }

    public InterfaceC2374f d() {
        return this.f1851a;
    }

    @Override
    public int f(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) throws DataLengthException {
        int i13 = i10 + i11;
        if (i13 > bArr.length) {
            throw new DataLengthException("input buffer too small");
        }
        if (i12 + i11 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        }
        while (i10 < i13) {
            bArr2[i12] = k(bArr[i10]);
            i12++;
            i10++;
        }
        return i11;
    }

    @Override
    public final byte i(byte b10) {
        return k(b10);
    }

    public abstract byte k(byte b10);
}
