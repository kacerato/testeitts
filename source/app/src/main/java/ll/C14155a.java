package ll;

import java.lang.reflect.Array;

public class C14155a {
    public short[][] a(short[][] sArr, short[][] sArr2) {
        if (sArr.length == sArr2.length) {
            short[] sArr3 = sArr[0];
            if (sArr3.length == sArr2[0].length) {
                short[][] sArr4 = (short[][]) Array.newInstance(Short.TYPE, sArr.length, sArr3.length);
                for (int i10 = 0; i10 < sArr.length; i10++) {
                    for (int i11 = 0; i11 < sArr[0].length; i11++) {
                        sArr4[i10][i11] = C14156b.a(sArr[i10][i11], sArr2[i10][i11]);
                    }
                }
                return sArr4;
            }
        }
        throw new RuntimeException("Addition is not possible!");
    }

    public short[][] b(short[][] sArr) {
        if (sArr.length == sArr[0].length) {
            return a(sArr, o(sArr));
        }
        throw new RuntimeException("Addition is not possible!");
    }

    public short[] c(short[] sArr, short[] sArr2) {
        if (sArr.length != sArr2.length) {
            throw new RuntimeException("Addition is not possible! vector1.length: " + sArr.length + " vector2.length: " + sArr2.length);
        }
        int length = sArr.length;
        short[] sArr3 = new short[length];
        for (int i10 = 0; i10 < length; i10++) {
            sArr3[i10] = C14156b.a(sArr[i10], sArr2[i10]);
        }
        return sArr3;
    }

    public final void d(short[][] sArr) {
        int i10 = 0;
        while (i10 < sArr.length) {
            int i11 = i10 + 1;
            for (int i12 = i11; i12 < sArr.length; i12++) {
                if (sArr[i10][i10] == 0) {
                    for (int i13 = i10; i13 < sArr[0].length; i13++) {
                        short[] sArr2 = sArr[i10];
                        sArr2[i13] = C14156b.a(sArr2[i13], sArr[i12][i13]);
                    }
                }
            }
            short v10 = C14156b.v(sArr[i10][i10]);
            if (v10 == 0) {
                throw new RuntimeException("The matrix is not invertible");
            }
            sArr[i10] = g(v10, sArr[i10]);
            for (int i14 = 0; i14 < sArr.length; i14++) {
                if (i10 != i14) {
                    short s10 = sArr[i14][i10];
                    for (int i15 = i10; i15 < sArr[0].length; i15++) {
                        short x10 = C14156b.x(sArr[i10][i15], s10);
                        short[] sArr3 = sArr[i14];
                        sArr3[i15] = C14156b.a(sArr3[i15], x10);
                    }
                }
            }
            i10 = i11;
        }
    }

    public short[][] e(short[][] sArr) {
        if (sArr.length != sArr[0].length) {
            throw new RuntimeException("The matrix is not invertible. Please choose another one!");
        }
        try {
            short[][] sArr2 = (short[][]) Array.newInstance(Short.TYPE, sArr.length, sArr.length * 2);
            for (int i10 = 0; i10 < sArr.length; i10++) {
                System.arraycopy(sArr[i10], 0, sArr2[i10], 0, sArr.length);
                for (int length = sArr.length; length < sArr.length * 2; length++) {
                    sArr2[i10][length] = 0;
                }
                sArr2[i10][sArr2.length + i10] = 1;
            }
            d(sArr2);
            short[][] sArr3 = (short[][]) Array.newInstance(Short.TYPE, sArr2.length, sArr2.length);
            for (int i11 = 0; i11 < sArr2.length; i11++) {
                for (int length2 = sArr2.length; length2 < sArr2.length * 2; length2++) {
                    sArr3[i11][length2 - sArr2.length] = sArr2[i11][length2];
                }
            }
            return sArr3;
        } catch (RuntimeException unused) {
            return null;
        }
    }

    public short[][] f(short s10, short[][] sArr) {
        short[][] sArr2 = (short[][]) Array.newInstance(Short.TYPE, sArr.length, sArr[0].length);
        for (int i10 = 0; i10 < sArr.length; i10++) {
            for (int i11 = 0; i11 < sArr[0].length; i11++) {
                sArr2[i10][i11] = C14156b.x(s10, sArr[i10][i11]);
            }
        }
        return sArr2;
    }

    public short[] g(short s10, short[] sArr) {
        int length = sArr.length;
        short[] sArr2 = new short[length];
        for (int i10 = 0; i10 < length; i10++) {
            sArr2[i10] = C14156b.x(s10, sArr[i10]);
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
                sArr3[i10][i11] = C14156b.x(sArr[i10], sArr2[i11]);
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
                sArr3[i10] = C14156b.a(sArr3[i10], C14156b.x(sArr[i10][i11], sArr2[i11]));
            }
        }
        return sArr3;
    }

    public short[][] j(short[][] sArr, short[][] sArr2) throws RuntimeException {
        if (sArr[0].length != sArr2.length) {
            throw new RuntimeException("Multiplication is not possible!");
        }
        short[][] sArr3 = (short[][]) Array.newInstance(Short.TYPE, sArr.length, sArr2[0].length);
        for (int i10 = 0; i10 < sArr.length; i10++) {
            for (int i11 = 0; i11 < sArr2.length; i11++) {
                for (int i12 = 0; i12 < sArr2[0].length; i12++) {
                    short x10 = C14156b.x(sArr[i10][i11], sArr2[i11][i12]);
                    short[] sArr4 = sArr3[i10];
                    sArr4[i12] = C14156b.a(sArr4[i12], x10);
                }
            }
        }
        return sArr3;
    }

    public short k(short[][] sArr, short[] sArr2) throws RuntimeException {
        int length = sArr.length;
        short[] sArr3 = sArr[0];
        if (length != sArr3.length || sArr3.length != sArr2.length) {
            throw new RuntimeException("Multiplication is not possible!");
        }
        short[] sArr4 = new short[sArr.length];
        short s10 = 0;
        for (int i10 = 0; i10 < sArr.length; i10++) {
            for (int i11 = 0; i11 < sArr2.length; i11++) {
                sArr4[i10] = C14156b.a(sArr4[i10], C14156b.x(sArr[i10][i11], sArr2[i11]));
            }
            s10 = C14156b.a(s10, C14156b.x(sArr4[i10], sArr2[i10]));
        }
        return s10;
    }

    public short[][][] l(short[][] sArr, short[][][] sArr2, short[][][] sArr3) {
        short[][] sArr4 = sArr2[0];
        int length = sArr4.length;
        short[][] sArr5 = sArr3[0];
        if (length == sArr5.length) {
            int length2 = sArr4[0].length;
            short[] sArr6 = sArr5[0];
            if (length2 == sArr6.length && sArr2.length == sArr[0].length && sArr3.length == sArr.length) {
                short[][][] sArr7 = (short[][][]) Array.newInstance(Short.TYPE, sArr3.length, sArr5.length, sArr6.length);
                for (int i10 = 0; i10 < sArr2[0].length; i10++) {
                    for (int i11 = 0; i11 < sArr2[0][0].length; i11++) {
                        for (int i12 = 0; i12 < sArr.length; i12++) {
                            for (int i13 = 0; i13 < sArr[0].length; i13++) {
                                short x10 = C14156b.x(sArr[i12][i13], sArr2[i13][i10][i11]);
                                short[] sArr8 = sArr7[i12][i10];
                                sArr8[i11] = C14156b.a(sArr8[i11], x10);
                            }
                            short[] sArr9 = sArr7[i12][i10];
                            sArr9[i11] = C14156b.a(sArr3[i12][i10][i11], sArr9[i11]);
                        }
                    }
                }
                return sArr7;
            }
        }
        throw new RuntimeException("Multiplication not possible!");
    }

    public short[] m(short[][] sArr, short[] sArr2) {
        if (sArr.length != sArr2.length) {
            return null;
        }
        try {
            short[][] sArr3 = (short[][]) Array.newInstance(Short.TYPE, sArr.length, sArr.length + 1);
            short[] sArr4 = new short[sArr.length];
            for (int i10 = 0; i10 < sArr.length; i10++) {
                System.arraycopy(sArr[i10], 0, sArr3[i10], 0, sArr[0].length);
                short[] sArr5 = sArr3[i10];
                sArr5[sArr2.length] = C14156b.a(sArr2[i10], sArr5[sArr2.length]);
            }
            d(sArr3);
            for (int i11 = 0; i11 < sArr3.length; i11++) {
                sArr4[i11] = sArr3[i11][sArr2.length];
            }
            return sArr4;
        } catch (RuntimeException unused) {
            return null;
        }
    }

    public short[][] n(short[][] sArr) {
        if (sArr.length != sArr[0].length) {
            throw new RuntimeException("Computation to upper triangular matrix is not possible!");
        }
        short[][] sArr2 = (short[][]) Array.newInstance(Short.TYPE, sArr.length, sArr.length);
        int i10 = 0;
        while (i10 < sArr.length) {
            sArr2[i10][i10] = sArr[i10][i10];
            int i11 = i10 + 1;
            for (int i12 = i11; i12 < sArr[0].length; i12++) {
                sArr2[i10][i12] = C14156b.a(sArr[i10][i12], sArr[i12][i10]);
            }
            i10 = i11;
        }
        return sArr2;
    }

    public short[][] o(short[][] sArr) {
        short[][] sArr2 = (short[][]) Array.newInstance(Short.TYPE, sArr[0].length, sArr.length);
        for (int i10 = 0; i10 < sArr.length; i10++) {
            for (int i11 = 0; i11 < sArr[0].length; i11++) {
                sArr2[i11][i10] = sArr[i10][i11];
            }
        }
        return sArr2;
    }
}
