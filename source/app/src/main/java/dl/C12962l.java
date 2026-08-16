package dl;

import java.security.SecureRandom;

public class C12962l {

    public int f84804a;

    public int f84805b;

    public int f84806c;

    public SecureRandom f84807d;

    public int f84808e;

    public int f84809f;

    public int f84810g;

    public C12953c f84811h = new C12953c();

    public C12962l(int i10, int i11, SecureRandom secureRandom) {
        int i12;
        int i13;
        this.f84807d = secureRandom;
        this.f84805b = i10;
        this.f84804a = i11;
        int i14 = 1 << i10;
        this.f84806c = i14;
        this.f84809f = ((i14 * 14) / 8) + 1;
        if (i10 == 10) {
            this.f84808e = 2305;
            this.f84810g = 1330;
            return;
        }
        if (i10 == 9 || i10 == 8) {
            i12 = i14 * 12;
        } else {
            if (i10 != 7 && i10 != 6) {
                i13 = i14 * 2;
                this.f84808e = i13 + 1 + i14;
                this.f84810g = 690;
            }
            i12 = i14 * 14;
        }
        i13 = i12 / 8;
        this.f84808e = i13 + 1 + i14;
        this.f84810g = 690;
    }

    public byte[] a(boolean z10, byte[] bArr, byte[] bArr2, int i10, int i11, byte[] bArr3, int i12) {
        int i13;
        int i14;
        int b10;
        int i15 = this.f84806c;
        byte[] bArr4 = new byte[i15];
        byte[] bArr5 = new byte[i15];
        byte[] bArr6 = new byte[i15];
        byte[] bArr7 = new byte[i15];
        short[] sArr = new short[i15];
        short[] sArr2 = new short[i15];
        byte[] bArr8 = new byte[48];
        byte[] bArr9 = new byte[this.f84804a];
        v vVar = new v();
        q qVar = new q();
        u uVar = new u();
        C12954d c12954d = new C12954d();
        C12953c c12953c = this.f84811h;
        int i16 = this.f84805b;
        int g10 = c12953c.g(bArr4, 0, i16, c12953c.f84777a[i16], bArr3, i12, this.f84808e);
        if (g10 == 0) {
            throw new IllegalStateException("f decode failed");
        }
        C12953c c12953c2 = this.f84811h;
        int i17 = this.f84805b;
        int g11 = c12953c2.g(bArr5, 0, i17, c12953c2.f84777a[i17], bArr3, i12 + g10, this.f84808e - g10);
        if (g11 == 0) {
            throw new IllegalStateException("g decode failed");
        }
        int i18 = g10 + g11;
        C12953c c12953c3 = this.f84811h;
        int i19 = this.f84805b;
        int g12 = c12953c3.g(bArr6, 0, i19, c12953c3.f84778b[i19], bArr3, i12 + i18, this.f84808e - i18);
        if (g12 == 0) {
            throw new IllegalArgumentException("F decode failed");
        }
        if (i18 + g12 != this.f84808e - 1) {
            throw new IllegalStateException("full key not used");
        }
        if (!uVar.a(bArr7, 0, bArr4, 0, bArr5, 0, bArr6, 0, this.f84805b, new short[this.f84806c * 2], 0)) {
            throw new IllegalStateException("complete_private failed");
        }
        this.f84807d.nextBytes(bArr9);
        vVar.c();
        vVar.d(bArr9, 0, this.f84804a);
        vVar.d(bArr2, i10, i11);
        vVar.a();
        c12954d.b(vVar, sArr2, 0, this.f84805b);
        this.f84807d.nextBytes(bArr8);
        vVar.c();
        vVar.d(bArr8, 0, 48);
        vVar.a();
        qVar.k(sArr, 0, vVar, bArr4, 0, bArr5, 0, bArr6, 0, bArr7, 0, sArr2, 0, this.f84805b, new C12957g[this.f84806c * 10], 0);
        int i20 = (this.f84810g - 2) - this.f84804a;
        byte[] bArr10 = new byte[i20];
        if (z10) {
            int i21 = this.f84805b;
            i13 = 0;
            bArr10[0] = (byte) (i21 + 32);
            i14 = 1;
            int b11 = this.f84811h.b(bArr10, 1, i20 - 1, sArr, 0, i21);
            if (b11 == 0) {
                throw new IllegalStateException("signature failed to generate");
            }
            b10 = b11 + 1;
        } else {
            i13 = 0;
            i14 = 1;
            b10 = this.f84811h.b(bArr10, 0, i20, sArr, 0, this.f84805b);
            if (b10 == 0) {
                throw new IllegalStateException("signature failed to generate");
            }
        }
        bArr[i13] = (byte) (this.f84805b + 48);
        System.arraycopy(bArr9, i13, bArr, i14, this.f84804a);
        System.arraycopy(bArr10, i13, bArr, this.f84804a + i14, b10);
        return org.bouncycastle.util.a.X(bArr, i13, this.f84804a + i14 + b10);
    }

    public byte[][] b(byte[] bArr, int i10, byte[] bArr2, int i11) {
        int i12 = this.f84806c;
        byte[] bArr3 = new byte[i12];
        byte[] bArr4 = new byte[i12];
        byte[] bArr5 = new byte[i12];
        short[] sArr = new short[i12];
        byte[] bArr6 = new byte[48];
        v vVar = new v();
        C12958h c12958h = new C12958h();
        this.f84807d.nextBytes(bArr6);
        vVar.c();
        vVar.d(bArr6, 0, 48);
        vVar.a();
        c12958h.b(vVar, bArr3, 0, bArr4, 0, bArr5, 0, null, 0, sArr, 0, this.f84805b);
        int i13 = this.f84805b;
        bArr2[i11] = (byte) (i13 + 80);
        C12953c c12953c = this.f84811h;
        int i14 = i11 + 1;
        int h10 = c12953c.h(bArr2, i14, this.f84808e - 1, bArr3, 0, i13, c12953c.f84777a[i13]);
        if (h10 == 0) {
            throw new IllegalStateException("f encode failed");
        }
        int i15 = h10 + 1;
        byte[] X10 = org.bouncycastle.util.a.X(bArr2, i14, i15);
        C12953c c12953c2 = this.f84811h;
        int i16 = i11 + i15;
        int i17 = this.f84808e - i15;
        int i18 = this.f84805b;
        int h11 = c12953c2.h(bArr2, i16, i17, bArr4, 0, i18, c12953c2.f84777a[i18]);
        if (h11 == 0) {
            throw new IllegalStateException("g encode failed");
        }
        int i19 = i15 + h11;
        byte[] X11 = org.bouncycastle.util.a.X(bArr2, i16, i19);
        C12953c c12953c3 = this.f84811h;
        int i20 = i11 + i19;
        int i21 = this.f84808e - i19;
        int i22 = this.f84805b;
        int h12 = c12953c3.h(bArr2, i20, i21, bArr5, 0, i22, c12953c3.f84778b[i22]);
        if (h12 == 0) {
            throw new IllegalStateException("F encode failed");
        }
        int i23 = i19 + h12;
        byte[] X12 = org.bouncycastle.util.a.X(bArr2, i20, i23);
        if (i23 != this.f84808e) {
            throw new IllegalStateException("secret key encoding failed");
        }
        int i24 = this.f84805b;
        bArr[i10] = (byte) i24;
        if (this.f84811h.d(bArr, i10 + 1, this.f84809f - 1, sArr, 0, i24) == this.f84809f - 1) {
            return new byte[][]{org.bouncycastle.util.a.X(bArr, 1, bArr.length), X10, X11, X12};
        }
        throw new IllegalStateException("public key encoding failed");
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x006e, code lost:
    
        if (r19.f84811h.a(r4, 0, r14, r21, 1, r9) != r9) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int c(boolean z10, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, int i10) {
        u uVar;
        v vVar;
        short[] sArr;
        short[] sArr2;
        short[] sArr3;
        C12954d c12954d;
        int i11 = this.f84806c;
        short[] sArr4 = new short[i11];
        short[] sArr5 = new short[i11];
        short[] sArr6 = new short[i11];
        v vVar2 = new v();
        u uVar2 = new u();
        C12954d c12954d2 = new C12954d();
        if (this.f84811h.c(sArr4, 0, this.f84805b, bArr4, i10, this.f84809f - 1) != this.f84809f - 1) {
            return -1;
        }
        uVar2.q(sArr4, 0, this.f84805b);
        int length = bArr.length;
        int length2 = bArr3.length;
        if (z10) {
            if (length >= 1) {
                byte b10 = bArr[0];
                int i12 = this.f84805b;
                if (b10 == ((byte) (i12 + 32))) {
                    int i13 = length - 1;
                    c12954d = c12954d2;
                    uVar = uVar2;
                    vVar = vVar2;
                    sArr = sArr6;
                    sArr2 = sArr5;
                    sArr3 = sArr4;
                }
            }
            return -1;
        }
        uVar = uVar2;
        vVar = vVar2;
        sArr = sArr6;
        sArr2 = sArr5;
        sArr3 = sArr4;
        c12954d = c12954d2;
        if (length < 1 || this.f84811h.a(sArr, 0, this.f84805b, bArr, 0, length) != length) {
            return -1;
        }
        vVar.c();
        v vVar3 = vVar;
        vVar3.d(bArr2, 0, this.f84804a);
        vVar3.d(bArr3, 0, length2);
        vVar3.a();
        c12954d.b(vVar3, sArr2, 0, this.f84805b);
        return uVar.r(sArr2, 0, sArr, 0, sArr3, 0, this.f84805b, new short[this.f84806c], 0) == 0 ? -1 : 0;
    }
}
