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
@v2.b
public final class n {

    public static final int f67060a = 8;

    public static final long f67061b = 4611686018427387904L;

    public static final class a {

        public static final byte[] f67062a;

        static {
            byte[] bArr = new byte[128];
            Arrays.fill(bArr, (byte) -1);
            for (int i10 = 0; i10 < 10; i10++) {
                bArr[i10 + 48] = (byte) i10;
            }
            for (int i11 = 0; i11 < 26; i11++) {
                byte b10 = (byte) (i11 + 10);
                bArr[i11 + 65] = b10;
                bArr[i11 + 97] = b10;
            }
            f67062a = bArr;
        }

        public static int a(char c10) {
            if (c10 < '\u0080') {
                return f67062a[c10];
            }
            return -1;
        }
    }

    public enum b implements Comparator<long[]> {
        INSTANCE;

        @Override
        public int compare(long[] jArr, long[] jArr2) {
            int min = Math.min(jArr.length, jArr2.length);
            for (int i10 = 0; i10 < min; i10++) {
                int d10 = n.d(jArr[i10], jArr2[i10]);
                if (d10 != 0) {
                    return d10;
                }
            }
            return jArr.length - jArr2.length;
        }

        @Override
        public String toString() {
            return "Longs.lexicographicalComparator()";
        }
    }

    @v2.b
    public static class c extends AbstractList<Long> implements RandomAccess, Serializable {

        public static final long f67063e = 0;

        public final long[] f67064b;

        public final int f67065c;

        public final int f67066d;

        public c(long[] jArr) {
            this(jArr, 0, jArr.length);
        }

        @Override
        public boolean contains(@CheckForNull Object obj) {
            return (obj instanceof Long) && n.m(this.f67064b, ((Long) obj).longValue(), this.f67065c, this.f67066d) != -1;
        }

        @Override
        public boolean equals(@CheckForNull Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof c)) {
                return super.equals(obj);
            }
            c cVar = (c) obj;
            int size = size();
            if (cVar.size() != size) {
                return false;
            }
            for (int i10 = 0; i10 < size; i10++) {
                if (this.f67064b[this.f67065c + i10] != cVar.f67064b[cVar.f67065c + i10]) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public int hashCode() {
            int i10 = 1;
            for (int i11 = this.f67065c; i11 < this.f67066d; i11++) {
                i10 = (i10 * 31) + n.k(this.f67064b[i11]);
            }
            return i10;
        }

        @Override
        public int indexOf(@CheckForNull Object obj) {
            int m10;
            if (!(obj instanceof Long) || (m10 = n.m(this.f67064b, ((Long) obj).longValue(), this.f67065c, this.f67066d)) < 0) {
                return -1;
            }
            return m10 - this.f67065c;
        }

        @Override
        public boolean isEmpty() {
            return false;
        }

        @Override
        public Long get(int i10) {
            H.C(i10, size());
            return Long.valueOf(this.f67064b[this.f67065c + i10]);
        }

        @Override
        public Long set(int i10, Long l10) {
            H.C(i10, size());
            long[] jArr = this.f67064b;
            int i11 = this.f67065c;
            long j10 = jArr[i11 + i10];
            jArr[i11 + i10] = ((Long) H.E(l10)).longValue();
            return Long.valueOf(j10);
        }

        public long[] l() {
            return Arrays.copyOfRange(this.f67064b, this.f67065c, this.f67066d);
        }

        @Override
        public int lastIndexOf(@CheckForNull Object obj) {
            int q10;
            if (!(obj instanceof Long) || (q10 = n.q(this.f67064b, ((Long) obj).longValue(), this.f67065c, this.f67066d)) < 0) {
                return -1;
            }
            return q10 - this.f67065c;
        }

        @Override
        public int size() {
            return this.f67066d - this.f67065c;
        }

        @Override
        public List<Long> subList(int i10, int i11) {
            H.f0(i10, i11, size());
            if (i10 == i11) {
                return Collections.emptyList();
            }
            long[] jArr = this.f67064b;
            int i12 = this.f67065c;
            return new c(jArr, i10 + i12, i12 + i11);
        }

        @Override
        public String toString() {
            StringBuilder sb2 = new StringBuilder(size() * 10);
            sb2.append('[');
            sb2.append(this.f67064b[this.f67065c]);
            int i10 = this.f67065c;
            while (true) {
                i10++;
                if (i10 >= this.f67066d) {
                    sb2.append(JavaElement.JEM_TYPE_PARAMETER);
                    return sb2.toString();
                }
                sb2.append(", ");
                sb2.append(this.f67064b[i10]);
            }
        }

        public c(long[] jArr, int i10, int i11) {
            this.f67064b = jArr;
            this.f67065c = i10;
            this.f67066d = i11;
        }
    }

    public static final class d extends AbstractC15892i<String, Long> implements Serializable {

        public static final d f67067d = new d();

        public static final long f67068e = 1;

        private Object r() {
            return f67067d;
        }

        @Override
        public String g(Long l10) {
            return l10.toString();
        }

        @Override
        public Long i(String str) {
            return Long.decode(str);
        }

        public String toString() {
            return "Longs.stringConverter()";
        }
    }

    public static byte[] A(long j10) {
        byte[] bArr = new byte[8];
        for (int i10 = 7; i10 >= 0; i10--) {
            bArr[i10] = (byte) (255 & j10);
            j10 >>= 8;
        }
        return bArr;
    }

    @CheckForNull
    @InterfaceC15800a
    public static Long B(String str) {
        return C(str, 10);
    }

    @CheckForNull
    @InterfaceC15800a
    public static Long C(String str, int i10) {
        if (((String) H.E(str)).isEmpty()) {
            return null;
        }
        if (i10 < 2 || i10 > 36) {
            StringBuilder sb2 = new StringBuilder(65);
            sb2.append("radix must be between MIN_RADIX and MAX_RADIX but was ");
            sb2.append(i10);
            throw new IllegalArgumentException(sb2.toString());
        }
        int i11 = str.charAt(0) == '-' ? 1 : 0;
        if (i11 == str.length()) {
            return null;
        }
        int i12 = i11 + 1;
        int a10 = a.a(str.charAt(i11));
        if (a10 < 0 || a10 >= i10) {
            return null;
        }
        long j10 = -a10;
        long j11 = i10;
        long j12 = Long.MIN_VALUE / j11;
        while (i12 < str.length()) {
            int i13 = i12 + 1;
            int a11 = a.a(str.charAt(i12));
            if (a11 < 0 || a11 >= i10 || j10 < j12) {
                return null;
            }
            long j13 = j10 * j11;
            long j14 = a11;
            if (j13 < j14 - Long.MIN_VALUE) {
                return null;
            }
            j10 = j13 - j14;
            i12 = i13;
        }
        if (i11 != 0) {
            return Long.valueOf(j10);
        }
        if (j10 == Long.MIN_VALUE) {
            return null;
        }
        return Long.valueOf(-j10);
    }

    public static List<Long> c(long... jArr) {
        return jArr.length == 0 ? Collections.emptyList() : new c(jArr);
    }

    public static int d(long j10, long j11) {
        if (j10 < j11) {
            return -1;
        }
        return j10 > j11 ? 1 : 0;
    }

    public static long[] e(long[]... jArr) {
        int i10 = 0;
        for (long[] jArr2 : jArr) {
            i10 += jArr2.length;
        }
        long[] jArr3 = new long[i10];
        int i11 = 0;
        for (long[] jArr4 : jArr) {
            System.arraycopy(jArr4, 0, jArr3, i11, jArr4.length);
            i11 += jArr4.length;
        }
        return jArr3;
    }

    @InterfaceC15800a
    public static long f(long j10, long j11, long j12) {
        H.s(j11 <= j12, "min (%s) must be less than or equal to max (%s)", j11, j12);
        return Math.min(Math.max(j10, j11), j12);
    }

    public static boolean g(long[] jArr, long j10) {
        for (long j11 : jArr) {
            if (j11 == j10) {
                return true;
            }
        }
        return false;
    }

    public static long[] h(long[] jArr, int i10, int i11) {
        H.k(i10 >= 0, "Invalid minLength: %s", i10);
        H.k(i11 >= 0, "Invalid padding: %s", i11);
        return jArr.length < i10 ? Arrays.copyOf(jArr, i10 + i11) : jArr;
    }

    public static long i(byte[] bArr) {
        H.m(bArr.length >= 8, "array too small: %s < %s", bArr.length, 8);
        return j(bArr[0], bArr[1], bArr[2], bArr[3], bArr[4], bArr[5], bArr[6], bArr[7]);
    }

    public static long j(byte b10, byte b11, byte b12, byte b13, byte b14, byte b15, byte b16, byte b17) {
        return ((b11 & 255) << 48) | ((b10 & 255) << 56) | ((b12 & 255) << 40) | ((b13 & 255) << 32) | ((b14 & 255) << 24) | ((b15 & 255) << 16) | ((b16 & 255) << 8) | (b17 & 255);
    }

    public static int k(long j10) {
        return (int) (j10 ^ (j10 >>> 32));
    }

    public static int l(long[] jArr, long j10) {
        return m(jArr, j10, 0, jArr.length);
    }

    public static int m(long[] jArr, long j10, int i10, int i11) {
        while (i10 < i11) {
            if (jArr[i10] == j10) {
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
    public static int n(long[] jArr, long[] jArr2) {
        H.F(jArr, "array");
        H.F(jArr2, TypedValues.AttributesType.S_TARGET);
        if (jArr2.length == 0) {
            return 0;
        }
        int i10 = 0;
        while (i10 < (jArr.length - jArr2.length) + 1) {
            for (int i11 = 0; i11 < jArr2.length; i11++) {
                if (jArr[i10 + i11] != jArr2[i11]) {
                    break;
                }
            }
            return i10;
        }
        return -1;
    }

    public static String o(String str, long... jArr) {
        H.E(str);
        if (jArr.length == 0) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder(jArr.length * 10);
        sb2.append(jArr[0]);
        for (int i10 = 1; i10 < jArr.length; i10++) {
            sb2.append(str);
            sb2.append(jArr[i10]);
        }
        return sb2.toString();
    }

    public static int p(long[] jArr, long j10) {
        return q(jArr, j10, 0, jArr.length);
    }

    public static int q(long[] jArr, long j10, int i10, int i11) {
        for (int i12 = i11 - 1; i12 >= i10; i12--) {
            if (jArr[i12] == j10) {
                return i12;
            }
        }
        return -1;
    }

    public static Comparator<long[]> r() {
        return b.INSTANCE;
    }

    public static long s(long... jArr) {
        H.d(jArr.length > 0);
        long j10 = jArr[0];
        for (int i10 = 1; i10 < jArr.length; i10++) {
            long j11 = jArr[i10];
            if (j11 > j10) {
                j10 = j11;
            }
        }
        return j10;
    }

    public static long t(long... jArr) {
        H.d(jArr.length > 0);
        long j10 = jArr[0];
        for (int i10 = 1; i10 < jArr.length; i10++) {
            long j11 = jArr[i10];
            if (j11 < j10) {
                j10 = j11;
            }
        }
        return j10;
    }

    public static void u(long[] jArr) {
        H.E(jArr);
        v(jArr, 0, jArr.length);
    }

    public static void v(long[] jArr, int i10, int i11) {
        H.E(jArr);
        H.f0(i10, i11, jArr.length);
        for (int i12 = i11 - 1; i10 < i12; i12--) {
            long j10 = jArr[i10];
            jArr[i10] = jArr[i12];
            jArr[i12] = j10;
            i10++;
        }
    }

    public static void w(long[] jArr) {
        H.E(jArr);
        x(jArr, 0, jArr.length);
    }

    public static void x(long[] jArr, int i10, int i11) {
        H.E(jArr);
        H.f0(i10, i11, jArr.length);
        Arrays.sort(jArr, i10, i11);
        v(jArr, i10, i11);
    }

    @InterfaceC15800a
    public static AbstractC15892i<String, Long> y() {
        return d.f67067d;
    }

    public static long[] z(Collection<? extends Number> collection) {
        if (collection instanceof c) {
            return ((c) collection).l();
        }
        Object[] array = collection.toArray();
        int length = array.length;
        long[] jArr = new long[length];
        for (int i10 = 0; i10 < length; i10++) {
            jArr[i10] = ((Number) H.E(array[i10])).longValue();
        }
        return jArr;
    }
}
