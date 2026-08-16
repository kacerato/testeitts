package ol;

import Bi.InterfaceC2392y;

public class C14596e extends C14597f implements InterfaceC2392y {
    public C14596e(C14598g c14598g) {
        this.f99582a = c14598g.f99582a;
    }

    @Override
    public String b() {
        return "HarakaS-512";
    }

    @Override
    public int c(byte[] bArr, int i10) {
        byte[] bArr2 = new byte[64];
        u(bArr2);
        C14597f.D(bArr2, 8, this.f99584c, 8, bArr, i10, 8);
        C14597f.D(bArr2, 24, this.f99584c, 24, bArr, i10 + 8, 16);
        C14597f.D(bArr2, 48, this.f99584c, 48, bArr, i10 + 24, 8);
        reset();
        return 64;
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
        if (i10 > 63) {
            throw new IllegalArgumentException("total input cannot be more than 64 bytes");
        }
        byte[] bArr = this.f99584c;
        this.f99585d = i10 + 1;
        bArr[i10] = b10;
    }

    @Override
    public void update(byte[] bArr, int i10, int i11) {
        int i12 = this.f99585d;
        if (i12 > 64 - i11) {
            throw new IllegalArgumentException("total input cannot be more than 64 bytes");
        }
        System.arraycopy(bArr, i10, this.f99584c, i12, i11);
        this.f99585d += i11;
    }
}
