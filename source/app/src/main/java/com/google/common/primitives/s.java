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
import kotlin.jvm.internal.r0;
import org.eclipse.jdt.internal.core.JavaElement;
import v2.InterfaceC15800a;
import w2.AbstractC15892i;
import w2.H;

@f
@v2.b(emulated = true)
public final class s extends t {

    public static final int f67073a = 2;

    public static final short f67074b = 16384;

    public enum a implements Comparator<short[]> {
        INSTANCE;

        @Override
        public int compare(short[] sArr, short[] sArr2) {
            int min = Math.min(sArr.length, sArr2.length);
            for (int i10 = 0; i10 < min; i10++) {
                int e10 = s.e(sArr[i10], sArr2[i10]);
                if (e10 != 0) {
                    return e10;
                }
            }
            return sArr.length - sArr2.length;
        }

        @Override
        public String toString() {
            return "Shorts.lexicographicalComparator()";
        }
    }

    @v2.b
    public static class b extends AbstractList<Short> implements RandomAccess, Serializable {

        public static final long f67075e = 0;

        public final short[] f67076b;

        public final int f67077c;

        public final int f67078d;

        public b(short[] sArr) {
            this(sArr, 0, sArr.length);
        }

        @Override
        public boolean contains(@CheckForNull Object obj) {
            return (obj instanceof Short) && s.n(this.f67076b, ((Short) obj).shortValue(), this.f67077c, this.f67078d) != -1;
        }

        @Override
        public boolean equals(@CheckForNull Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof b)) {
                return super.equals(obj);
            }
            b bVar = (b) obj;
            int size = size();
            if (bVar.size() != size) {
                return false;
            }
            for (int i10 = 0; i10 < size; i10++) {
                if (this.f67076b[this.f67077c + i10] != bVar.f67076b[bVar.f67077c + i10]) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public int hashCode() {
            int i10 = 1;
            for (int i11 = this.f67077c; i11 < this.f67078d; i11++) {
                i10 = (i10 * 31) + s.l(this.f67076b[i11]);
            }
            return i10;
        }

        @Override
        public int indexOf(@CheckForNull Object obj) {
            int n10;
            if (!(obj instanceof Short) || (n10 = s.n(this.f67076b, ((Short) obj).shortValue(), this.f67077c, this.f67078d)) < 0) {
                return -1;
            }
            return n10 - this.f67077c;
        }

        @Override
        public boolean isEmpty() {
            return false;
        }

        @Override
        public Short get(int i10) {
            H.C(i10, size());
            return Short.valueOf(this.f67076b[this.f67077c + i10]);
        }

        @Override
        public Short set(int i10, Short sh2) {
            H.C(i10, size());
            short[] sArr = this.f67076b;
            int i11 = this.f67077c;
            short s10 = sArr[i11 + i10];
            sArr[i11 + i10] = ((Short) H.E(sh2)).shortValue();
            return Short.valueOf(s10);
        }

        public short[] l() {
            return Arrays.copyOfRange(this.f67076b, this.f67077c, this.f67078d);
        }

        @Override
        public int lastIndexOf(@CheckForNull Object obj) {
            int r10;
            if (!(obj instanceof Short) || (r10 = s.r(this.f67076b, ((Short) obj).shortValue(), this.f67077c, this.f67078d)) < 0) {
                return -1;
            }
            return r10 - this.f67077c;
        }

        @Override
        public int size() {
            return this.f67078d - this.f67077c;
        }

        @Override
        public List<Short> subList(int i10, int i11) {
            H.f0(i10, i11, size());
            if (i10 == i11) {
                return Collections.emptyList();
            }
            short[] sArr = this.f67076b;
            int i12 = this.f67077c;
            return new b(sArr, i10 + i12, i12 + i11);
        }

        @Override
        public String toString() {
            StringBuilder sb2 = new StringBuilder(size() * 6);
            sb2.append('[');
            sb2.append((int) this.f67076b[this.f67077c]);
            int i10 = this.f67077c;
            while (true) {
                i10++;
                if (i10 >= this.f67078d) {
                    sb2.append(JavaElement.JEM_TYPE_PARAMETER);
                    return sb2.toString();
                }
                sb2.append(", ");
                sb2.append((int) this.f67076b[i10]);
            }
        }

        public b(short[] sArr, int i10, int i11) {
            this.f67076b = sArr;
            this.f67077c = i10;
            this.f67078d = i11;
        }
    }

    public static final class c extends AbstractC15892i<String, Short> implements Serializable {

        public static final c f67079d = new c();

        public static final long f67080e = 1;

        private Object r() {
            return f67079d;
        }

        @Override
        public String g(Short sh2) {
            return sh2.toString();
        }

        @Override
        public Short i(String str) {
            return Short.decode(str);
        }

        public String toString() {
            return "Shorts.stringConverter()";
        }
    }

    @InterfaceC15800a
    public static AbstractC15892i<String, Short> A() {
        return c.f67079d;
    }

    public static short[] B(Collection<? extends Number> collection) {
        if (collection instanceof b) {
            return ((b) collection).l();
        }
        Object[] array = collection.toArray();
        int length = array.length;
        short[] sArr = new short[length];
        for (int i10 = 0; i10 < length; i10++) {
            sArr[i10] = ((Number) H.E(array[i10])).shortValue();
        }
        return sArr;
    }

    @v2.c
    public static byte[] C(short s10) {
        return new byte[]{(byte) (s10 >> 8), (byte) s10};
    }

    public static List<Short> c(short... sArr) {
        return sArr.length == 0 ? Collections.emptyList() : new b(sArr);
    }

    public static short d(long j10) {
        short s10 = (short) j10;
        H.p(((long) s10) == j10, "Out of range: %s", j10);
        return s10;
    }

    public static int e(short s10, short s11) {
        return s10 - s11;
    }

    public static short[] f(short[]... sArr) {
        int i10 = 0;
        for (short[] sArr2 : sArr) {
            i10 += sArr2.length;
        }
        short[] sArr3 = new short[i10];
        int i11 = 0;
        for (short[] sArr4 : sArr) {
            System.arraycopy(sArr4, 0, sArr3, i11, sArr4.length);
            i11 += sArr4.length;
        }
        return sArr3;
    }

    @InterfaceC15800a
    public static short g(short s10, short s11, short s12) {
        H.m(s11 <= s12, "min (%s) must be less than or equal to max (%s)", s11, s12);
        return s10 < s11 ? s11 : s10 < s12 ? s10 : s12;
    }

    public static boolean h(short[] sArr, short s10) {
        for (short s11 : sArr) {
            if (s11 == s10) {
                return true;
            }
        }
        return false;
    }

    public static short[] i(short[] sArr, int i10, int i11) {
        H.k(i10 >= 0, "Invalid minLength: %s", i10);
        H.k(i11 >= 0, "Invalid padding: %s", i11);
        return sArr.length < i10 ? Arrays.copyOf(sArr, i10 + i11) : sArr;
    }

    @v2.c
    public static short j(byte[] bArr) {
        H.m(bArr.length >= 2, "array too small: %s < %s", bArr.length, 2);
        return k(bArr[0], bArr[1]);
    }

    @v2.c
    public static short k(byte b10, byte b11) {
        return (short) ((b10 << 8) | (b11 & 255));
    }

    public static int l(short s10) {
        return s10;
    }

    public static int m(short[] sArr, short s10) {
        return n(sArr, s10, 0, sArr.length);
    }

    public static int n(short[] sArr, short s10, int i10, int i11) {
        while (i10 < i11) {
            if (sArr[i10] == s10) {
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
    public static int o(short[] sArr, short[] sArr2) {
        H.F(sArr, "array");
        H.F(sArr2, TypedValues.AttributesType.S_TARGET);
        if (sArr2.length == 0) {
            return 0;
        }
        int i10 = 0;
        while (i10 < (sArr.length - sArr2.length) + 1) {
            for (int i11 = 0; i11 < sArr2.length; i11++) {
                if (sArr[i10 + i11] != sArr2[i11]) {
                    break;
                }
            }
            return i10;
        }
        return -1;
    }

    public static String p(String str, short... sArr) {
        H.E(str);
        if (sArr.length == 0) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder(sArr.length * 6);
        sb2.append((int) sArr[0]);
        for (int i10 = 1; i10 < sArr.length; i10++) {
            sb2.append(str);
            sb2.append((int) sArr[i10]);
        }
        return sb2.toString();
    }

    public static int q(short[] sArr, short s10) {
        return r(sArr, s10, 0, sArr.length);
    }

    public static int r(short[] sArr, short s10, int i10, int i11) {
        for (int i12 = i11 - 1; i12 >= i10; i12--) {
            if (sArr[i12] == s10) {
                return i12;
            }
        }
        return -1;
    }

    public static Comparator<short[]> s() {
        return a.INSTANCE;
    }

    @v2.c("Available in GWT! Annotation is to avoid conflict with GWT specialization of base class.")
    public static short t(short... sArr) {
        H.d(sArr.length > 0);
        short s10 = sArr[0];
        for (int i10 = 1; i10 < sArr.length; i10++) {
            short s11 = sArr[i10];
            if (s11 > s10) {
                s10 = s11;
            }
        }
        return s10;
    }

    @v2.c("Available in GWT! Annotation is to avoid conflict with GWT specialization of base class.")
    public static short u(short... sArr) {
        H.d(sArr.length > 0);
        short s10 = sArr[0];
        for (int i10 = 1; i10 < sArr.length; i10++) {
            short s11 = sArr[i10];
            if (s11 < s10) {
                s10 = s11;
            }
        }
        return s10;
    }

    public static void v(short[] sArr) {
        H.E(sArr);
        w(sArr, 0, sArr.length);
    }

    public static void w(short[] sArr, int i10, int i11) {
        H.E(sArr);
        H.f0(i10, i11, sArr.length);
        for (int i12 = i11 - 1; i10 < i12; i12--) {
            short s10 = sArr[i10];
            sArr[i10] = sArr[i12];
            sArr[i12] = s10;
            i10++;
        }
    }

    public static short x(long j10) {
        return j10 > 32767 ? r0.f95770c : j10 < -32768 ? r0.f95769b : (short) j10;
    }

    public static void y(short[] sArr) {
        H.E(sArr);
        z(sArr, 0, sArr.length);
    }

    public static void z(short[] sArr, int i10, int i11) {
        H.E(sArr);
        H.f0(i10, i11, sArr.length);
        Arrays.sort(sArr, i10, i11);
        w(sArr, i10, i11);
    }
}
