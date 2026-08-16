package B0;

import java.util.Arrays;

public final class M extends L {

    public final byte[] f1139f;

    public M(byte[] bArr) {
        super(Arrays.copyOfRange(bArr, 0, 25));
        this.f1139f = bArr;
    }

    @Override
    public final byte[] l0() {
        return this.f1139f;
    }
}
