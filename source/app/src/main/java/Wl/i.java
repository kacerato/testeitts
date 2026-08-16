package Wl;

import java.lang.reflect.Array;

public class i extends w {

    public h f27816h;

    public int[][] f27817i;

    public i(h hVar, byte[] bArr) {
        this.f27816h = hVar;
        int i10 = 8;
        int i11 = 1;
        while (hVar.d() > i10) {
            i11++;
            i10 += 8;
        }
        if (bArr.length < 5) {
            throw new IllegalArgumentException(" Error: given array is not encoded matrix over GF(2^m)");
        }
        int i12 = ((((bArr[3] & 255) << 24) ^ ((bArr[2] & 255) << 16)) ^ ((bArr[1] & 255) << 8)) ^ (bArr[0] & 255);
        this.f27866a = i12;
        int i13 = i11 * i12;
        if (i12 > 0) {
            int i14 = 4;
            if ((bArr.length - 4) % i13 == 0) {
                int length = (bArr.length - 4) / i13;
                this.f27867b = length;
                this.f27817i = (int[][]) Array.newInstance(Integer.TYPE, i12, length);
                for (int i15 = 0; i15 < this.f27866a; i15++) {
                    for (int i16 = 0; i16 < this.f27867b; i16++) {
                        int i17 = 0;
                        while (i17 < i10) {
                            int[] iArr = this.f27817i[i15];
                            iArr[i16] = iArr[i16] ^ ((bArr[i14] & 255) << i17);
                            i17 += 8;
                            i14++;
                        }
                        if (!this.f27816h.k(this.f27817i[i15][i16])) {
                            throw new IllegalArgumentException(" Error: given array is not encoded matrix over GF(2^m)");
                        }
                    }
                }
                return;
            }
        }
        throw new IllegalArgumentException(" Error: given array is not encoded matrix over GF(2^m)");
    }

    public static void m(int[][] iArr, int i10, int i11) {
        int[] iArr2 = iArr[i10];
        iArr[i10] = iArr[i11];
        iArr[i11] = iArr2;
    }

    @Override
    public w a() {
        int i10;
        int i11 = this.f27866a;
        if (i11 != this.f27867b) {
            throw new ArithmeticException("Matrix is not invertible.");
        }
        int[][] iArr = (int[][]) Array.newInstance(Integer.TYPE, i11, i11);
        for (int i12 = this.f27866a - 1; i12 >= 0; i12--) {
            iArr[i12] = t.a(this.f27817i[i12]);
        }
        int i13 = this.f27866a;
        int[][] iArr2 = (int[][]) Array.newInstance(Integer.TYPE, i13, i13);
        for (int i14 = this.f27866a - 1; i14 >= 0; i14--) {
            iArr2[i14][i14] = 1;
        }
        for (int i15 = 0; i15 < this.f27866a; i15++) {
            if (iArr[i15][i15] == 0) {
                int i16 = i15 + 1;
                boolean z10 = false;
                while (i16 < this.f27866a) {
                    if (iArr[i16][i15] != 0) {
                        m(iArr, i15, i16);
                        m(iArr2, i15, i16);
                        i16 = this.f27866a;
                        z10 = true;
                    }
                    i16++;
                }
                if (!z10) {
                    throw new ArithmeticException("Matrix is not invertible.");
                }
            }
            int j10 = this.f27816h.j(iArr[i15][i15]);
            l(iArr[i15], j10);
            l(iArr2[i15], j10);
            for (int i17 = 0; i17 < this.f27866a; i17++) {
                if (i17 != i15 && (i10 = iArr[i17][i15]) != 0) {
                    int[] k10 = k(iArr[i15], i10);
                    int[] k11 = k(iArr2[i15], i10);
                    j(k10, iArr[i17]);
                    j(k11, iArr2[i17]);
                }
            }
        }
        return new i(this.f27816h, iArr2);
    }

    @Override
    public byte[] b() {
        int i10 = 8;
        int i11 = 1;
        while (this.f27816h.d() > i10) {
            i11++;
            i10 += 8;
        }
        int i12 = this.f27866a;
        int i13 = this.f27867b * i12 * i11;
        int i14 = 4;
        byte[] bArr = new byte[i13 + 4];
        bArr[0] = (byte) (i12 & 255);
        bArr[1] = (byte) ((i12 >>> 8) & 255);
        bArr[2] = (byte) ((i12 >>> 16) & 255);
        bArr[3] = (byte) ((i12 >>> 24) & 255);
        for (int i15 = 0; i15 < this.f27866a; i15++) {
            for (int i16 = 0; i16 < this.f27867b; i16++) {
                int i17 = 0;
                while (i17 < i10) {
                    bArr[i14] = (byte) (this.f27817i[i15][i16] >>> i17);
                    i17 += 8;
                    i14++;
                }
            }
        }
        return bArr;
    }

    @Override
    public boolean e() {
        for (int i10 = 0; i10 < this.f27866a; i10++) {
            for (int i11 = 0; i11 < this.f27867b; i11++) {
                if (this.f27817i[i10][i11] != 0) {
                    return false;
                }
            }
        }
        return true;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof i)) {
            i iVar = (i) obj;
            if (this.f27816h.equals(iVar.f27816h)) {
                int i10 = iVar.f27866a;
                int i11 = this.f27867b;
                if (i10 == i11 && iVar.f27867b == i11) {
                    for (int i12 = 0; i12 < this.f27866a; i12++) {
                        for (int i13 = 0; i13 < this.f27867b; i13++) {
                            if (this.f27817i[i12][i13] != iVar.f27817i[i12][i13]) {
                                return false;
                            }
                        }
                    }
                    return true;
                }
            }
        }
        return false;
    }

    @Override
    public C f(C c10) {
        throw new RuntimeException("Not implemented.");
    }

    @Override
    public w g(w wVar) {
        throw new RuntimeException("Not implemented.");
    }

    @Override
    public w h(x xVar) {
        throw new RuntimeException("Not implemented.");
    }

    public int hashCode() {
        int hashCode = (((this.f27816h.hashCode() * 31) + this.f27866a) * 31) + this.f27867b;
        for (int i10 = 0; i10 < this.f27866a; i10++) {
            for (int i11 = 0; i11 < this.f27867b; i11++) {
                hashCode = (hashCode * 31) + this.f27817i[i10][i11];
            }
        }
        return hashCode;
    }

    @Override
    public C i(C c10) {
        throw new RuntimeException("Not implemented.");
    }

    public final void j(int[] iArr, int[] iArr2) {
        for (int length = iArr2.length - 1; length >= 0; length--) {
            iArr2[length] = this.f27816h.a(iArr[length], iArr2[length]);
        }
    }

    public final int[] k(int[] iArr, int i10) {
        int[] iArr2 = new int[iArr.length];
        for (int length = iArr.length - 1; length >= 0; length--) {
            iArr2[length] = this.f27816h.l(iArr[length], i10);
        }
        return iArr2;
    }

    public final void l(int[] iArr, int i10) {
        for (int length = iArr.length - 1; length >= 0; length--) {
            iArr[length] = this.f27816h.l(iArr[length], i10);
        }
    }

    @Override
    public String toString() {
        String str = this.f27866a + " x " + this.f27867b + " Matrix over " + this.f27816h.toString() + ": \n";
        for (int i10 = 0; i10 < this.f27866a; i10++) {
            for (int i11 = 0; i11 < this.f27867b; i11++) {
                str = str + this.f27816h.b(this.f27817i[i10][i11]) + " : ";
            }
            str = str + "\n";
        }
        return str;
    }

    public i(h hVar, int[][] iArr) {
        this.f27816h = hVar;
        this.f27817i = iArr;
        this.f27866a = iArr.length;
        this.f27867b = iArr[0].length;
    }

    public i(i iVar) {
        int i10 = iVar.f27866a;
        this.f27866a = i10;
        this.f27867b = iVar.f27867b;
        this.f27816h = iVar.f27816h;
        this.f27817i = new int[i10];
        for (int i11 = 0; i11 < this.f27866a; i11++) {
            this.f27817i[i11] = t.a(iVar.f27817i[i11]);
        }
    }
}
