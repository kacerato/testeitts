package em;

public class e {

    public byte[] f85892a;

    public int f85893b;

    public k f85894c;

    public e(k kVar, int i10) {
        this.f85894c = kVar;
        if (i10 % kVar.b() != 0) {
            throw new IllegalArgumentException("buffer size not multiple of input block size");
        }
        this.f85892a = new byte[i10];
        this.f85893b = 0;
    }

    public int a(byte b10, byte[] bArr, int i10) {
        byte[] bArr2 = this.f85892a;
        int i11 = this.f85893b;
        int i12 = i11 + 1;
        this.f85893b = i12;
        bArr2[i11] = b10;
        if (i12 != bArr2.length) {
            return 0;
        }
        int c10 = this.f85894c.c(bArr2, 0, bArr2.length, bArr, i10);
        this.f85893b = 0;
        return c10;
    }

    public int b(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) {
        if (i11 < 0) {
            throw new IllegalArgumentException("Can't have a negative input length!");
        }
        byte[] bArr3 = this.f85892a;
        int length = bArr3.length;
        int i13 = this.f85893b;
        int i14 = length - i13;
        int i15 = 0;
        if (i11 > i14) {
            System.arraycopy(bArr, i10, bArr3, i13, i14);
            k kVar = this.f85894c;
            byte[] bArr4 = this.f85892a;
            int c10 = kVar.c(bArr4, 0, bArr4.length, bArr2, i12);
            this.f85893b = 0;
            int i16 = i11 - i14;
            int i17 = i10 + i14;
            int i18 = i12 + c10;
            int length2 = i16 - (i16 % this.f85892a.length);
            i15 = c10 + this.f85894c.c(bArr, i17, length2, bArr2, i18);
            i11 = i16 - length2;
            i10 = i17 + length2;
        }
        if (i11 != 0) {
            System.arraycopy(bArr, i10, this.f85892a, this.f85893b, i11);
            this.f85893b += i11;
        }
        return i15;
    }
}
