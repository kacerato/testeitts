package Yl;

import java.io.IOException;
import java.io.InputStream;
import java.math.BigInteger;
import java.security.SecureRandom;

public class l implements m {

    public static final int f30647d = 11;

    public int f30648a;

    public int[] f30649b;

    public int[] f30650c;

    public l(int i10, int[] iArr, int[] iArr2) {
        this.f30648a = i10;
        this.f30649b = iArr;
        this.f30650c = iArr2;
    }

    public static l g(InputStream inputStream, int i10, int i11, int i12) throws IOException {
        int numberOfLeadingZeros = 32 - Integer.numberOfLeadingZeros(2047);
        return new l(i10, Zl.a.e(Zl.b.g(inputStream, ((i11 * numberOfLeadingZeros) + 7) / 8), i11, 2048), Zl.a.e(Zl.b.g(inputStream, ((numberOfLeadingZeros * i12) + 7) / 8), i12, 2048));
    }

    public static l h(int i10, int i11, int i12, SecureRandom secureRandom) {
        return new l(Zl.b.b(i10, i11, i12, secureRandom));
    }

    @Override
    public e a(e eVar) {
        int[] iArr = eVar.f30630a;
        int length = iArr.length;
        int i10 = this.f30648a;
        if (length != i10) {
            throw new IllegalArgumentException("Number of coefficients must be the same");
        }
        int[] iArr2 = new int[i10];
        int i11 = 0;
        int i12 = 0;
        while (true) {
            int[] iArr3 = this.f30649b;
            if (i12 == iArr3.length) {
                break;
            }
            int i13 = iArr3[i12];
            int i14 = this.f30648a;
            int i15 = (i14 - 1) - i13;
            for (int i16 = i14 - 1; i16 >= 0; i16--) {
                iArr2[i16] = iArr2[i16] + iArr[i15];
                i15--;
                if (i15 < 0) {
                    i15 = this.f30648a - 1;
                }
            }
            i12++;
        }
        while (true) {
            int[] iArr4 = this.f30650c;
            if (i11 == iArr4.length) {
                return new e(iArr2);
            }
            int i17 = iArr4[i11];
            int i18 = this.f30648a;
            int i19 = (i18 - 1) - i17;
            for (int i20 = i18 - 1; i20 >= 0; i20--) {
                iArr2[i20] = iArr2[i20] - iArr[i19];
                i19--;
                if (i19 < 0) {
                    i19 = this.f30648a - 1;
                }
            }
            i11++;
        }
    }

    @Override
    public e b() {
        int[] iArr = new int[this.f30648a];
        int i10 = 0;
        int i11 = 0;
        while (true) {
            int[] iArr2 = this.f30649b;
            if (i11 == iArr2.length) {
                break;
            }
            iArr[iArr2[i11]] = 1;
            i11++;
        }
        while (true) {
            int[] iArr3 = this.f30650c;
            if (i10 == iArr3.length) {
                return new e(iArr);
            }
            iArr[iArr3[i10]] = -1;
            i10++;
        }
    }

    @Override
    public b c(b bVar) {
        BigInteger[] bigIntegerArr = bVar.f30623a;
        int length = bigIntegerArr.length;
        int i10 = this.f30648a;
        if (length != i10) {
            throw new IllegalArgumentException("Number of coefficients must be the same");
        }
        BigInteger[] bigIntegerArr2 = new BigInteger[i10];
        int i11 = 0;
        for (int i12 = 0; i12 < this.f30648a; i12++) {
            bigIntegerArr2[i12] = BigInteger.ZERO;
        }
        int i13 = 0;
        while (true) {
            int[] iArr = this.f30649b;
            if (i13 == iArr.length) {
                break;
            }
            int i14 = iArr[i13];
            int i15 = this.f30648a;
            int i16 = (i15 - 1) - i14;
            for (int i17 = i15 - 1; i17 >= 0; i17--) {
                bigIntegerArr2[i17] = bigIntegerArr2[i17].add(bigIntegerArr[i16]);
                i16--;
                if (i16 < 0) {
                    i16 = this.f30648a - 1;
                }
            }
            i13++;
        }
        while (true) {
            int[] iArr2 = this.f30650c;
            if (i11 == iArr2.length) {
                return new b(bigIntegerArr2);
            }
            int i18 = iArr2[i11];
            int i19 = this.f30648a;
            int i20 = (i19 - 1) - i18;
            for (int i21 = i19 - 1; i21 >= 0; i21--) {
                bigIntegerArr2[i21] = bigIntegerArr2[i21].subtract(bigIntegerArr[i20]);
                i20--;
                if (i20 < 0) {
                    i20 = this.f30648a - 1;
                }
            }
            i11++;
        }
    }

    @Override
    public void clear() {
        int i10 = 0;
        while (true) {
            int[] iArr = this.f30649b;
            if (i10 >= iArr.length) {
                break;
            }
            iArr[i10] = 0;
            i10++;
        }
        int i11 = 0;
        while (true) {
            int[] iArr2 = this.f30650c;
            if (i11 >= iArr2.length) {
                return;
            }
            iArr2[i11] = 0;
            i11++;
        }
    }

    @Override
    public int[] d() {
        return this.f30649b;
    }

    @Override
    public e e(e eVar, int i10) {
        e a10 = a(eVar);
        a10.z(i10);
        return a10;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        l lVar = (l) obj;
        return this.f30648a == lVar.f30648a && org.bouncycastle.util.a.i(this.f30650c, lVar.f30650c) && org.bouncycastle.util.a.i(this.f30649b, lVar.f30649b);
    }

    @Override
    public int[] f() {
        return this.f30650c;
    }

    public int hashCode() {
        return ((((this.f30648a + 31) * 31) + org.bouncycastle.util.a.w0(this.f30650c)) * 31) + org.bouncycastle.util.a.w0(this.f30649b);
    }

    public byte[] i() {
        byte[] h10 = Zl.a.h(this.f30649b, 2048);
        byte[] h11 = Zl.a.h(this.f30650c, 2048);
        byte[] Q10 = org.bouncycastle.util.a.Q(h10, h10.length + h11.length);
        System.arraycopy(h11, 0, Q10, h10.length, h11.length);
        return Q10;
    }

    @Override
    public int size() {
        return this.f30648a;
    }

    public l(e eVar) {
        this(eVar.f30630a);
    }

    public l(int[] iArr) {
        int length = iArr.length;
        this.f30648a = length;
        this.f30649b = new int[length];
        this.f30650c = new int[length];
        int i10 = 0;
        int i11 = 0;
        for (int i12 = 0; i12 < this.f30648a; i12++) {
            int i13 = iArr[i12];
            if (i13 == -1) {
                this.f30650c[i11] = i12;
                i11++;
            } else if (i13 == 0) {
                continue;
            } else {
                if (i13 != 1) {
                    throw new IllegalArgumentException("Illegal value: " + i13 + ", must be one of {-1, 0, 1}");
                }
                this.f30649b[i10] = i12;
                i10++;
            }
        }
        this.f30649b = org.bouncycastle.util.a.S(this.f30649b, i10);
        this.f30650c = org.bouncycastle.util.a.S(this.f30650c, i11);
    }
}
