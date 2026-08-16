package E2;

import java.math.RoundingMode;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import v2.InterfaceC15800a;
import w2.H;

@e
@v2.c
@InterfaceC15800a
public final class m {

    public static final class b {

        public final int f5419a;

        public c a(int i10) {
            return new c(this.f5419a, i10);
        }

        public d b(Collection<Integer> collection) {
            return new d(this.f5419a, com.google.common.primitives.l.B(collection));
        }

        public d c(int... iArr) {
            return new d(this.f5419a, (int[]) iArr.clone());
        }

        public b(int i10) {
            H.e(i10 > 0, "Quantile scale must be positive");
            this.f5419a = i10;
        }
    }

    public static final class c {

        public final int f5420a;

        public final int f5421b;

        public double a(Collection<? extends Number> collection) {
            return e(com.google.common.primitives.d.z(collection));
        }

        public double b(double... dArr) {
            return e((double[]) dArr.clone());
        }

        public double c(int... iArr) {
            return e(m.l(iArr));
        }

        public double d(long... jArr) {
            return e(m.m(jArr));
        }

        public double e(double... dArr) {
            H.e(dArr.length > 0, "Cannot calculate quantiles of an empty dataset");
            if (m.j(dArr)) {
                return Double.NaN;
            }
            long length = this.f5421b * (dArr.length - 1);
            int g10 = (int) h.g(length, this.f5420a, RoundingMode.DOWN);
            int i10 = (int) (length - (g10 * this.f5420a));
            m.u(g10, dArr, 0, dArr.length - 1);
            if (i10 == 0) {
                return dArr[g10];
            }
            int i11 = g10 + 1;
            m.u(i11, dArr, i11, dArr.length - 1);
            return m.k(dArr[g10], dArr[i11], i10, this.f5420a);
        }

        public c(int i10, int i11) {
            m.h(i11, i10);
            this.f5420a = i10;
            this.f5421b = i11;
        }
    }

    public static final class d {

        public final int f5422a;

        public final int[] f5423b;

        public Map<Integer, Double> a(Collection<? extends Number> collection) {
            return e(com.google.common.primitives.d.z(collection));
        }

        public Map<Integer, Double> b(double... dArr) {
            return e((double[]) dArr.clone());
        }

        public Map<Integer, Double> c(int... iArr) {
            return e(m.l(iArr));
        }

        public Map<Integer, Double> d(long... jArr) {
            return e(m.m(jArr));
        }

        public Map<Integer, Double> e(double... dArr) {
            int i10 = 0;
            H.e(dArr.length > 0, "Cannot calculate quantiles of an empty dataset");
            if (m.j(dArr)) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                int[] iArr = this.f5423b;
                int length = iArr.length;
                while (i10 < length) {
                    linkedHashMap.put(Integer.valueOf(iArr[i10]), Double.valueOf(Double.NaN));
                    i10++;
                }
                return Collections.unmodifiableMap(linkedHashMap);
            }
            int[] iArr2 = this.f5423b;
            int[] iArr3 = new int[iArr2.length];
            int[] iArr4 = new int[iArr2.length];
            int[] iArr5 = new int[iArr2.length * 2];
            int i11 = 0;
            int i12 = 0;
            while (true) {
                if (i11 >= this.f5423b.length) {
                    break;
                }
                long length2 = r5[i11] * (dArr.length - 1);
                int g10 = (int) h.g(length2, this.f5422a, RoundingMode.DOWN);
                int i13 = (int) (length2 - (g10 * this.f5422a));
                iArr3[i11] = g10;
                iArr4[i11] = i13;
                iArr5[i12] = g10;
                int i14 = i12 + 1;
                if (i13 != 0) {
                    iArr5[i14] = g10 + 1;
                    i12 += 2;
                } else {
                    i12 = i14;
                }
                i11++;
            }
            Arrays.sort(iArr5, 0, i12);
            m.t(iArr5, 0, i12 - 1, dArr, 0, dArr.length - 1);
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            while (true) {
                int[] iArr6 = this.f5423b;
                if (i10 >= iArr6.length) {
                    return Collections.unmodifiableMap(linkedHashMap2);
                }
                int i15 = iArr3[i10];
                int i16 = iArr4[i10];
                if (i16 == 0) {
                    linkedHashMap2.put(Integer.valueOf(iArr6[i10]), Double.valueOf(dArr[i15]));
                } else {
                    linkedHashMap2.put(Integer.valueOf(iArr6[i10]), Double.valueOf(m.k(dArr[i15], dArr[i15 + 1], i16, this.f5422a)));
                }
                i10++;
            }
        }

        public d(int i10, int[] iArr) {
            for (int i11 : iArr) {
                m.h(i11, i10);
            }
            H.e(iArr.length > 0, "Indexes must be a non empty array");
            this.f5422a = i10;
            this.f5423b = iArr;
        }
    }

    public static void h(int i10, int i11) {
        if (i10 < 0 || i10 > i11) {
            StringBuilder sb2 = new StringBuilder(70);
            sb2.append("Quantile indexes must be between 0 and the scale, which is ");
            sb2.append(i11);
            throw new IllegalArgumentException(sb2.toString());
        }
    }

    public static int i(int[] iArr, int i10, int i11, int i12, int i13) {
        if (i10 == i11) {
            return i10;
        }
        int i14 = i12 + i13;
        int i15 = i14 >>> 1;
        while (i11 > i10 + 1) {
            int i16 = (i10 + i11) >>> 1;
            int i17 = iArr[i16];
            if (i17 > i15) {
                i11 = i16;
            } else {
                if (i17 >= i15) {
                    return i16;
                }
                i10 = i16;
            }
        }
        return (i14 - iArr[i10]) - iArr[i11] > 0 ? i11 : i10;
    }

    public static boolean j(double... dArr) {
        for (double d10 : dArr) {
            if (Double.isNaN(d10)) {
                return true;
            }
        }
        return false;
    }

    public static double k(double d10, double d11, double d12, double d13) {
        if (d10 == Double.NEGATIVE_INFINITY) {
            return d11 == Double.POSITIVE_INFINITY ? Double.NaN : Double.NEGATIVE_INFINITY;
        }
        if (d11 == Double.POSITIVE_INFINITY) {
            return Double.POSITIVE_INFINITY;
        }
        return d10 + (((d11 - d10) * d12) / d13);
    }

    public static double[] l(int[] iArr) {
        int length = iArr.length;
        double[] dArr = new double[length];
        for (int i10 = 0; i10 < length; i10++) {
            dArr[i10] = iArr[i10];
        }
        return dArr;
    }

    public static double[] m(long[] jArr) {
        int length = jArr.length;
        double[] dArr = new double[length];
        for (int i10 = 0; i10 < length; i10++) {
            dArr[i10] = jArr[i10];
        }
        return dArr;
    }

    public static c n() {
        return s(2).a(1);
    }

    public static void o(double[] dArr, int i10, int i11) {
        int i12 = (i10 + i11) >>> 1;
        double d10 = dArr[i11];
        double d11 = dArr[i12];
        boolean z10 = d10 < d11;
        double d12 = dArr[i10];
        boolean z11 = d11 < d12;
        boolean z12 = d10 < d12;
        if (z10 == z11) {
            v(dArr, i12, i10);
        } else if (z10 != z12) {
            v(dArr, i10, i11);
        }
    }

    public static int p(double[] dArr, int i10, int i11) {
        o(dArr, i10, i11);
        double d10 = dArr[i10];
        int i12 = i11;
        while (i11 > i10) {
            if (dArr[i11] > d10) {
                v(dArr, i12, i11);
                i12--;
            }
            i11--;
        }
        v(dArr, i10, i12);
        return i12;
    }

    public static b q() {
        return s(100);
    }

    public static b r() {
        return s(4);
    }

    public static b s(int i10) {
        return new b(i10);
    }

    public static void t(int[] iArr, int i10, int i11, double[] dArr, int i12, int i13) {
        int i14 = i(iArr, i10, i11, i12, i13);
        int i15 = iArr[i14];
        u(i15, dArr, i12, i13);
        int i16 = i14 - 1;
        while (i16 >= i10 && iArr[i16] == i15) {
            i16--;
        }
        if (i16 >= i10) {
            t(iArr, i10, i16, dArr, i12, i15 - 1);
        }
        int i17 = i14 + 1;
        while (i17 <= i11 && iArr[i17] == i15) {
            i17++;
        }
        if (i17 <= i11) {
            t(iArr, i17, i11, dArr, i15 + 1, i13);
        }
    }

    public static void u(int i10, double[] dArr, int i11, int i12) {
        if (i10 != i11) {
            while (i12 > i11) {
                int p10 = p(dArr, i11, i12);
                if (p10 >= i10) {
                    i12 = p10 - 1;
                }
                if (p10 <= i10) {
                    i11 = p10 + 1;
                }
            }
            return;
        }
        int i13 = i11;
        for (int i14 = i11 + 1; i14 <= i12; i14++) {
            if (dArr[i13] > dArr[i14]) {
                i13 = i14;
            }
        }
        if (i13 != i11) {
            v(dArr, i13, i11);
        }
    }

    public static void v(double[] dArr, int i10, int i11) {
        double d10 = dArr[i10];
        dArr[i10] = dArr[i11];
        dArr[i11] = d10;
    }
}
