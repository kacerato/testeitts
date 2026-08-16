package kl;

import java.lang.reflect.Array;

public class r {

    public byte[][] f95489a;

    public int f95490b = 0;

    public int f95491c;

    public h f95492d;

    public r(h hVar) {
        this.f95492d = hVar;
        this.f95489a = (byte[][]) Array.newInstance(Byte.TYPE, hVar.f95431n, hVar.f95426i * 2);
        this.f95491c = hVar.f95431n;
    }

    public void a(byte[] bArr) {
        int[] iArr = new int[16];
        int[] iArr2 = new int[16];
        int[] iArr3 = new int[16];
        int[] iArr4 = new int[16];
        int[] iArr5 = new int[16];
        h hVar = this.f95492d;
        iArr5[hVar.f95425h - 1] = 0;
        c(iArr5, hVar.f95423f);
        h hVar2 = this.f95492d;
        C13997b c10 = hVar2.f95439v.c(hVar2);
        this.f95492d.M(iArr4, iArr5, c10.b(), c10.f());
        if (bArr != null) {
            org.bouncycastle.util.p.n(iArr4, 0, this.f95492d.f95425h, bArr, 0);
        }
        for (int i10 = this.f95492d.f95421d; i10 > 0; i10--) {
            h hVar3 = this.f95492d;
            C13997b b10 = hVar3.f95439v.b(hVar3, i10);
            this.f95492d.M(iArr, iArr4, b10.b(), b10.f());
            this.f95492d.w0(iArr2, iArr2, iArr, 0);
            h hVar4 = this.f95492d;
            int i11 = i10 - 1;
            C13997b e10 = hVar4.f95439v.e(hVar4, i11);
            this.f95492d.M(iArr3, iArr2, e10.b(), e10.f());
            if (i10 == 1) {
                System.arraycopy(iArr5, 0, iArr2, 0, 16);
            } else {
                int i12 = this.f95492d.f95423f;
                this.f95490b = i12 * 2 * i11;
                c(iArr2, i12);
            }
            h hVar5 = this.f95492d;
            int i13 = hVar5.f95423f;
            this.f95490b = (i13 * 2 * i11) + i13;
            hVar5.k(iArr2, iArr3, this);
        }
        this.f95490b = 0;
    }

    public void b(byte[] bArr) {
        h hVar = this.f95492d;
        int i10 = hVar.f95431n - 1;
        int i11 = hVar.f95423f;
        int i12 = 0;
        for (int i13 = 0; i13 < this.f95492d.f95421d; i13++) {
            int i14 = 0;
            while (i14 < i11) {
                t.n(this.f95489a[i10], (i11 * 2 * i13) + i11 + i14, t.b(bArr, i12));
                i14++;
                i12++;
            }
        }
    }

    public final void c(int[] iArr, int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            t.p(iArr, i11, t.k(d()));
        }
    }

    public int d() {
        int i10 = this.f95490b;
        int i11 = i10 >>> 3;
        int i12 = (i10 & 7) ^ 7;
        int i13 = 1 << i12;
        byte[][] bArr = this.f95489a;
        int i14 = ((bArr[15][i11] & i13) << 8) | (bArr[7][i11] & i13) | ((bArr[0][i11] & i13) << 7) | ((bArr[1][i11] & i13) << 6) | ((bArr[2][i11] & i13) << 5) | ((bArr[3][i11] & i13) << 4) | ((bArr[4][i11] & i13) << 3) | ((bArr[5][i11] & i13) << 2) | ((bArr[6][i11] & i13) << 1) | ((bArr[8][i11] & i13) << 15) | ((bArr[9][i11] & i13) << 14) | ((bArr[10][i11] & i13) << 13) | ((bArr[11][i11] & i13) << 12) | ((bArr[12][i11] & i13) << 11) | ((bArr[13][i11] & i13) << 10) | ((bArr[14][i11] & i13) << 9);
        this.f95490b = i10 + 1;
        return i14 >>> i12;
    }
}
