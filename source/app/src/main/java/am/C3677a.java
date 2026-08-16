package am;

public class C3677a extends C3678b {
    public C3677a(bm.e eVar) {
        super(eVar);
    }

    @Override
    public void v(byte[] bArr) {
        for (int i10 = 0; i10 < this.f32394b.k() / 2; i10++) {
            short[] sArr = this.f32393a;
            int i11 = i10 * 2;
            int i12 = i10 * 3;
            int i13 = bArr[i12] & 255;
            byte b10 = bArr[i12 + 1];
            sArr[i11] = (short) (i13 | ((((short) (b10 & 255)) & 15) << 8));
            sArr[i11 + 1] = (short) (((((short) (bArr[i12 + 2] & 255)) & 255) << 4) | ((b10 & 255) >>> 4));
        }
        this.f32393a[this.f32394b.c() - 1] = 0;
    }

    @Override
    public byte[] x(int i10) {
        byte[] bArr = new byte[i10];
        int n10 = this.f32394b.n();
        for (int i11 = 0; i11 < this.f32394b.k() / 2; i11++) {
            int i12 = i11 * 3;
            int i13 = i11 * 2;
            bArr[i12] = (byte) (AbstractC3681e.f(this.f32393a[i13] & 65535, n10) & 255);
            int f10 = AbstractC3681e.f(this.f32393a[i13] & 65535, n10) >>> 8;
            int i14 = i13 + 1;
            bArr[i12 + 1] = (byte) (f10 | ((AbstractC3681e.f(this.f32393a[i14] & 65535, n10) & 15) << 4));
            bArr[i12 + 2] = (byte) (AbstractC3681e.f(this.f32393a[i14] & 65535, n10) >>> 4);
        }
        return bArr;
    }
}
