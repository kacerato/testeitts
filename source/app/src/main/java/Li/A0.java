package Li;

public class A0 extends n0 {
    @Override
    public String b() {
        return "XSalsa20";
    }

    @Override
    public int k() {
        return 24;
    }

    @Override
    public void t(byte[] bArr, byte[] bArr2) {
        if (bArr == null) {
            throw new IllegalArgumentException(b() + " doesn't support re-init with null key");
        }
        if (bArr.length != 32) {
            throw new IllegalArgumentException(b() + " requires a 256 bit key");
        }
        super.t(bArr, bArr2);
        org.bouncycastle.util.p.t(bArr2, 8, this.f14032c, 8, 2);
        int[] iArr = this.f14032c;
        int[] iArr2 = new int[iArr.length];
        n0.s(20, iArr, iArr2);
        int[] iArr3 = this.f14032c;
        iArr3[1] = iArr2[0] - iArr3[0];
        iArr3[2] = iArr2[5] - iArr3[5];
        iArr3[3] = iArr2[10] - iArr3[10];
        iArr3[4] = iArr2[15] - iArr3[15];
        iArr3[11] = iArr2[6] - iArr3[6];
        iArr3[12] = iArr2[7] - iArr3[7];
        iArr3[13] = iArr2[8] - iArr3[8];
        iArr3[14] = iArr2[9] - iArr3[9];
        org.bouncycastle.util.p.t(bArr2, 16, iArr3, 6, 2);
    }
}
