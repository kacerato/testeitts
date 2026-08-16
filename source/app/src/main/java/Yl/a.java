package Yl;

import java.math.BigDecimal;

public class a {

    public static final BigDecimal f30619b = new BigDecimal("0");

    public static final BigDecimal f30620c = new BigDecimal(Dd.c.f5125q);

    public BigDecimal[] f30621a;

    public a(int i10) {
        this.f30621a = new BigDecimal[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            this.f30621a[i11] = f30619b;
        }
    }

    public void a(a aVar) {
        BigDecimal[] bigDecimalArr = aVar.f30621a;
        int length = bigDecimalArr.length;
        BigDecimal[] bigDecimalArr2 = this.f30621a;
        if (length > bigDecimalArr2.length) {
            int length2 = bigDecimalArr2.length;
            this.f30621a = b(bigDecimalArr2, bigDecimalArr.length);
            while (true) {
                BigDecimal[] bigDecimalArr3 = this.f30621a;
                if (length2 >= bigDecimalArr3.length) {
                    break;
                }
                bigDecimalArr3[length2] = f30619b;
                length2++;
            }
        }
        int i10 = 0;
        while (true) {
            BigDecimal[] bigDecimalArr4 = aVar.f30621a;
            if (i10 >= bigDecimalArr4.length) {
                return;
            }
            BigDecimal[] bigDecimalArr5 = this.f30621a;
            bigDecimalArr5[i10] = bigDecimalArr5[i10].add(bigDecimalArr4[i10]);
            i10++;
        }
    }

    public final BigDecimal[] b(BigDecimal[] bigDecimalArr, int i10) {
        BigDecimal[] bigDecimalArr2 = new BigDecimal[i10];
        if (bigDecimalArr.length < i10) {
            i10 = bigDecimalArr.length;
        }
        System.arraycopy(bigDecimalArr, 0, bigDecimalArr2, 0, i10);
        return bigDecimalArr2;
    }

    public final BigDecimal[] c(BigDecimal[] bigDecimalArr, int i10, int i11) {
        int i12 = i11 - i10;
        BigDecimal[] bigDecimalArr2 = new BigDecimal[i12];
        if (bigDecimalArr.length - i10 < i12) {
            i12 = bigDecimalArr.length - i10;
        }
        System.arraycopy(bigDecimalArr, i10, bigDecimalArr2, 0, i12);
        return bigDecimalArr2;
    }

    public Object clone() {
        return new a((BigDecimal[]) this.f30621a.clone());
    }

    public BigDecimal[] d() {
        BigDecimal[] bigDecimalArr = this.f30621a;
        BigDecimal[] bigDecimalArr2 = new BigDecimal[bigDecimalArr.length];
        System.arraycopy(bigDecimalArr, 0, bigDecimalArr2, 0, bigDecimalArr.length);
        return bigDecimalArr2;
    }

    public void e() {
        int i10 = 0;
        while (true) {
            BigDecimal[] bigDecimalArr = this.f30621a;
            if (i10 >= bigDecimalArr.length) {
                return;
            }
            bigDecimalArr[i10] = bigDecimalArr[i10].multiply(f30620c);
            i10++;
        }
    }

    public a f(a aVar) {
        BigDecimal[] bigDecimalArr;
        int length = this.f30621a.length;
        if (aVar.f30621a.length != length) {
            throw new IllegalArgumentException("Number of coefficients must be the same");
        }
        a h10 = h(aVar);
        if (h10.f30621a.length > length) {
            int i10 = length;
            while (true) {
                bigDecimalArr = h10.f30621a;
                if (i10 >= bigDecimalArr.length) {
                    break;
                }
                int i11 = i10 - length;
                bigDecimalArr[i11] = bigDecimalArr[i11].add(bigDecimalArr[i10]);
                i10++;
            }
            h10.f30621a = b(bigDecimalArr, length);
        }
        return h10;
    }

    public a g(b bVar) {
        return f(new a(bVar));
    }

    public final a h(a aVar) {
        BigDecimal[] bigDecimalArr = this.f30621a;
        BigDecimal[] bigDecimalArr2 = aVar.f30621a;
        int length = bigDecimalArr2.length;
        int i10 = 0;
        if (length <= 1) {
            BigDecimal[] bigDecimalArr3 = (BigDecimal[]) bigDecimalArr.clone();
            for (int i11 = 0; i11 < this.f30621a.length; i11++) {
                bigDecimalArr3[i11] = bigDecimalArr3[i11].multiply(aVar.f30621a[0]);
            }
            return new a(bigDecimalArr3);
        }
        int i12 = length / 2;
        a aVar2 = new a(b(bigDecimalArr, i12));
        a aVar3 = new a(c(bigDecimalArr, i12, length));
        a aVar4 = new a(b(bigDecimalArr2, i12));
        a aVar5 = new a(c(bigDecimalArr2, i12, length));
        a aVar6 = (a) aVar2.clone();
        aVar6.a(aVar3);
        a aVar7 = (a) aVar4.clone();
        aVar7.a(aVar5);
        a h10 = aVar2.h(aVar4);
        a h11 = aVar3.h(aVar5);
        a h12 = aVar6.h(aVar7);
        h12.j(h10);
        h12.j(h11);
        a aVar8 = new a((length * 2) - 1);
        int i13 = 0;
        while (true) {
            BigDecimal[] bigDecimalArr4 = h10.f30621a;
            if (i13 >= bigDecimalArr4.length) {
                break;
            }
            aVar8.f30621a[i13] = bigDecimalArr4[i13];
            i13++;
        }
        int i14 = 0;
        while (true) {
            BigDecimal[] bigDecimalArr5 = h12.f30621a;
            if (i14 >= bigDecimalArr5.length) {
                break;
            }
            BigDecimal[] bigDecimalArr6 = aVar8.f30621a;
            int i15 = i12 + i14;
            bigDecimalArr6[i15] = bigDecimalArr6[i15].add(bigDecimalArr5[i14]);
            i14++;
        }
        while (true) {
            BigDecimal[] bigDecimalArr7 = h11.f30621a;
            if (i10 >= bigDecimalArr7.length) {
                return aVar8;
            }
            BigDecimal[] bigDecimalArr8 = aVar8.f30621a;
            int i16 = (i12 * 2) + i10;
            bigDecimalArr8[i16] = bigDecimalArr8[i16].add(bigDecimalArr7[i10]);
            i10++;
        }
    }

    public b i() {
        int length = this.f30621a.length;
        b bVar = new b(length);
        for (int i10 = 0; i10 < length; i10++) {
            bVar.f30623a[i10] = this.f30621a[i10].setScale(0, 6).toBigInteger();
        }
        return bVar;
    }

    public void j(a aVar) {
        BigDecimal[] bigDecimalArr = aVar.f30621a;
        int length = bigDecimalArr.length;
        BigDecimal[] bigDecimalArr2 = this.f30621a;
        if (length > bigDecimalArr2.length) {
            int length2 = bigDecimalArr2.length;
            this.f30621a = b(bigDecimalArr2, bigDecimalArr.length);
            while (true) {
                BigDecimal[] bigDecimalArr3 = this.f30621a;
                if (length2 >= bigDecimalArr3.length) {
                    break;
                }
                bigDecimalArr3[length2] = f30619b;
                length2++;
            }
        }
        int i10 = 0;
        while (true) {
            BigDecimal[] bigDecimalArr4 = aVar.f30621a;
            if (i10 >= bigDecimalArr4.length) {
                return;
            }
            BigDecimal[] bigDecimalArr5 = this.f30621a;
            bigDecimalArr5[i10] = bigDecimalArr5[i10].subtract(bigDecimalArr4[i10]);
            i10++;
        }
    }

    public a(b bVar) {
        int length = bVar.f30623a.length;
        this.f30621a = new BigDecimal[length];
        for (int i10 = 0; i10 < length; i10++) {
            this.f30621a[i10] = new BigDecimal(bVar.f30623a[i10]);
        }
    }

    public a(BigDecimal[] bigDecimalArr) {
        this.f30621a = bigDecimalArr;
    }
}
