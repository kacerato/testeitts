package com.android.tools.r8.internal;

import java.math.RoundingMode;
import java.util.Arrays;
import java.util.Objects;

public final class OC extends PC {

    public Object[] f42820c;

    public int f42821d;

    public int f42822e;

    public int f42823f;

    public OC(int i10) {
        super(i10);
        this.f42820c = null;
        this.f42821d = 0;
        this.f42822e = 0;
    }

    @Override
    public final PC a(Object obj) {
        if (this.f42820c == null) {
            if (this.f43165b == 0) {
                b(obj);
                return this;
            }
            a(this.f43164a.length);
            this.f43165b--;
            return c(this.f43164a[0]).a(obj);
        }
        return c(obj);
    }

    @Override
    public final PC b() {
        return new OC(this);
    }

    public final PC c(Object obj) {
        Objects.requireNonNull(this.f42820c);
        int hashCode = obj.hashCode();
        int a10 = AbstractC9047qA.a(hashCode);
        int length = this.f42820c.length - 1;
        for (int i10 = a10; i10 - a10 < this.f42821d; i10++) {
            int i11 = i10 & length;
            Object obj2 = this.f42820c[i11];
            if (obj2 == null) {
                b(obj);
                this.f42820c[i11] = obj;
                this.f42823f += hashCode;
                a(this.f43165b);
                return this;
            }
            if (obj2.equals(obj)) {
                return this;
            }
        }
        return new NC(this).a(obj);
    }

    public OC(OC oc2) {
        super(oc2);
        Object[] objArr = oc2.f42820c;
        this.f42820c = objArr == null ? null : (Object[]) objArr.clone();
        this.f42821d = oc2.f42821d;
        this.f42822e = oc2.f42822e;
        this.f42823f = oc2.f42823f;
    }

    @Override
    public final QC a() {
        int i10 = this.f43165b;
        if (i10 == 0) {
            int i11 = QC.f43505c;
            return C7119ef0.f47742j;
        }
        if (i10 != 1) {
            Object[] objArr = this.f43164a;
            if (i10 != objArr.length) {
                objArr = Arrays.copyOf(objArr, i10);
            }
            int i12 = this.f42823f;
            Object[] objArr2 = this.f42820c;
            Objects.requireNonNull(objArr2);
            return new C7119ef0(i12, this.f42820c.length - 1, objArr, objArr2);
        }
        Object obj = this.f43164a[0];
        Objects.requireNonNull(obj);
        int i13 = QC.f43505c;
        return new C5978Tm0(obj);
    }

    @Override
    public final PC c() {
        int i10;
        if (this.f42820c != null) {
            int j10 = QC.j(this.f43165b);
            int i11 = 0;
            if (j10 * 2 < this.f42820c.length) {
                Object[] objArr = this.f43164a;
                int i12 = this.f43165b;
                Object[] objArr2 = new Object[j10];
                int i13 = j10 - 1;
                for (int i14 = 0; i14 < i12; i14++) {
                    Object obj = objArr[i14];
                    Objects.requireNonNull(obj);
                    int a10 = AbstractC9047qA.a(obj.hashCode());
                    while (true) {
                        i10 = a10 & i13;
                        if (objArr2[i10] == null) {
                            break;
                        }
                        a10++;
                    }
                    objArr2[i10] = obj;
                }
                this.f42820c = objArr2;
                RoundingMode roundingMode = RoundingMode.UNNECESSARY;
                this.f42821d = YH.a(j10) * 13;
                this.f42822e = (int) (j10 * 0.7d);
            }
            Object[] objArr3 = this.f42820c;
            int length = objArr3.length;
            RoundingMode roundingMode2 = RoundingMode.UNNECESSARY;
            int a11 = YH.a(length) * 13;
            int length2 = objArr3.length - 1;
            int i15 = 0;
            while (i11 < objArr3.length) {
                if (i11 == i15 && objArr3[i11] == null) {
                    i15 = i11 + a11;
                    if (objArr3[(i15 - 1) & length2] != null) {
                        i15 = i11 + 1;
                    }
                    i11 = i15;
                } else {
                    int i16 = i11 + a11;
                    for (int i17 = i16 - 1; i17 >= i15; i17--) {
                        if (objArr3[i17 & length2] == null) {
                            i15 = i16;
                            i11 = i17 + 1;
                        }
                    }
                    return new NC(this);
                }
            }
        }
        return this;
    }

    public final void a(int i10) {
        int length;
        int i11;
        Object[] objArr = this.f42820c;
        if (objArr == null) {
            length = QC.j(i10);
            this.f42820c = new Object[length];
        } else {
            if (i10 <= this.f42822e || objArr.length >= 1073741824) {
                return;
            }
            length = objArr.length * 2;
            Object[] objArr2 = this.f43164a;
            int i12 = this.f43165b;
            Object[] objArr3 = new Object[length];
            int i13 = length - 1;
            for (int i14 = 0; i14 < i12; i14++) {
                Object obj = objArr2[i14];
                Objects.requireNonNull(obj);
                int a10 = AbstractC9047qA.a(obj.hashCode());
                while (true) {
                    i11 = a10 & i13;
                    if (objArr3[i11] == null) {
                        break;
                    } else {
                        a10++;
                    }
                }
                objArr3[i11] = obj;
            }
            this.f42820c = objArr3;
        }
        RoundingMode roundingMode = RoundingMode.UNNECESSARY;
        this.f42821d = YH.a(length) * 13;
        this.f42822e = (int) (length * 0.7d);
    }
}
