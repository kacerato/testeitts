package com.google.common.primitives;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.RandomAccess;
import java.util.regex.Pattern;
import javax.annotation.CheckForNull;
import org.eclipse.jdt.internal.core.JavaElement;
import v2.InterfaceC15800a;
import w2.AbstractC15892i;
import w2.H;
import w2.P;
import yd.C16181m;

@f
@v2.b(emulated = true)
public final class d extends e {

    public static final int f67016a = 8;

    @v2.c
    public static final Pattern f67017b = i();

    @v2.b
    public static class a extends AbstractList<Double> implements RandomAccess, Serializable {

        public static final long f67018e = 0;

        public final double[] f67019b;

        public final int f67020c;

        public final int f67021d;

        public a(double[] dArr) {
            this(dArr, 0, dArr.length);
        }

        @Override
        public boolean contains(@CheckForNull Object obj) {
            return (obj instanceof Double) && d.l(this.f67019b, ((Double) obj).doubleValue(), this.f67020c, this.f67021d) != -1;
        }

        @Override
        public boolean equals(@CheckForNull Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof a)) {
                return super.equals(obj);
            }
            a aVar = (a) obj;
            int size = size();
            if (aVar.size() != size) {
                return false;
            }
            for (int i10 = 0; i10 < size; i10++) {
                if (this.f67019b[this.f67020c + i10] != aVar.f67019b[aVar.f67020c + i10]) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public int hashCode() {
            int i10 = 1;
            for (int i11 = this.f67020c; i11 < this.f67021d; i11++) {
                i10 = (i10 * 31) + d.j(this.f67019b[i11]);
            }
            return i10;
        }

        @Override
        public int indexOf(@CheckForNull Object obj) {
            int l10;
            if (!(obj instanceof Double) || (l10 = d.l(this.f67019b, ((Double) obj).doubleValue(), this.f67020c, this.f67021d)) < 0) {
                return -1;
            }
            return l10 - this.f67020c;
        }

        @Override
        public boolean isEmpty() {
            return false;
        }

        @Override
        public Double get(int i10) {
            H.C(i10, size());
            return Double.valueOf(this.f67019b[this.f67020c + i10]);
        }

        @Override
        public Double set(int i10, Double d10) {
            H.C(i10, size());
            double[] dArr = this.f67019b;
            int i11 = this.f67020c;
            double d11 = dArr[i11 + i10];
            dArr[i11 + i10] = ((Double) H.E(d10)).doubleValue();
            return Double.valueOf(d11);
        }

        public double[] l() {
            return Arrays.copyOfRange(this.f67019b, this.f67020c, this.f67021d);
        }

        @Override
        public int lastIndexOf(@CheckForNull Object obj) {
            int q10;
            if (!(obj instanceof Double) || (q10 = d.q(this.f67019b, ((Double) obj).doubleValue(), this.f67020c, this.f67021d)) < 0) {
                return -1;
            }
            return q10 - this.f67020c;
        }

        @Override
        public int size() {
            return this.f67021d - this.f67020c;
        }

        @Override
        public List<Double> subList(int i10, int i11) {
            H.f0(i10, i11, size());
            if (i10 == i11) {
                return Collections.emptyList();
            }
            double[] dArr = this.f67019b;
            int i12 = this.f67020c;
            return new a(dArr, i10 + i12, i12 + i11);
        }

        @Override
        public String toString() {
            StringBuilder sb2 = new StringBuilder(size() * 12);
            sb2.append('[');
            sb2.append(this.f67019b[this.f67020c]);
            int i10 = this.f67020c;
            while (true) {
                i10++;
                if (i10 >= this.f67021d) {
                    sb2.append(JavaElement.JEM_TYPE_PARAMETER);
                    return sb2.toString();
                }
                sb2.append(", ");
                sb2.append(this.f67019b[i10]);
            }
        }

        public a(double[] dArr, int i10, int i11) {
            this.f67019b = dArr;
            this.f67020c = i10;
            this.f67021d = i11;
        }
    }

    public static final class b extends AbstractC15892i<String, Double> implements Serializable {

        public static final b f67022d = new b();

        public static final long f67023e = 1;

        private Object r() {
            return f67022d;
        }

        @Override
        public String g(Double d10) {
            return d10.toString();
        }

        @Override
        public Double i(String str) {
            return Double.valueOf(str);
        }

        public String toString() {
            return "Doubles.stringConverter()";
        }
    }

    public enum c implements Comparator<double[]> {
        INSTANCE;

        @Override
        public int compare(double[] dArr, double[] dArr2) {
            int min = Math.min(dArr.length, dArr2.length);
            for (int i10 = 0; i10 < min; i10++) {
                int compare = Double.compare(dArr[i10], dArr2[i10]);
                if (compare != 0) {
                    return compare;
                }
            }
            return dArr.length - dArr2.length;
        }

        @Override
        public String toString() {
            return "Doubles.lexicographicalComparator()";
        }
    }

    @CheckForNull
    @v2.c
    @InterfaceC15800a
    public static Double A(String str) {
        if (!f67017b.matcher(str).matches()) {
            return null;
        }
        try {
            return Double.valueOf(Double.parseDouble(str));
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    public static List<Double> c(double... dArr) {
        return dArr.length == 0 ? Collections.emptyList() : new a(dArr);
    }

    public static int d(double d10, double d11) {
        return Double.compare(d10, d11);
    }

    public static double[] e(double[]... dArr) {
        int i10 = 0;
        for (double[] dArr2 : dArr) {
            i10 += dArr2.length;
        }
        double[] dArr3 = new double[i10];
        int i11 = 0;
        for (double[] dArr4 : dArr) {
            System.arraycopy(dArr4, 0, dArr3, i11, dArr4.length);
            i11 += dArr4.length;
        }
        return dArr3;
    }

    @InterfaceC15800a
    public static double f(double d10, double d11, double d12) {
        if (d11 <= d12) {
            return Math.min(Math.max(d10, d11), d12);
        }
        throw new IllegalArgumentException(P.e("min (%s) must be less than or equal to max (%s)", Double.valueOf(d11), Double.valueOf(d12)));
    }

    public static boolean g(double[] dArr, double d10) {
        for (double d11 : dArr) {
            if (d11 == d10) {
                return true;
            }
        }
        return false;
    }

    public static double[] h(double[] dArr, int i10, int i11) {
        H.k(i10 >= 0, "Invalid minLength: %s", i10);
        H.k(i11 >= 0, "Invalid padding: %s", i11);
        return dArr.length < i10 ? Arrays.copyOf(dArr, i10 + i11) : dArr;
    }

    @v2.c
    public static Pattern i() {
        String concat = "(?:\\d+#(?:\\.\\d*#)?|\\.\\d+#)".concat("(?:[eE][+-]?\\d+#)?[fFdD]?");
        StringBuilder sb2 = new StringBuilder("(?:[0-9a-fA-F]+#(?:\\.[0-9a-fA-F]*#)?|\\.[0-9a-fA-F]+#)".length() + 25);
        sb2.append("0[xX]");
        sb2.append("(?:[0-9a-fA-F]+#(?:\\.[0-9a-fA-F]*#)?|\\.[0-9a-fA-F]+#)");
        sb2.append("[pP][+-]?\\d+#[fFdD]?");
        String sb3 = sb2.toString();
        StringBuilder sb4 = new StringBuilder(String.valueOf(concat).length() + 23 + String.valueOf(sb3).length());
        sb4.append("[+-]?(?:NaN|Infinity|");
        sb4.append(concat);
        sb4.append("|");
        sb4.append(sb3);
        sb4.append(")");
        return Pattern.compile(sb4.toString().replace(C16181m.f130230g, "+"));
    }

    public static int j(double d10) {
        return Double.valueOf(d10).hashCode();
    }

    public static int k(double[] dArr, double d10) {
        return l(dArr, d10, 0, dArr.length);
    }

    public static int l(double[] dArr, double d10, int i10, int i11) {
        while (i10 < i11) {
            if (dArr[i10] == d10) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0025, code lost:
    
        r0 = r0 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int m(double[] dArr, double[] dArr2) {
        H.F(dArr, "array");
        H.F(dArr2, TypedValues.AttributesType.S_TARGET);
        if (dArr2.length == 0) {
            return 0;
        }
        int i10 = 0;
        while (i10 < (dArr.length - dArr2.length) + 1) {
            for (int i11 = 0; i11 < dArr2.length; i11++) {
                if (dArr[i10 + i11] != dArr2[i11]) {
                    break;
                }
            }
            return i10;
        }
        return -1;
    }

    public static boolean n(double d10) {
        return Double.NEGATIVE_INFINITY < d10 && d10 < Double.POSITIVE_INFINITY;
    }

    public static String o(String str, double... dArr) {
        H.E(str);
        if (dArr.length == 0) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder(dArr.length * 12);
        sb2.append(dArr[0]);
        for (int i10 = 1; i10 < dArr.length; i10++) {
            sb2.append(str);
            sb2.append(dArr[i10]);
        }
        return sb2.toString();
    }

    public static int p(double[] dArr, double d10) {
        return q(dArr, d10, 0, dArr.length);
    }

    public static int q(double[] dArr, double d10, int i10, int i11) {
        for (int i12 = i11 - 1; i12 >= i10; i12--) {
            if (dArr[i12] == d10) {
                return i12;
            }
        }
        return -1;
    }

    public static Comparator<double[]> r() {
        return c.INSTANCE;
    }

    @v2.c("Available in GWT! Annotation is to avoid conflict with GWT specialization of base class.")
    public static double s(double... dArr) {
        H.d(dArr.length > 0);
        double d10 = dArr[0];
        for (int i10 = 1; i10 < dArr.length; i10++) {
            d10 = Math.max(d10, dArr[i10]);
        }
        return d10;
    }

    @v2.c("Available in GWT! Annotation is to avoid conflict with GWT specialization of base class.")
    public static double t(double... dArr) {
        H.d(dArr.length > 0);
        double d10 = dArr[0];
        for (int i10 = 1; i10 < dArr.length; i10++) {
            d10 = Math.min(d10, dArr[i10]);
        }
        return d10;
    }

    public static void u(double[] dArr) {
        H.E(dArr);
        v(dArr, 0, dArr.length);
    }

    public static void v(double[] dArr, int i10, int i11) {
        H.E(dArr);
        H.f0(i10, i11, dArr.length);
        for (int i12 = i11 - 1; i10 < i12; i12--) {
            double d10 = dArr[i10];
            dArr[i10] = dArr[i12];
            dArr[i12] = d10;
            i10++;
        }
    }

    public static void w(double[] dArr) {
        H.E(dArr);
        x(dArr, 0, dArr.length);
    }

    public static void x(double[] dArr, int i10, int i11) {
        H.E(dArr);
        H.f0(i10, i11, dArr.length);
        Arrays.sort(dArr, i10, i11);
        v(dArr, i10, i11);
    }

    @InterfaceC15800a
    public static AbstractC15892i<String, Double> y() {
        return b.f67022d;
    }

    public static double[] z(Collection<? extends Number> collection) {
        if (collection instanceof a) {
            return ((a) collection).l();
        }
        Object[] array = collection.toArray();
        int length = array.length;
        double[] dArr = new double[length];
        for (int i10 = 0; i10 < length; i10++) {
            dArr[i10] = ((Number) H.E(array[i10])).doubleValue();
        }
        return dArr;
    }
}
