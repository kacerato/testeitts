package Vl;

import java.lang.reflect.Array;

public class a {

    public short[][] f27164a;

    public short[] f27165b;

    public short[][] a(short[][] sArr, short[][] sArr2) {
        if (sArr.length != sArr2.length || sArr[0].length != sArr2[0].length) {
            throw new RuntimeException("Addition is not possible!");
        }
        short[][] sArr3 = (short[][]) Array.newInstance(Short.TYPE, sArr.length, sArr.length);
        for (int i10 = 0; i10 < sArr.length; i10++) {
            for (int i11 = 0; i11 < sArr2.length; i11++) {
                sArr3[i10][i11] = b.a(sArr[i10][i11], sArr2[i10][i11]);
            }
        }
        return sArr3;
    }

    public short[] b(short[] sArr, short[] sArr2) {
        if (sArr.length != sArr2.length) {
            throw new RuntimeException("Multiplication is not possible!");
        }
        int length = sArr.length;
        short[] sArr3 = new short[length];
        for (int i10 = 0; i10 < length; i10++) {
            sArr3[i10] = b.a(sArr[i10], sArr2[i10]);
        }
        return sArr3;
    }

    public final void c() throws RuntimeException {
        for (int length = this.f27164a.length - 1; length > 0; length--) {
            for (int i10 = length - 1; i10 >= 0; i10--) {
                short[][] sArr = this.f27164a;
                short s10 = sArr[i10][length];
                short d10 = b.d(sArr[length][length]);
                if (d10 == 0) {
                    throw new RuntimeException("The matrix is not invertible");
                }
                int i11 = length;
                while (true) {
                    short[][] sArr2 = this.f27164a;
                    if (i11 < sArr2.length * 2) {
                        short e10 = b.e(s10, b.e(sArr2[length][i11], d10));
                        short[] sArr3 = this.f27164a[i10];
                        sArr3[i11] = b.a(sArr3[i11], e10);
                        i11++;
                    }
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0056, code lost:
    
        r0 = r1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void d(boolean z10) throws RuntimeException {
        int length = z10 ? this.f27164a.length * 2 : this.f27164a.length + 1;
        int i10 = 0;
        while (i10 < this.f27164a.length - 1) {
            int i11 = i10 + 1;
            int i12 = i11;
            while (true) {
                short[][] sArr = this.f27164a;
                if (i12 < sArr.length) {
                    short s10 = sArr[i12][i10];
                    short d10 = b.d(sArr[i10][i10]);
                    if (d10 == 0) {
                        throw new IllegalStateException("Matrix not invertible! We have to choose another one!");
                    }
                    for (int i13 = i10; i13 < length; i13++) {
                        short e10 = b.e(s10, b.e(this.f27164a[i10][i13], d10));
                        short[] sArr2 = this.f27164a[i12];
                        sArr2[i13] = b.a(sArr2[i13], e10);
                    }
                    i12++;
                }
            }
        }
    }

    public short[][] e(short[][] sArr) {
        try {
            int i10 = 0;
            this.f27164a = (short[][]) Array.newInstance(Short.TYPE, sArr.length, sArr.length * 2);
            if (sArr.length != sArr[0].length) {
                throw new RuntimeException("The matrix is not invertible. Please choose another one!");
            }
            for (int i11 = 0; i11 < sArr.length; i11++) {
                for (int i12 = 0; i12 < sArr.length; i12++) {
                    this.f27164a[i11][i12] = sArr[i11][i12];
                }
                for (int length = sArr.length; length < sArr.length * 2; length++) {
                    this.f27164a[i11][length] = 0;
                }
                short[][] sArr2 = this.f27164a;
                sArr2[i11][sArr2.length + i11] = 1;
            }
            d(true);
            int i13 = 0;
            while (true) {
                short[][] sArr3 = this.f27164a;
                if (i13 >= sArr3.length) {
                    break;
                }
                short d10 = b.d(sArr3[i13][i13]);
                int i14 = i13;
                while (true) {
                    short[][] sArr4 = this.f27164a;
                    if (i14 < sArr4.length * 2) {
                        short[] sArr5 = sArr4[i13];
                        sArr5[i14] = b.e(sArr5[i14], d10);
                        i14++;
                    }
                }
                i13++;
            }
            c();
            short[][] sArr6 = this.f27164a;
            short[][] sArr7 = (short[][]) Array.newInstance(Short.TYPE, sArr6.length, sArr6.length);
            while (true) {
                short[][] sArr8 = this.f27164a;
                if (i10 >= sArr8.length) {
                    return sArr7;
                }
                int length2 = sArr8.length;
                while (true) {
                    short[][] sArr9 = this.f27164a;
                    if (length2 < sArr9.length * 2) {
                        sArr7[i10][length2 - sArr9.length] = sArr9[i10][length2];
                        length2++;
                    }
                }
                i10++;
            }
        } catch (RuntimeException unused) {
            return null;
        }
    }

    public short[][] f(short s10, short[][] sArr) {
        short[][] sArr2 = (short[][]) Array.newInstance(Short.TYPE, sArr.length, sArr[0].length);
        for (int i10 = 0; i10 < sArr.length; i10++) {
            for (int i11 = 0; i11 < sArr[0].length; i11++) {
                sArr2[i10][i11] = b.e(s10, sArr[i10][i11]);
            }
        }
        return sArr2;
    }

    public short[] g(short s10, short[] sArr) {
        int length = sArr.length;
        short[] sArr2 = new short[length];
        for (int i10 = 0; i10 < length; i10++) {
            sArr2[i10] = b.e(s10, sArr[i10]);
        }
        return sArr2;
    }

    public short[][] h(short[] sArr, short[] sArr2) {
        if (sArr.length != sArr2.length) {
            throw new RuntimeException("Multiplication is not possible!");
        }
        short[][] sArr3 = (short[][]) Array.newInstance(Short.TYPE, sArr.length, sArr2.length);
        for (int i10 = 0; i10 < sArr.length; i10++) {
            for (int i11 = 0; i11 < sArr2.length; i11++) {
                sArr3[i10][i11] = b.e(sArr[i10], sArr2[i11]);
            }
        }
        return sArr3;
    }

    public short[] i(short[][] sArr, short[] sArr2) throws RuntimeException {
        if (sArr[0].length != sArr2.length) {
            throw new RuntimeException("Multiplication is not possible!");
        }
        short[] sArr3 = new short[sArr.length];
        for (int i10 = 0; i10 < sArr.length; i10++) {
            for (int i11 = 0; i11 < sArr2.length; i11++) {
                sArr3[i10] = b.a(sArr3[i10], b.e(sArr[i10][i11], sArr2[i11]));
            }
        }
        return sArr3;
    }

    public short[][] j(short[][] sArr, short[][] sArr2) throws RuntimeException {
        if (sArr[0].length != sArr2.length) {
            throw new RuntimeException("Multiplication is not possible!");
        }
        this.f27164a = (short[][]) Array.newInstance(Short.TYPE, sArr.length, sArr2[0].length);
        for (int i10 = 0; i10 < sArr.length; i10++) {
            for (int i11 = 0; i11 < sArr2.length; i11++) {
                for (int i12 = 0; i12 < sArr2[0].length; i12++) {
                    short e10 = b.e(sArr[i10][i11], sArr2[i11][i12]);
                    short[] sArr3 = this.f27164a[i10];
                    sArr3[i12] = b.a(sArr3[i12], e10);
                }
            }
        }
        return this.f27164a;
    }

    public short[] k(short[][] sArr, short[] sArr2) {
        if (sArr.length != sArr2.length) {
            return null;
        }
        try {
            this.f27164a = (short[][]) Array.newInstance(Short.TYPE, sArr.length, sArr.length + 1);
            this.f27165b = new short[sArr.length];
            for (int i10 = 0; i10 < sArr.length; i10++) {
                for (int i11 = 0; i11 < sArr[0].length; i11++) {
                    this.f27164a[i10][i11] = sArr[i10][i11];
                }
            }
            for (int i12 = 0; i12 < sArr2.length; i12++) {
                short[] sArr3 = this.f27164a[i12];
                sArr3[sArr2.length] = b.a(sArr2[i12], sArr3[sArr2.length]);
            }
            d(false);
            l();
            return this.f27165b;
        } catch (RuntimeException unused) {
            return null;
        }
    }

    public final void l() throws IllegalStateException {
        short d10 = b.d(this.f27164a[r0.length - 1][r0.length - 1]);
        if (d10 == 0) {
            throw new IllegalStateException("The equation system is not solvable");
        }
        short[] sArr = this.f27165b;
        short[][] sArr2 = this.f27164a;
        sArr[sArr2.length - 1] = b.e(sArr2[sArr2.length - 1][sArr2.length], d10);
        for (int length = this.f27164a.length - 2; length >= 0; length--) {
            short[][] sArr3 = this.f27164a;
            short s10 = sArr3[length][sArr3.length];
            for (int length2 = sArr3.length - 1; length2 > length; length2--) {
                s10 = b.a(s10, b.e(this.f27164a[length][length2], this.f27165b[length2]));
            }
            short d11 = b.d(this.f27164a[length][length]);
            if (d11 == 0) {
                throw new IllegalStateException("Not solvable equation system");
            }
            this.f27165b[length] = b.e(s10, d11);
        }
    }
}
