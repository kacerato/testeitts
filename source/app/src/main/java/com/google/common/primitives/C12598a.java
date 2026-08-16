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
import w2.H;

@f
@v2.b
public final class C12598a {

    @v2.b
    public static class C1008a extends AbstractList<Boolean> implements RandomAccess, Serializable {

        public static final long f67003e = 0;

        public final boolean[] f67004b;

        public final int f67005c;

        public final int f67006d;

        public C1008a(boolean[] zArr) {
            this(zArr, 0, zArr.length);
        }

        @Override
        public boolean contains(@CheckForNull Object obj) {
            return (obj instanceof Boolean) && C12598a.l(this.f67004b, ((Boolean) obj).booleanValue(), this.f67005c, this.f67006d) != -1;
        }

        @Override
        public boolean equals(@CheckForNull Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C1008a)) {
                return super.equals(obj);
            }
            C1008a c1008a = (C1008a) obj;
            int size = size();
            if (c1008a.size() != size) {
                return false;
            }
            for (int i10 = 0; i10 < size; i10++) {
                if (this.f67004b[this.f67005c + i10] != c1008a.f67004b[c1008a.f67005c + i10]) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public int hashCode() {
            int i10 = 1;
            for (int i11 = this.f67005c; i11 < this.f67006d; i11++) {
                i10 = (i10 * 31) + C12598a.j(this.f67004b[i11]);
            }
            return i10;
        }

        @Override
        public int indexOf(@CheckForNull Object obj) {
            int l10;
            if (!(obj instanceof Boolean) || (l10 = C12598a.l(this.f67004b, ((Boolean) obj).booleanValue(), this.f67005c, this.f67006d)) < 0) {
                return -1;
            }
            return l10 - this.f67005c;
        }

        @Override
        public boolean isEmpty() {
            return false;
        }

        @Override
        public Boolean get(int i10) {
            H.C(i10, size());
            return Boolean.valueOf(this.f67004b[this.f67005c + i10]);
        }

        @Override
        public Boolean set(int i10, Boolean bool) {
            H.C(i10, size());
            boolean[] zArr = this.f67004b;
            int i11 = this.f67005c;
            boolean z10 = zArr[i11 + i10];
            zArr[i11 + i10] = ((Boolean) H.E(bool)).booleanValue();
            return Boolean.valueOf(z10);
        }

        public boolean[] l() {
            return Arrays.copyOfRange(this.f67004b, this.f67005c, this.f67006d);
        }

        @Override
        public int lastIndexOf(@CheckForNull Object obj) {
            int p10;
            if (!(obj instanceof Boolean) || (p10 = C12598a.p(this.f67004b, ((Boolean) obj).booleanValue(), this.f67005c, this.f67006d)) < 0) {
                return -1;
            }
            return p10 - this.f67005c;
        }

        @Override
        public int size() {
            return this.f67006d - this.f67005c;
        }

        @Override
        public List<Boolean> subList(int i10, int i11) {
            H.f0(i10, i11, size());
            if (i10 == i11) {
                return Collections.emptyList();
            }
            boolean[] zArr = this.f67004b;
            int i12 = this.f67005c;
            return new C1008a(zArr, i10 + i12, i12 + i11);
        }

        @Override
        public String toString() {
            StringBuilder sb2 = new StringBuilder(size() * 7);
            sb2.append(this.f67004b[this.f67005c] ? "[true" : "[false");
            int i10 = this.f67005c;
            while (true) {
                i10++;
                if (i10 >= this.f67006d) {
                    sb2.append(JavaElement.JEM_TYPE_PARAMETER);
                    return sb2.toString();
                }
                sb2.append(this.f67004b[i10] ? ", true" : ", false");
            }
        }

        public C1008a(boolean[] zArr, int i10, int i11) {
            this.f67004b = zArr;
            this.f67005c = i10;
            this.f67006d = i11;
        }
    }

    public enum b implements Comparator<Boolean> {
        TRUE_FIRST(1, "Booleans.trueFirst()"),
        FALSE_FIRST(-1, "Booleans.falseFirst()");

        private final String toString;
        private final int trueValue;

        b(int i10, String str) {
            this.trueValue = i10;
            this.toString = str;
        }

        @Override
        public int compare(Boolean bool, Boolean bool2) {
            return (bool2.booleanValue() ? this.trueValue : 0) - (bool.booleanValue() ? this.trueValue : 0);
        }

        @Override
        public String toString() {
            return this.toString;
        }
    }

    public enum c implements Comparator<boolean[]> {
        INSTANCE;

        @Override
        public int compare(boolean[] zArr, boolean[] zArr2) {
            int min = Math.min(zArr.length, zArr2.length);
            for (int i10 = 0; i10 < min; i10++) {
                int d10 = C12598a.d(zArr[i10], zArr2[i10]);
                if (d10 != 0) {
                    return d10;
                }
            }
            return zArr.length - zArr2.length;
        }

        @Override
        public String toString() {
            return "Booleans.lexicographicalComparator()";
        }
    }

    public static List<Boolean> c(boolean... zArr) {
        return zArr.length == 0 ? Collections.emptyList() : new C1008a(zArr);
    }

    public static int d(boolean z10, boolean z11) {
        if (z10 == z11) {
            return 0;
        }
        return z10 ? 1 : -1;
    }

    public static boolean[] e(boolean[]... zArr) {
        int i10 = 0;
        for (boolean[] zArr2 : zArr) {
            i10 += zArr2.length;
        }
        boolean[] zArr3 = new boolean[i10];
        int i11 = 0;
        for (boolean[] zArr4 : zArr) {
            System.arraycopy(zArr4, 0, zArr3, i11, zArr4.length);
            i11 += zArr4.length;
        }
        return zArr3;
    }

    public static boolean f(boolean[] zArr, boolean z10) {
        for (boolean z11 : zArr) {
            if (z11 == z10) {
                return true;
            }
        }
        return false;
    }

    @InterfaceC15800a
    public static int g(boolean... zArr) {
        int i10 = 0;
        for (boolean z10 : zArr) {
            if (z10) {
                i10++;
            }
        }
        return i10;
    }

    public static boolean[] h(boolean[] zArr, int i10, int i11) {
        H.k(i10 >= 0, "Invalid minLength: %s", i10);
        H.k(i11 >= 0, "Invalid padding: %s", i11);
        return zArr.length < i10 ? Arrays.copyOf(zArr, i10 + i11) : zArr;
    }

    @InterfaceC15800a
    public static Comparator<Boolean> i() {
        return b.FALSE_FIRST;
    }

    public static int j(boolean z10) {
        return z10 ? 1231 : 1237;
    }

    public static int k(boolean[] zArr, boolean z10) {
        return l(zArr, z10, 0, zArr.length);
    }

    public static int l(boolean[] zArr, boolean z10, int i10, int i11) {
        while (i10 < i11) {
            if (zArr[i10] == z10) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0023, code lost:
    
        r0 = r0 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int m(boolean[] zArr, boolean[] zArr2) {
        H.F(zArr, "array");
        H.F(zArr2, TypedValues.AttributesType.S_TARGET);
        if (zArr2.length == 0) {
            return 0;
        }
        int i10 = 0;
        while (i10 < (zArr.length - zArr2.length) + 1) {
            for (int i11 = 0; i11 < zArr2.length; i11++) {
                if (zArr[i10 + i11] != zArr2[i11]) {
                    break;
                }
            }
            return i10;
        }
        return -1;
    }

    public static String n(String str, boolean... zArr) {
        H.E(str);
        if (zArr.length == 0) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder(zArr.length * 7);
        sb2.append(zArr[0]);
        for (int i10 = 1; i10 < zArr.length; i10++) {
            sb2.append(str);
            sb2.append(zArr[i10]);
        }
        return sb2.toString();
    }

    public static int o(boolean[] zArr, boolean z10) {
        return p(zArr, z10, 0, zArr.length);
    }

    public static int p(boolean[] zArr, boolean z10, int i10, int i11) {
        for (int i12 = i11 - 1; i12 >= i10; i12--) {
            if (zArr[i12] == z10) {
                return i12;
            }
        }
        return -1;
    }

    public static Comparator<boolean[]> q() {
        return c.INSTANCE;
    }

    public static void r(boolean[] zArr) {
        H.E(zArr);
        s(zArr, 0, zArr.length);
    }

    public static void s(boolean[] zArr, int i10, int i11) {
        H.E(zArr);
        H.f0(i10, i11, zArr.length);
        for (int i12 = i11 - 1; i10 < i12; i12--) {
            boolean z10 = zArr[i10];
            zArr[i10] = zArr[i12];
            zArr[i12] = z10;
            i10++;
        }
    }

    public static boolean[] t(Collection<Boolean> collection) {
        if (collection instanceof C1008a) {
            return ((C1008a) collection).l();
        }
        Object[] array = collection.toArray();
        int length = array.length;
        boolean[] zArr = new boolean[length];
        for (int i10 = 0; i10 < length; i10++) {
            zArr[i10] = ((Boolean) H.E(array[i10])).booleanValue();
        }
        return zArr;
    }

    @InterfaceC15800a
    public static Comparator<Boolean> u() {
        return b.TRUE_FIRST;
    }
}
