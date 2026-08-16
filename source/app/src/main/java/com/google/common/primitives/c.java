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
import kotlin.jvm.internal.C14021s;
import org.eclipse.jdt.internal.core.JavaElement;
import v2.InterfaceC15800a;
import w2.H;

@f
@v2.b(emulated = true)
public final class c {

    public static final int f67011a = 2;

    @v2.b
    public static class a extends AbstractList<Character> implements RandomAccess, Serializable {

        public static final long f67012e = 0;

        public final char[] f67013b;

        public final int f67014c;

        public final int f67015d;

        public a(char[] cArr) {
            this(cArr, 0, cArr.length);
        }

        @Override
        public boolean contains(@CheckForNull Object obj) {
            return (obj instanceof Character) && c.n(this.f67013b, ((Character) obj).charValue(), this.f67014c, this.f67015d) != -1;
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
                if (this.f67013b[this.f67014c + i10] != aVar.f67013b[aVar.f67014c + i10]) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public int hashCode() {
            int i10 = 1;
            for (int i11 = this.f67014c; i11 < this.f67015d; i11++) {
                i10 = (i10 * 31) + c.l(this.f67013b[i11]);
            }
            return i10;
        }

        @Override
        public int indexOf(@CheckForNull Object obj) {
            int n10;
            if (!(obj instanceof Character) || (n10 = c.n(this.f67013b, ((Character) obj).charValue(), this.f67014c, this.f67015d)) < 0) {
                return -1;
            }
            return n10 - this.f67014c;
        }

        @Override
        public boolean isEmpty() {
            return false;
        }

        @Override
        public Character get(int i10) {
            H.C(i10, size());
            return Character.valueOf(this.f67013b[this.f67014c + i10]);
        }

        @Override
        public Character set(int i10, Character ch2) {
            H.C(i10, size());
            char[] cArr = this.f67013b;
            int i11 = this.f67014c;
            char c10 = cArr[i11 + i10];
            cArr[i11 + i10] = ((Character) H.E(ch2)).charValue();
            return Character.valueOf(c10);
        }

        public char[] l() {
            return Arrays.copyOfRange(this.f67013b, this.f67014c, this.f67015d);
        }

        @Override
        public int lastIndexOf(@CheckForNull Object obj) {
            int r10;
            if (!(obj instanceof Character) || (r10 = c.r(this.f67013b, ((Character) obj).charValue(), this.f67014c, this.f67015d)) < 0) {
                return -1;
            }
            return r10 - this.f67014c;
        }

        @Override
        public int size() {
            return this.f67015d - this.f67014c;
        }

        @Override
        public List<Character> subList(int i10, int i11) {
            H.f0(i10, i11, size());
            if (i10 == i11) {
                return Collections.emptyList();
            }
            char[] cArr = this.f67013b;
            int i12 = this.f67014c;
            return new a(cArr, i10 + i12, i12 + i11);
        }

        @Override
        public String toString() {
            StringBuilder sb2 = new StringBuilder(size() * 3);
            sb2.append('[');
            sb2.append(this.f67013b[this.f67014c]);
            int i10 = this.f67014c;
            while (true) {
                i10++;
                if (i10 >= this.f67015d) {
                    sb2.append(JavaElement.JEM_TYPE_PARAMETER);
                    return sb2.toString();
                }
                sb2.append(", ");
                sb2.append(this.f67013b[i10]);
            }
        }

        public a(char[] cArr, int i10, int i11) {
            this.f67013b = cArr;
            this.f67014c = i10;
            this.f67015d = i11;
        }
    }

    public enum b implements Comparator<char[]> {
        INSTANCE;

        @Override
        public int compare(char[] cArr, char[] cArr2) {
            int min = Math.min(cArr.length, cArr2.length);
            for (int i10 = 0; i10 < min; i10++) {
                int e10 = c.e(cArr[i10], cArr2[i10]);
                if (e10 != 0) {
                    return e10;
                }
            }
            return cArr.length - cArr2.length;
        }

        @Override
        public String toString() {
            return "Chars.lexicographicalComparator()";
        }
    }

    public static char[] A(Collection<Character> collection) {
        if (collection instanceof a) {
            return ((a) collection).l();
        }
        Object[] array = collection.toArray();
        int length = array.length;
        char[] cArr = new char[length];
        for (int i10 = 0; i10 < length; i10++) {
            cArr[i10] = ((Character) H.E(array[i10])).charValue();
        }
        return cArr;
    }

    @v2.c
    public static byte[] B(char c10) {
        return new byte[]{(byte) (c10 >> '\b'), (byte) c10};
    }

    public static List<Character> c(char... cArr) {
        return cArr.length == 0 ? Collections.emptyList() : new a(cArr);
    }

    public static char d(long j10) {
        char c10 = (char) j10;
        H.p(((long) c10) == j10, "Out of range: %s", j10);
        return c10;
    }

    public static int e(char c10, char c11) {
        return c10 - c11;
    }

    public static char[] f(char[]... cArr) {
        int i10 = 0;
        for (char[] cArr2 : cArr) {
            i10 += cArr2.length;
        }
        char[] cArr3 = new char[i10];
        int i11 = 0;
        for (char[] cArr4 : cArr) {
            System.arraycopy(cArr4, 0, cArr3, i11, cArr4.length);
            i11 += cArr4.length;
        }
        return cArr3;
    }

    @InterfaceC15800a
    public static char g(char c10, char c11, char c12) {
        H.g(c11 <= c12, "min (%s) must be less than or equal to max (%s)", c11, c12);
        return c10 < c11 ? c11 : c10 < c12 ? c10 : c12;
    }

    public static boolean h(char[] cArr, char c10) {
        for (char c11 : cArr) {
            if (c11 == c10) {
                return true;
            }
        }
        return false;
    }

    public static char[] i(char[] cArr, int i10, int i11) {
        H.k(i10 >= 0, "Invalid minLength: %s", i10);
        H.k(i11 >= 0, "Invalid padding: %s", i11);
        return cArr.length < i10 ? Arrays.copyOf(cArr, i10 + i11) : cArr;
    }

    @v2.c
    public static char j(byte[] bArr) {
        H.m(bArr.length >= 2, "array too small: %s < %s", bArr.length, 2);
        return k(bArr[0], bArr[1]);
    }

    @v2.c
    public static char k(byte b10, byte b11) {
        return (char) ((b10 << 8) | (b11 & 255));
    }

    public static int l(char c10) {
        return c10;
    }

    public static int m(char[] cArr, char c10) {
        return n(cArr, c10, 0, cArr.length);
    }

    public static int n(char[] cArr, char c10, int i10, int i11) {
        while (i10 < i11) {
            if (cArr[i10] == c10) {
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
    public static int o(char[] cArr, char[] cArr2) {
        H.F(cArr, "array");
        H.F(cArr2, TypedValues.AttributesType.S_TARGET);
        if (cArr2.length == 0) {
            return 0;
        }
        int i10 = 0;
        while (i10 < (cArr.length - cArr2.length) + 1) {
            for (int i11 = 0; i11 < cArr2.length; i11++) {
                if (cArr[i10 + i11] != cArr2[i11]) {
                    break;
                }
            }
            return i10;
        }
        return -1;
    }

    public static String p(String str, char... cArr) {
        H.E(str);
        int length = cArr.length;
        if (length == 0) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder((str.length() * (length - 1)) + length);
        sb2.append(cArr[0]);
        for (int i10 = 1; i10 < length; i10++) {
            sb2.append(str);
            sb2.append(cArr[i10]);
        }
        return sb2.toString();
    }

    public static int q(char[] cArr, char c10) {
        return r(cArr, c10, 0, cArr.length);
    }

    public static int r(char[] cArr, char c10, int i10, int i11) {
        for (int i12 = i11 - 1; i12 >= i10; i12--) {
            if (cArr[i12] == c10) {
                return i12;
            }
        }
        return -1;
    }

    public static Comparator<char[]> s() {
        return b.INSTANCE;
    }

    public static char t(char... cArr) {
        H.d(cArr.length > 0);
        char c10 = cArr[0];
        for (int i10 = 1; i10 < cArr.length; i10++) {
            char c11 = cArr[i10];
            if (c11 > c10) {
                c10 = c11;
            }
        }
        return c10;
    }

    public static char u(char... cArr) {
        H.d(cArr.length > 0);
        char c10 = cArr[0];
        for (int i10 = 1; i10 < cArr.length; i10++) {
            char c11 = cArr[i10];
            if (c11 < c10) {
                c10 = c11;
            }
        }
        return c10;
    }

    public static void v(char[] cArr) {
        H.E(cArr);
        w(cArr, 0, cArr.length);
    }

    public static void w(char[] cArr, int i10, int i11) {
        H.E(cArr);
        H.f0(i10, i11, cArr.length);
        for (int i12 = i11 - 1; i10 < i12; i12--) {
            char c10 = cArr[i10];
            cArr[i10] = cArr[i12];
            cArr[i12] = c10;
            i10++;
        }
    }

    public static char x(long j10) {
        if (j10 > Sg.b.f23266s) {
            return C14021s.f95775c;
        }
        if (j10 < 0) {
            return (char) 0;
        }
        return (char) j10;
    }

    public static void y(char[] cArr) {
        H.E(cArr);
        z(cArr, 0, cArr.length);
    }

    public static void z(char[] cArr, int i10, int i11) {
        H.E(cArr);
        H.f0(i10, i11, cArr.length);
        Arrays.sort(cArr, i10, i11);
        w(cArr, i10, i11);
    }
}
