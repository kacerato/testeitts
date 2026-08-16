package Yl;

import Bi.r;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;

public class b {

    public static final double f30622b = Math.log10(2.0d);

    public BigInteger[] f30623a;

    public b(int i10) {
        this.f30623a = new BigInteger[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            this.f30623a[i11] = c.f30624a;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static b e(int i10, int i11, int i12) {
        ArrayList arrayList = new ArrayList();
        for (int i13 = 0; i13 < i11; i13++) {
            arrayList.add(c.f30625b);
        }
        for (int i14 = 0; i14 < i12; i14++) {
            arrayList.add(BigInteger.valueOf(-1L));
        }
        while (arrayList.size() < i10) {
            arrayList.add(c.f30624a);
        }
        Collections.shuffle(arrayList, r.h());
        b bVar = new b(i10);
        for (int i15 = 0; i15 < arrayList.size(); i15++) {
            bVar.f30623a[i15] = (BigInteger) arrayList.get(i15);
        }
        return bVar;
    }

    public void a(b bVar) {
        BigInteger[] bigIntegerArr = bVar.f30623a;
        int length = bigIntegerArr.length;
        BigInteger[] bigIntegerArr2 = this.f30623a;
        if (length > bigIntegerArr2.length) {
            int length2 = bigIntegerArr2.length;
            this.f30623a = org.bouncycastle.util.a.U(bigIntegerArr2, bigIntegerArr.length);
            while (true) {
                BigInteger[] bigIntegerArr3 = this.f30623a;
                if (length2 >= bigIntegerArr3.length) {
                    break;
                }
                bigIntegerArr3[length2] = c.f30624a;
                length2++;
            }
        }
        int i10 = 0;
        while (true) {
            BigInteger[] bigIntegerArr4 = bVar.f30623a;
            if (i10 >= bigIntegerArr4.length) {
                return;
            }
            BigInteger[] bigIntegerArr5 = this.f30623a;
            bigIntegerArr5[i10] = bigIntegerArr5[i10].add(bigIntegerArr4[i10]);
            i10++;
        }
    }

    public void b(b bVar, BigInteger bigInteger) {
        a(bVar);
        i(bigInteger);
    }

    public a c(BigDecimal bigDecimal, int i10) {
        BigDecimal divide = c.f30626c.divide(bigDecimal, ((int) (h().bitLength() * f30622b)) + 1 + i10 + 1, 6);
        a aVar = new a(this.f30623a.length);
        for (int i11 = 0; i11 < this.f30623a.length; i11++) {
            aVar.f30621a[i11] = new BigDecimal(this.f30623a[i11]).multiply(divide).setScale(i10, 6);
        }
        return aVar;
    }

    public Object clone() {
        return new b((BigInteger[]) this.f30623a.clone());
    }

    public void d(BigInteger bigInteger) {
        BigInteger divide = bigInteger.add(c.f30625b).divide(BigInteger.valueOf(2L));
        int i10 = 0;
        while (true) {
            BigInteger[] bigIntegerArr = this.f30623a;
            if (i10 >= bigIntegerArr.length) {
                return;
            }
            bigIntegerArr[i10] = bigIntegerArr[i10].compareTo(c.f30624a) > 0 ? this.f30623a[i10].add(divide) : this.f30623a[i10].add(divide.negate());
            BigInteger[] bigIntegerArr2 = this.f30623a;
            bigIntegerArr2[i10] = bigIntegerArr2[i10].divide(bigInteger);
            i10++;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && org.bouncycastle.util.a.k(this.f30623a, ((b) obj).f30623a);
    }

    public BigInteger[] f() {
        return org.bouncycastle.util.a.v(this.f30623a);
    }

    public int g() {
        return ((int) (h().bitLength() * f30622b)) + 1;
    }

    public final BigInteger h() {
        BigInteger abs = this.f30623a[0].abs();
        int i10 = 1;
        while (true) {
            BigInteger[] bigIntegerArr = this.f30623a;
            if (i10 >= bigIntegerArr.length) {
                return abs;
            }
            BigInteger abs2 = bigIntegerArr[i10].abs();
            if (abs2.compareTo(abs) > 0) {
                abs = abs2;
            }
            i10++;
        }
    }

    public int hashCode() {
        return 31 + org.bouncycastle.util.a.A0(this.f30623a);
    }

    public void i(BigInteger bigInteger) {
        int i10 = 0;
        while (true) {
            BigInteger[] bigIntegerArr = this.f30623a;
            if (i10 >= bigIntegerArr.length) {
                return;
            }
            bigIntegerArr[i10] = bigIntegerArr[i10].mod(bigInteger);
            i10++;
        }
    }

    public b j(b bVar) {
        BigInteger[] bigIntegerArr;
        int length = this.f30623a.length;
        if (bVar.f30623a.length != length) {
            throw new IllegalArgumentException("Number of coefficients must be the same");
        }
        b m10 = m(bVar);
        if (m10.f30623a.length > length) {
            int i10 = length;
            while (true) {
                bigIntegerArr = m10.f30623a;
                if (i10 >= bigIntegerArr.length) {
                    break;
                }
                int i11 = i10 - length;
                bigIntegerArr[i11] = bigIntegerArr[i11].add(bigIntegerArr[i10]);
                i10++;
            }
            m10.f30623a = org.bouncycastle.util.a.U(bigIntegerArr, length);
        }
        return m10;
    }

    public void k(int i10) {
        l(BigInteger.valueOf(i10));
    }

    public void l(BigInteger bigInteger) {
        int i10 = 0;
        while (true) {
            BigInteger[] bigIntegerArr = this.f30623a;
            if (i10 >= bigIntegerArr.length) {
                return;
            }
            bigIntegerArr[i10] = bigIntegerArr[i10].multiply(bigInteger);
            i10++;
        }
    }

    public final b m(b bVar) {
        BigInteger[] bigIntegerArr = this.f30623a;
        BigInteger[] bigIntegerArr2 = bVar.f30623a;
        int length = bigIntegerArr2.length;
        int i10 = 0;
        if (length <= 1) {
            BigInteger[] v10 = org.bouncycastle.util.a.v(bigIntegerArr);
            for (int i11 = 0; i11 < this.f30623a.length; i11++) {
                v10[i11] = v10[i11].multiply(bVar.f30623a[0]);
            }
            return new b(v10);
        }
        int i12 = length / 2;
        b bVar2 = new b(org.bouncycastle.util.a.U(bigIntegerArr, i12));
        b bVar3 = new b(org.bouncycastle.util.a.b0(bigIntegerArr, i12, length));
        b bVar4 = new b(org.bouncycastle.util.a.U(bigIntegerArr2, i12));
        b bVar5 = new b(org.bouncycastle.util.a.b0(bigIntegerArr2, i12, length));
        b bVar6 = (b) bVar2.clone();
        bVar6.a(bVar3);
        b bVar7 = (b) bVar4.clone();
        bVar7.a(bVar5);
        b m10 = bVar2.m(bVar4);
        b m11 = bVar3.m(bVar5);
        b m12 = bVar6.m(bVar7);
        m12.n(m10);
        m12.n(m11);
        b bVar8 = new b((length * 2) - 1);
        int i13 = 0;
        while (true) {
            BigInteger[] bigIntegerArr3 = m10.f30623a;
            if (i13 >= bigIntegerArr3.length) {
                break;
            }
            bVar8.f30623a[i13] = bigIntegerArr3[i13];
            i13++;
        }
        int i14 = 0;
        while (true) {
            BigInteger[] bigIntegerArr4 = m12.f30623a;
            if (i14 >= bigIntegerArr4.length) {
                break;
            }
            BigInteger[] bigIntegerArr5 = bVar8.f30623a;
            int i15 = i12 + i14;
            bigIntegerArr5[i15] = bigIntegerArr5[i15].add(bigIntegerArr4[i14]);
            i14++;
        }
        while (true) {
            BigInteger[] bigIntegerArr6 = m11.f30623a;
            if (i10 >= bigIntegerArr6.length) {
                return bVar8;
            }
            BigInteger[] bigIntegerArr7 = bVar8.f30623a;
            int i16 = (i12 * 2) + i10;
            bigIntegerArr7[i16] = bigIntegerArr7[i16].add(bigIntegerArr6[i10]);
            i10++;
        }
    }

    public void n(b bVar) {
        BigInteger[] bigIntegerArr = bVar.f30623a;
        int length = bigIntegerArr.length;
        BigInteger[] bigIntegerArr2 = this.f30623a;
        if (length > bigIntegerArr2.length) {
            int length2 = bigIntegerArr2.length;
            this.f30623a = org.bouncycastle.util.a.U(bigIntegerArr2, bigIntegerArr.length);
            while (true) {
                BigInteger[] bigIntegerArr3 = this.f30623a;
                if (length2 >= bigIntegerArr3.length) {
                    break;
                }
                bigIntegerArr3[length2] = c.f30624a;
                length2++;
            }
        }
        int i10 = 0;
        while (true) {
            BigInteger[] bigIntegerArr4 = bVar.f30623a;
            if (i10 >= bigIntegerArr4.length) {
                return;
            }
            BigInteger[] bigIntegerArr5 = this.f30623a;
            bigIntegerArr5[i10] = bigIntegerArr5[i10].subtract(bigIntegerArr4[i10]);
            i10++;
        }
    }

    public BigInteger o() {
        BigInteger bigInteger = c.f30624a;
        int i10 = 0;
        while (true) {
            BigInteger[] bigIntegerArr = this.f30623a;
            if (i10 >= bigIntegerArr.length) {
                return bigInteger;
            }
            bigInteger = bigInteger.add(bigIntegerArr[i10]);
            i10++;
        }
    }

    public b(e eVar) {
        this.f30623a = new BigInteger[eVar.f30630a.length];
        int i10 = 0;
        while (true) {
            BigInteger[] bigIntegerArr = this.f30623a;
            if (i10 >= bigIntegerArr.length) {
                return;
            }
            bigIntegerArr[i10] = BigInteger.valueOf(eVar.f30630a[i10]);
            i10++;
        }
    }

    public b(BigInteger[] bigIntegerArr) {
        this.f30623a = bigIntegerArr;
    }
}
