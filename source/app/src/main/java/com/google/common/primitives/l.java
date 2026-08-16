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
import javax.annotation.CheckForNull;
import org.eclipse.jdt.internal.core.JavaElement;
import v2.InterfaceC15800a;
import w2.AbstractC15892i;
import w2.H;

@f
@v2.b(emulated = true)
public final class l extends m {

    public static final int f67052a = 4;

    public static final int f67053b = 1073741824;

    @v2.b
    public static class a extends AbstractList<Integer> implements RandomAccess, Serializable {

        public static final long f67054e = 0;

        public final int[] f67055b;

        public final int f67056c;

        public final int f67057d;

        public a(int[] iArr) {
            this(iArr, 0, iArr.length);
        }

        @Override
        public boolean contains(@CheckForNull Object obj) {
            return (obj instanceof Integer) && l.n(this.f67055b, ((Integer) obj).intValue(), this.f67056c, this.f67057d) != -1;
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
                if (this.f67055b[this.f67056c + i10] != aVar.f67055b[aVar.f67056c + i10]) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public int hashCode() {
            int i10 = 1;
            for (int i11 = this.f67056c; i11 < this.f67057d; i11++) {
                i10 = (i10 * 31) + l.l(this.f67055b[i11]);
            }
            return i10;
        }

        @Override
        public int indexOf(@CheckForNull Object obj) {
            int n10;
            if (!(obj instanceof Integer) || (n10 = l.n(this.f67055b, ((Integer) obj).intValue(), this.f67056c, this.f67057d)) < 0) {
                return -1;
            }
            return n10 - this.f67056c;
        }

        @Override
        public boolean isEmpty() {
            return false;
        }

        @Override
        public Integer get(int i10) {
            H.C(i10, size());
            return Integer.valueOf(this.f67055b[this.f67056c + i10]);
        }

        @Override
        public Integer set(int i10, Integer num) {
            H.C(i10, size());
            int[] iArr = this.f67055b;
            int i11 = this.f67056c;
            int i12 = iArr[i11 + i10];
            iArr[i11 + i10] = ((Integer) H.E(num)).intValue();
            return Integer.valueOf(i12);
        }

        public int[] l() {
            return Arrays.copyOfRange(this.f67055b, this.f67056c, this.f67057d);
        }

        @Override
        public int lastIndexOf(@CheckForNull Object obj) {
            int r10;
            if (!(obj instanceof Integer) || (r10 = l.r(this.f67055b, ((Integer) obj).intValue(), this.f67056c, this.f67057d)) < 0) {
                return -1;
            }
            return r10 - this.f67056c;
        }

        @Override
        public int size() {
            return this.f67057d - this.f67056c;
        }

        @Override
        public List<Integer> subList(int i10, int i11) {
            H.f0(i10, i11, size());
            if (i10 == i11) {
                return Collections.emptyList();
            }
            int[] iArr = this.f67055b;
            int i12 = this.f67056c;
            return new a(iArr, i10 + i12, i12 + i11);
        }

        @Override
        public String toString() {
            StringBuilder sb2 = new StringBuilder(size() * 5);
            sb2.append('[');
            sb2.append(this.f67055b[this.f67056c]);
            int i10 = this.f67056c;
            while (true) {
                i10++;
                if (i10 >= this.f67057d) {
                    sb2.append(JavaElement.JEM_TYPE_PARAMETER);
                    return sb2.toString();
                }
                sb2.append(", ");
                sb2.append(this.f67055b[i10]);
            }
        }

        public a(int[] iArr, int i10, int i11) {
            this.f67055b = iArr;
            this.f67056c = i10;
            this.f67057d = i11;
        }
    }

    public static final class b extends AbstractC15892i<String, Integer> implements Serializable {

        public static final b f67058d = new b();

        public static final long f67059e = 1;

        private Object r() {
            return f67058d;
        }

        @Override
        public String g(Integer num) {
            return num.toString();
        }

        @Override
        public Integer i(String str) {
            return Integer.decode(str);
        }

        public String toString() {
            return "Ints.stringConverter()";
        }
    }

    public enum c implements Comparator<int[]> {
        INSTANCE;

        @Override
        public int compare(int[] iArr, int[] iArr2) {
            int min = Math.min(iArr.length, iArr2.length);
            for (int i10 = 0; i10 < min; i10++) {
                int e10 = l.e(iArr[i10], iArr2[i10]);
                if (e10 != 0) {
                    return e10;
                }
            }
            return iArr.length - iArr2.length;
        }

        @Override
        public String toString() {
            return "Ints.lexicographicalComparator()";
        }
    }

    @InterfaceC15800a
    public static AbstractC15892i<String, Integer> A() {
        return b.f67058d;
    }

    public static int[] B(Collection<? extends Number> collection) {
        if (collection instanceof a) {
            return ((a) collection).l();
        }
        Object[] array = collection.toArray();
        int length = array.length;
        int[] iArr = new int[length];
        for (int i10 = 0; i10 < length; i10++) {
            iArr[i10] = ((Number) H.E(array[i10])).intValue();
        }
        return iArr;
    }

    public static byte[] C(int i10) {
        return new byte[]{(byte) (i10 >> 24), (byte) (i10 >> 16), (byte) (i10 >> 8), (byte) i10};
    }

    @CheckForNull
    @InterfaceC15800a
    public static Integer D(String str) {
        return E(str, 10);
    }

    @CheckForNull
    @InterfaceC15800a
    public static Integer E(String str, int i10) {
        Long C10 = n.C(str, i10);
        if (C10 == null || C10.longValue() != C10.intValue()) {
            return null;
        }
        return Integer.valueOf(C10.intValue());
    }

    public static List<Integer> c(int... iArr) {
        return iArr.length == 0 ? Collections.emptyList() : new a(iArr);
    }

    public static int d(long j10) {
        int i10 = (int) j10;
        H.p(((long) i10) == j10, "Out of range: %s", j10);
        return i10;
    }

    public static int e(int i10, int i11) {
        if (i10 < i11) {
            return -1;
        }
        return i10 > i11 ? 1 : 0;
    }

    public static int[] f(int[]... iArr) {
        int i10 = 0;
        for (int[] iArr2 : iArr) {
            i10 += iArr2.length;
        }
        int[] iArr3 = new int[i10];
        int i11 = 0;
        for (int[] iArr4 : iArr) {
            System.arraycopy(iArr4, 0, iArr3, i11, iArr4.length);
            i11 += iArr4.length;
        }
        return iArr3;
    }

    @InterfaceC15800a
    public static int g(int i10, int i11, int i12) {
        H.m(i11 <= i12, "min (%s) must be less than or equal to max (%s)", i11, i12);
        return Math.min(Math.max(i10, i11), i12);
    }

    public static boolean h(int[] iArr, int i10) {
        for (int i11 : iArr) {
            if (i11 == i10) {
                return true;
            }
        }
        return false;
    }

    public static int[] i(int[] iArr, int i10, int i11) {
        H.k(i10 >= 0, "Invalid minLength: %s", i10);
        H.k(i11 >= 0, "Invalid padding: %s", i11);
        return iArr.length < i10 ? Arrays.copyOf(iArr, i10 + i11) : iArr;
    }

    public static int j(byte[] bArr) {
        H.m(bArr.length >= 4, "array too small: %s < %s", bArr.length, 4);
        return k(bArr[0], bArr[1], bArr[2], bArr[3]);
    }

    public static int k(byte b10, byte b11, byte b12, byte b13) {
        return (b10 << 24) | ((b11 & 255) << 16) | ((b12 & 255) << 8) | (b13 & 255);
    }

    public static int l(int i10) {
        return i10;
    }

    public static int m(int[] iArr, int i10) {
        return n(iArr, i10, 0, iArr.length);
    }

    public static int n(int[] iArr, int i10, int i11, int i12) {
        while (i11 < i12) {
            if (iArr[i11] == i10) {
                return i11;
            }
            i11++;
        }
        return -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0023, code lost:
    
        r0 = r0 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int o(int[] iArr, int[] iArr2) {
        H.F(iArr, "array");
        H.F(iArr2, TypedValues.AttributesType.S_TARGET);
        if (iArr2.length == 0) {
            return 0;
        }
        int i10 = 0;
        while (i10 < (iArr.length - iArr2.length) + 1) {
            for (int i11 = 0; i11 < iArr2.length; i11++) {
                if (iArr[i10 + i11] != iArr2[i11]) {
                    break;
                }
            }
            return i10;
        }
        return -1;
    }

    public static String p(String str, int... iArr) {
        H.E(str);
        if (iArr.length == 0) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder(iArr.length * 5);
        sb2.append(iArr[0]);
        for (int i10 = 1; i10 < iArr.length; i10++) {
            sb2.append(str);
            sb2.append(iArr[i10]);
        }
        return sb2.toString();
    }

    public static int q(int[] iArr, int i10) {
        return r(iArr, i10, 0, iArr.length);
    }

    public static int r(int[] iArr, int i10, int i11, int i12) {
        for (int i13 = i12 - 1; i13 >= i11; i13--) {
            if (iArr[i13] == i10) {
                return i13;
            }
        }
        return -1;
    }

    public static Comparator<int[]> s() {
        return c.INSTANCE;
    }

    @v2.c("Available in GWT! Annotation is to avoid conflict with GWT specialization of base class.")
    public static int t(int... iArr) {
        H.d(iArr.length > 0);
        int i10 = iArr[0];
        for (int i11 = 1; i11 < iArr.length; i11++) {
            int i12 = iArr[i11];
            if (i12 > i10) {
                i10 = i12;
            }
        }
        return i10;
    }

    @v2.c("Available in GWT! Annotation is to avoid conflict with GWT specialization of base class.")
    public static int u(int... iArr) {
        H.d(iArr.length > 0);
        int i10 = iArr[0];
        for (int i11 = 1; i11 < iArr.length; i11++) {
            int i12 = iArr[i11];
            if (i12 < i10) {
                i10 = i12;
            }
        }
        return i10;
    }

    public static void v(int[] iArr) {
        H.E(iArr);
        w(iArr, 0, iArr.length);
    }

    public static void w(int[] iArr, int i10, int i11) {
        H.E(iArr);
        H.f0(i10, i11, iArr.length);
        for (int i12 = i11 - 1; i10 < i12; i12--) {
            int i13 = iArr[i10];
            iArr[i10] = iArr[i12];
            iArr[i12] = i13;
            i10++;
        }
    }

    public static int x(long j10) {
        if (j10 > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        if (j10 < -2147483648L) {
            return Integer.MIN_VALUE;
        }
        return (int) j10;
    }

    public static void y(int[] iArr) {
        H.E(iArr);
        z(iArr, 0, iArr.length);
    }

    public static void z(int[] iArr, int i10, int i11) {
        H.E(iArr);
        H.f0(i10, i11, iArr.length);
        Arrays.sort(iArr, i10, i11);
        w(iArr, i10, i11);
    }
}
