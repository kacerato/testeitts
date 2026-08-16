package ol;

import Bi.InterfaceC2392y;

public class C14595d extends C14597f implements InterfaceC2392y {
    public C14595d(C14598g c14598g) {
        this.f99583b = c14598g.f99583b;
    }

    @Override
    public String b() {
        return "HarakaS-256";
    }

    @Override
    public int c(byte[] bArr, int i10) {
        byte[] bArr2 = new byte[32];
        t(bArr2);
        C14597f.D(bArr2, 0, this.f99584c, 0, bArr, i10, 32);
        reset();
        return bArr.length;
    }

    @Override
    public int f() {
        return 32;
    }

    @Override
    public void reset() {
        super.reset();
    }

    @Override
    public void update(byte b10) {
        int i10 = this.f99585d;
        if (i10 > 31) {
            throw new IllegalArgumentException("total input cannot be more than 32 bytes");
        }
        byte[] bArr = this.f99584c;
        this.f99585d = i10 + 1;
        bArr[i10] = b10;
    }

    @Override
    public void update(byte[] bArr, int i10, int i11) {
        int i12 = this.f99585d;
        if (i12 > 32 - i11) {
            throw new IllegalArgumentException("total input cannot be more than 32 bytes");
        }
        System.arraycopy(bArr, i10, this.f99584c, i12, i11);
        this.f99585d += i11;
    }
}
