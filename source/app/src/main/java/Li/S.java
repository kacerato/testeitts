package Li;

import Bi.InterfaceC2374f;
import Bi.InterfaceC2379k;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;

public class S implements InterfaceC2374f {

    public static final int f13748c = 1;

    public boolean f13749a;

    public final int f13750b;

    public S() {
        this(1);
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) throws IllegalArgumentException {
        this.f13749a = true;
    }

    @Override
    public String b() {
        return "Null";
    }

    @Override
    public int c() {
        return this.f13750b;
    }

    @Override
    public int g(byte[] bArr, int i10, byte[] bArr2, int i11) throws DataLengthException, IllegalStateException {
        if (!this.f13749a) {
            throw new IllegalStateException("Null engine not initialised");
        }
        int i12 = this.f13750b;
        if (i10 + i12 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        if (i12 + i11 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        }
        int i13 = 0;
        while (true) {
            int i14 = this.f13750b;
            if (i13 >= i14) {
                return i14;
            }
            bArr2[i11 + i13] = bArr[i10 + i13];
            i13++;
        }
    }

    @Override
    public void reset() {
    }

    public S(int i10) {
        this.f13750b = i10;
    }
}
