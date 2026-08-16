package wg;

import Fg.h;

public class C16000c {

    public C16002e f127465a;

    public f f127466b;

    public C16000c(C16002e c16002e) {
        this(c16002e, null);
    }

    public void a(byte[] bArr, int i10, int i11) {
        bArr[i10] = (byte) (i11 / 16777216);
        bArr[i10 + 1] = (byte) (i11 / 65536);
        bArr[i10 + 2] = (byte) (i11 / 256);
        bArr[i10 + 3] = (byte) i11;
    }

    public final byte[] b(f fVar, byte[] bArr, int i10, int i11) {
        byte[] bArr2 = bArr == null ? new byte[0] : bArr;
        int b10 = fVar.b();
        int e10 = e(i11, b10);
        int i12 = i11 - ((e10 - 1) * b10);
        byte[] bArr3 = new byte[e10 * b10];
        int i13 = 0;
        for (int i14 = 1; i14 <= e10; i14++) {
            c(bArr3, i13, fVar, bArr2, i10, i14);
            i13 += b10;
        }
        if (i12 >= b10) {
            return bArr3;
        }
        byte[] bArr4 = new byte[i11];
        System.arraycopy(bArr3, 0, bArr4, 0, i11);
        return bArr4;
    }

    public final void c(byte[] bArr, int i10, f fVar, byte[] bArr2, int i11, int i12) {
        int b10 = fVar.b();
        byte[] bArr3 = new byte[b10];
        byte[] bArr4 = new byte[bArr2.length + 4];
        System.arraycopy(bArr2, 0, bArr4, 0, bArr2.length);
        a(bArr4, bArr2.length, i12);
        for (int i13 = 0; i13 < i11; i13++) {
            bArr4 = fVar.c(bArr4);
            j(bArr3, bArr4);
        }
        System.arraycopy(bArr3, 0, bArr, i10, b10);
    }

    public final void d(byte[] bArr) {
        if (this.f127466b == null) {
            this.f127466b = new C15999b(this.f127465a.b());
        }
        this.f127466b.a(bArr);
    }

    public final int e(int i10, int i11) {
        return (i10 / i11) + (i10 % i11 > 0 ? 1 : 0);
    }

    public byte[] f(char[] cArr, int i10, boolean z10) {
        cArr.getClass();
        d(h.a(cArr, z10));
        if (i10 == 0) {
            i10 = this.f127466b.b();
        }
        return b(this.f127466b, this.f127465a.e(), this.f127465a.d(), i10);
    }

    public C16002e g() {
        return this.f127465a;
    }

    public void h(C16002e c16002e) {
        this.f127465a = c16002e;
    }

    public void i(f fVar) {
        this.f127466b = fVar;
    }

    public final void j(byte[] bArr, byte[] bArr2) {
        for (int i10 = 0; i10 < bArr.length; i10++) {
            bArr[i10] = (byte) (bArr[i10] ^ bArr2[i10]);
        }
    }

    public C16000c(C16002e c16002e, f fVar) {
        this.f127465a = c16002e;
        this.f127466b = fVar;
    }
}
