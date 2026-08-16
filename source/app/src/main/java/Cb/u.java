package cb;

import android.provider.ContactsContract;
import b2.C3835d;
import com.tonyodev.fetch2.util.FetchDefaults;
import eg.C13143u0;
import java.util.Arrays;
import org.apache.commons.math3.distribution.PoissonDistribution;

public class u implements Appendable, CharSequence {

    public static final int f34690d = 16;

    public static final char[] f34691e = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9'};

    public char[] f34692b;

    public int f34693c;

    public u() {
        this.f34692b = new char[16];
    }

    public static int o0(int value, int radix) {
        int i10 = value < 0 ? 2 : 1;
        while (true) {
            value /= radix;
            if (value == 0) {
                return i10;
            }
            i10++;
        }
    }

    public static int p0(long value, int radix) {
        int i10 = value < 0 ? 2 : 1;
        while (true) {
            value /= radix;
            if (value == 0) {
                return i10;
            }
            i10++;
        }
    }

    public final void A() {
        int i10 = this.f34693c + 4;
        if (i10 > this.f34692b.length) {
            L(i10);
        }
        char[] cArr = this.f34692b;
        int i11 = this.f34693c;
        int i12 = i11 + 1;
        this.f34693c = i12;
        cArr[i11] = 'n';
        int i13 = i11 + 2;
        this.f34693c = i13;
        cArr[i12] = 'u';
        int i14 = i11 + 3;
        this.f34693c = i14;
        cArr[i13] = 'l';
        this.f34693c = i11 + 4;
        cArr[i14] = 'l';
    }

    public String A0(int start, int end) {
        if (start < 0 || start > end || end > this.f34693c) {
            throw new StringIndexOutOfBoundsException();
        }
        return start == end ? "" : new String(this.f34692b, start, end - start);
    }

    public int B() {
        return this.f34692b.length;
    }

    public String B0() {
        String uVar = toString();
        clear();
        return uVar;
    }

    public int C(int index) {
        int i10;
        if (index < 0 || index >= (i10 = this.f34693c)) {
            throw new StringIndexOutOfBoundsException(index);
        }
        return Character.codePointAt(this.f34692b, index, i10);
    }

    public void C0() {
        int i10 = this.f34693c;
        char[] cArr = this.f34692b;
        if (i10 < cArr.length) {
            char[] cArr2 = new char[i10];
            System.arraycopy(cArr, 0, cArr2, 0, i10);
            this.f34692b = cArr2;
        }
    }

    public int D(int index) {
        if (index < 1 || index > this.f34693c) {
            throw new StringIndexOutOfBoundsException(index);
        }
        return Character.codePointBefore(this.f34692b, index);
    }

    public int E(int beginIndex, int endIndex) {
        if (beginIndex < 0 || endIndex > this.f34693c || beginIndex > endIndex) {
            throw new StringIndexOutOfBoundsException();
        }
        return Character.codePointCount(this.f34692b, beginIndex, endIndex - beginIndex);
    }

    public boolean F(String subString) {
        return R(subString, 0) != -1;
    }

    public boolean G(String subString) {
        return S(subString, 0) != -1;
    }

    public u H(int start, int end) {
        I(start, end);
        return this;
    }

    public final void I(int start, int end) {
        if (start >= 0) {
            int i10 = this.f34693c;
            if (end > i10) {
                end = i10;
            }
            if (end == start) {
                return;
            }
            if (end > start) {
                int i11 = i10 - end;
                if (i11 >= 0) {
                    char[] cArr = this.f34692b;
                    System.arraycopy(cArr, end, cArr, start, i11);
                }
                this.f34693c -= end - start;
                return;
            }
        }
        throw new StringIndexOutOfBoundsException();
    }

    public u J(int index) {
        K(index);
        return this;
    }

    public final void K(int location) {
        int i10;
        if (location < 0 || location >= (i10 = this.f34693c)) {
            throw new StringIndexOutOfBoundsException(location);
        }
        int i11 = (i10 - location) - 1;
        if (i11 > 0) {
            char[] cArr = this.f34692b;
            System.arraycopy(cArr, location + 1, cArr, location, i11);
        }
        this.f34693c--;
    }

    public final void L(int min) {
        char[] cArr = this.f34692b;
        int length = (cArr.length >> 1) + cArr.length + 2;
        if (min <= length) {
            min = length;
        }
        char[] cArr2 = new char[min];
        System.arraycopy(cArr, 0, cArr2, 0, this.f34693c);
        this.f34692b = cArr2;
    }

    public void M(int min) {
        char[] cArr = this.f34692b;
        if (min > cArr.length) {
            int length = (cArr.length << 1) + 2;
            if (length > min) {
                min = length;
            }
            L(min);
        }
    }

    public boolean N(@j u other) {
        int i10;
        if (this == other) {
            return true;
        }
        if (other == null || (i10 = this.f34693c) != other.f34693c) {
            return false;
        }
        char[] cArr = this.f34692b;
        char[] cArr2 = other.f34692b;
        for (int i11 = 0; i11 < i10; i11++) {
            char c10 = cArr[i11];
            char upperCase = Character.toUpperCase(cArr2[i11]);
            if (c10 != upperCase && c10 != Character.toLowerCase(upperCase)) {
                return false;
            }
        }
        return true;
    }

    public boolean O(@j String other) {
        int i10;
        if (other == null || (i10 = this.f34693c) != other.length()) {
            return false;
        }
        char[] cArr = this.f34692b;
        for (int i11 = 0; i11 < i10; i11++) {
            char c10 = cArr[i11];
            char upperCase = Character.toUpperCase(other.charAt(i11));
            if (c10 != upperCase && c10 != Character.toLowerCase(upperCase)) {
                return false;
            }
        }
        return true;
    }

    public final char[] P() {
        return this.f34692b;
    }

    public int Q(String string) {
        return R(string, 0);
    }

    public int R(String subString, int start) {
        if (start < 0) {
            start = 0;
        }
        int length = subString.length();
        if (length == 0) {
            int i10 = this.f34693c;
            return (start < i10 || start == 0) ? start : i10;
        }
        int i11 = this.f34693c - length;
        if (start > i11) {
            return -1;
        }
        char charAt = subString.charAt(0);
        while (start <= i11) {
            if (this.f34692b[start] == charAt) {
                int i12 = start;
                int i13 = 0;
                do {
                    i13++;
                    if (i13 >= length) {
                        break;
                    }
                    i12++;
                } while (this.f34692b[i12] == subString.charAt(i13));
                if (i13 == length) {
                    return start;
                }
            }
            start++;
        }
        return -1;
    }

    public int S(String subString, int start) {
        char c10;
        char upperCase;
        if (start < 0) {
            start = 0;
        }
        int length = subString.length();
        if (length == 0) {
            int i10 = this.f34693c;
            return (start < i10 || start == 0) ? start : i10;
        }
        int i11 = this.f34693c - length;
        if (start > i11) {
            return -1;
        }
        char upperCase2 = Character.toUpperCase(subString.charAt(0));
        char lowerCase = Character.toLowerCase(upperCase2);
        while (start <= i11) {
            char c11 = this.f34692b[start];
            if (c11 == upperCase2 || c11 == lowerCase) {
                int i12 = start;
                int i13 = 0;
                while (true) {
                    i13++;
                    if (i13 >= length || ((c10 = this.f34692b[(i12 = i12 + 1)]) != (upperCase = Character.toUpperCase(subString.charAt(i13))) && c10 != Character.toLowerCase(upperCase))) {
                        break;
                    }
                }
                if (i13 == length) {
                    return start;
                }
            }
            start++;
        }
        return -1;
    }

    public u T(int offset, char c10) {
        f0(offset, c10);
        return this;
    }

    public u U(int offset, double d10) {
        h0(offset, Double.toString(d10));
        return this;
    }

    public u V(int offset, float f10) {
        h0(offset, Float.toString(f10));
        return this;
    }

    public u W(int offset, int i10) {
        h0(offset, Integer.toString(i10));
        return this;
    }

    public u X(int offset, long l10) {
        h0(offset, Long.toString(l10));
        return this;
    }

    public u Y(int offset, CharSequence s10) {
        h0(offset, s10 == null ? "null" : s10.toString());
        return this;
    }

    public u Z(int offset, CharSequence s10, int start, int end) {
        g0(offset, s10, start, end);
        return this;
    }

    @Override
    public u append(char c10) {
        t(c10);
        return this;
    }

    public u a0(int offset, Object obj) {
        h0(offset, obj == null ? "null" : obj.toString());
        return this;
    }

    public u b(double d10) {
        v(Double.toString(d10));
        return this;
    }

    public u b0(int offset, String str) {
        h0(offset, str);
        return this;
    }

    public u c(float f10) {
        v(Float.toString(f10));
        return this;
    }

    public u c0(int offset, boolean b10) {
        h0(offset, b10 ? "true" : "false");
        return this;
    }

    @Override
    public char charAt(int index) {
        if (index < 0 || index >= this.f34693c) {
            throw new StringIndexOutOfBoundsException(index);
        }
        return this.f34692b[index];
    }

    public void clear() {
        this.f34693c = 0;
    }

    public u d(int value) {
        return e(value, 0);
    }

    public u d0(int offset, char[] ch2) {
        i0(offset, ch2);
        return this;
    }

    public u e(int value, int minLength) {
        return f(value, minLength, '0');
    }

    public u e0(int offset, char[] str, int strOffset, int strLen) {
        j0(offset, str, strOffset, strLen);
        return this;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        u uVar = (u) obj;
        int i10 = this.f34693c;
        if (i10 != uVar.f34693c) {
            return false;
        }
        char[] cArr = this.f34692b;
        char[] cArr2 = uVar.f34692b;
        for (int i11 = 0; i11 < i10; i11++) {
            if (cArr[i11] != cArr2[i11]) {
                return false;
            }
        }
        return true;
    }

    public u f(int value, final int minLength, final char prefix) {
        if (value == Integer.MIN_VALUE) {
            v("-2147483648");
            return this;
        }
        if (value < 0) {
            t('-');
            value = -value;
        }
        if (minLength > 1) {
            for (int o02 = minLength - o0(value, 10); o02 > 0; o02--) {
                append(prefix);
            }
        }
        if (value >= 10000) {
            if (value >= 1000000000) {
                t(f34691e[(int) ((value % 10000000000L) / ContactsContract.Directory.ENTERPRISE_DEFAULT)]);
            }
            if (value >= 100000000) {
                t(f34691e[(value % 1000000000) / 100000000]);
            }
            if (value >= 10000000) {
                t(f34691e[(value % 100000000) / PoissonDistribution.DEFAULT_MAX_ITERATIONS]);
            }
            if (value >= 1000000) {
                t(f34691e[(value % PoissonDistribution.DEFAULT_MAX_ITERATIONS) / 1000000]);
            }
            if (value >= 100000) {
                t(f34691e[(value % 1000000) / 100000]);
            }
            t(f34691e[(value % 100000) / 10000]);
        }
        if (value >= 1000) {
            t(f34691e[(value % 10000) / 1000]);
        }
        if (value >= 100) {
            t(f34691e[(value % 1000) / 100]);
        }
        if (value >= 10) {
            t(f34691e[(value % 100) / 10]);
        }
        t(f34691e[value % 10]);
        return this;
    }

    public final void f0(int index, char ch2) {
        if (index < 0 || index > this.f34693c) {
            throw new ArrayIndexOutOfBoundsException(index);
        }
        m0(1, index);
        this.f34692b[index] = ch2;
        this.f34693c++;
    }

    public u g(long value) {
        return h(value, 0);
    }

    public final void g0(int index, CharSequence s10, int start, int end) {
        if (s10 == null) {
            s10 = "null";
        }
        if (index < 0 || index > this.f34693c || start < 0 || end < 0 || start > end || end > s10.length()) {
            throw new IndexOutOfBoundsException();
        }
        h0(index, s10.subSequence(start, end).toString());
    }

    @Override
    public void getChars(int start, int end, char[] dest, int destStart) {
        int i10 = this.f34693c;
        if (start > i10 || end > i10 || start > end) {
            throw new StringIndexOutOfBoundsException();
        }
        System.arraycopy(this.f34692b, start, dest, destStart, end - start);
    }

    public u h(long value, int minLength) {
        return i(value, minLength, '0');
    }

    public final void h0(int index, String string) {
        if (index < 0 || index > this.f34693c) {
            throw new StringIndexOutOfBoundsException(index);
        }
        if (string == null) {
            string = "null";
        }
        int length = string.length();
        if (length != 0) {
            m0(length, index);
            string.getChars(0, length, this.f34692b, index);
            this.f34693c += length;
        }
    }

    public int hashCode() {
        int i10 = this.f34693c + 31;
        for (int i11 = 0; i11 < this.f34693c; i11++) {
            i10 = (i10 * 31) + this.f34692b[i11];
        }
        return i10;
    }

    public u i(long value, int minLength, char prefix) {
        if (value == Long.MIN_VALUE) {
            v("-9223372036854775808");
            return this;
        }
        if (value < 0) {
            t('-');
            value = -value;
        }
        if (minLength > 1) {
            for (int p02 = minLength - p0(value, 10); p02 > 0; p02--) {
                append(prefix);
            }
        }
        if (value >= FetchDefaults.DEFAULT_NOTIFICATION_TIMEOUT_AFTER) {
            if (value >= 1000000000000000000L) {
                t(f34691e[(int) ((value % 1.0E19d) / 1.0E18d)]);
            }
            if (value >= 100000000000000000L) {
                t(f34691e[(int) ((value % 1000000000000000000L) / 100000000000000000L)]);
            }
            if (value >= 10000000000000000L) {
                t(f34691e[(int) ((value % 100000000000000000L) / 10000000000000000L)]);
            }
            if (value >= 1000000000000000L) {
                t(f34691e[(int) ((value % 10000000000000000L) / 1000000000000000L)]);
            }
            if (value >= 100000000000000L) {
                t(f34691e[(int) ((value % 1000000000000000L) / 100000000000000L)]);
            }
            if (value >= 10000000000000L) {
                t(f34691e[(int) ((value % 100000000000000L) / 10000000000000L)]);
            }
            if (value >= C3835d.f32898d) {
                t(f34691e[(int) ((value % 10000000000000L) / C3835d.f32898d)]);
            }
            if (value >= 100000000000L) {
                t(f34691e[(int) ((value % C3835d.f32898d) / 100000000000L)]);
            }
            if (value >= 10000000000L) {
                t(f34691e[(int) ((value % 100000000000L) / 10000000000L)]);
            }
            if (value >= ContactsContract.Directory.ENTERPRISE_DEFAULT) {
                t(f34691e[(int) ((value % 10000000000L) / ContactsContract.Directory.ENTERPRISE_DEFAULT)]);
            }
            if (value >= 100000000) {
                t(f34691e[(int) ((value % ContactsContract.Directory.ENTERPRISE_DEFAULT) / 100000000)]);
            }
            if (value >= 10000000) {
                t(f34691e[(int) ((value % 100000000) / 10000000)]);
            }
            if (value >= C13143u0.f85788e) {
                t(f34691e[(int) ((value % 10000000) / C13143u0.f85788e)]);
            }
            if (value >= 100000) {
                t(f34691e[(int) ((value % C13143u0.f85788e) / 100000)]);
            }
            t(f34691e[(int) ((value % 100000) / FetchDefaults.DEFAULT_NOTIFICATION_TIMEOUT_AFTER)]);
        }
        if (value >= 1000) {
            t(f34691e[(int) ((value % FetchDefaults.DEFAULT_NOTIFICATION_TIMEOUT_AFTER) / 1000)]);
        }
        if (value >= 100) {
            t(f34691e[(int) ((value % 1000) / 100)]);
        }
        if (value >= 10) {
            t(f34691e[(int) ((value % 100) / 10)]);
        }
        t(f34691e[(int) (value % 10)]);
        return this;
    }

    public final void i0(int index, char[] value) {
        if (index < 0 || index > this.f34693c) {
            throw new StringIndexOutOfBoundsException(index);
        }
        if (value.length != 0) {
            m0(value.length, index);
            System.arraycopy(value, 0, value, index, value.length);
            this.f34693c += value.length;
        }
    }

    @Override
    public boolean isEmpty() {
        return this.f34693c == 0;
    }

    public u j(u builder) {
        if (builder == null) {
            A();
        } else {
            x(builder.f34692b, 0, builder.f34693c);
        }
        return this;
    }

    public final void j0(int index, char[] value, int start, int length) {
        if (index < 0 || index > length) {
            throw new StringIndexOutOfBoundsException(index);
        }
        if (start >= 0 && length >= 0 && length <= value.length - start) {
            if (length != 0) {
                m0(length, index);
                System.arraycopy(value, start, this.f34692b, index, length);
                this.f34693c += length;
                return;
            }
            return;
        }
        throw new StringIndexOutOfBoundsException("offset " + start + ", length " + length + ", char[].length " + value.length);
    }

    public u k(u builder, int start, int end) {
        if (builder == null) {
            A();
        } else {
            x(builder.f34692b, start, end);
        }
        return this;
    }

    public int k0(String string) {
        return l0(string, this.f34693c);
    }

    @Override
    public u append(CharSequence csq) {
        if (csq == null) {
            A();
        } else if (csq instanceof u) {
            u uVar = (u) csq;
            x(uVar.f34692b, 0, uVar.f34693c);
        } else {
            v(csq.toString());
        }
        return this;
    }

    public int l0(String subString, int start) {
        int length = subString.length();
        int i10 = this.f34693c;
        if (length > i10 || start < 0) {
            return -1;
        }
        if (length <= 0) {
            return start < i10 ? start : i10;
        }
        if (start > i10 - length) {
            start = i10 - length;
        }
        char charAt = subString.charAt(0);
        while (start >= 0) {
            if (this.f34692b[start] == charAt) {
                int i11 = start;
                int i12 = 0;
                do {
                    i12++;
                    if (i12 >= length) {
                        break;
                    }
                    i11++;
                } while (this.f34692b[i11] == subString.charAt(i12));
                if (i12 == length) {
                    return start;
                }
                start--;
            } else {
                start--;
            }
        }
        return -1;
    }

    @Override
    public int length() {
        return this.f34693c;
    }

    @Override
    public u append(CharSequence csq, int start, int end) {
        u(csq, start, end);
        return this;
    }

    public final void m0(int size, int index) {
        char[] cArr = this.f34692b;
        int length = cArr.length;
        int i10 = this.f34693c;
        if (length - i10 >= size) {
            System.arraycopy(cArr, index, cArr, size + index, i10 - index);
            return;
        }
        int i11 = i10 + size;
        int length2 = (cArr.length << 1) + 2;
        if (i11 <= length2) {
            i11 = length2;
        }
        char[] cArr2 = new char[i11];
        System.arraycopy(cArr, 0, cArr2, 0, index);
        System.arraycopy(this.f34692b, index, cArr2, size + index, this.f34693c - index);
        this.f34692b = cArr2;
    }

    public u n(Object obj) {
        if (obj == null) {
            A();
        } else {
            v(obj.toString());
        }
        return this;
    }

    public boolean n0() {
        return this.f34693c != 0;
    }

    public u o(String str) {
        v(str);
        return this;
    }

    public u p(String str, String separator) {
        if (this.f34693c > 0) {
            v(separator);
        }
        v(str);
        return this;
    }

    public u q(boolean b10) {
        v(b10 ? "true" : "false");
        return this;
    }

    public int q0(int index, int codePointOffset) {
        return Character.offsetByCodePoints(this.f34692b, 0, this.f34693c, index, codePointOffset);
    }

    public u r(char[] ch2) {
        w(ch2);
        return this;
    }

    public u r0(char find, String replace) {
        int length = replace.length();
        int i10 = 0;
        while (i10 != this.f34693c) {
            if (this.f34692b[i10] == find) {
                u0(i10, i10 + 1, replace);
                i10 += length;
            } else {
                i10++;
            }
        }
        return this;
    }

    public u s(char[] str, int offset, int len) {
        x(str, offset, len);
        return this;
    }

    public u s0(int start, int end, String str) {
        u0(start, end, str);
        return this;
    }

    @Override
    public CharSequence subSequence(int start, int end) {
        return A0(start, end);
    }

    public final void t(char ch2) {
        int i10 = this.f34693c;
        if (i10 == this.f34692b.length) {
            L(i10 + 1);
        }
        char[] cArr = this.f34692b;
        int i11 = this.f34693c;
        this.f34693c = i11 + 1;
        cArr[i11] = ch2;
    }

    public u t0(String find, String replace) {
        int length = find.length();
        int length2 = replace.length();
        int i10 = 0;
        while (true) {
            int R10 = R(find, i10);
            if (R10 == -1) {
                return this;
            }
            u0(R10, R10 + length, replace);
            i10 = R10 + length2;
        }
    }

    @Override
    public String toString() {
        int i10 = this.f34693c;
        return i10 == 0 ? "" : new String(this.f34692b, 0, i10);
    }

    public final void u(CharSequence s10, int start, int end) {
        if (s10 == null) {
            s10 = "null";
        }
        if (start < 0 || end < 0 || start > end || end > s10.length()) {
            throw new IndexOutOfBoundsException();
        }
        v(s10.subSequence(start, end).toString());
    }

    public final void u0(int start, int end, String string) {
        if (start >= 0) {
            int i10 = this.f34693c;
            if (end > i10) {
                end = i10;
            }
            if (end > start) {
                int length = string.length();
                int i11 = (end - start) - length;
                if (i11 > 0) {
                    char[] cArr = this.f34692b;
                    System.arraycopy(cArr, end, cArr, start + length, this.f34693c - end);
                } else if (i11 < 0) {
                    m0(-i11, end);
                }
                string.getChars(0, length, this.f34692b, start);
                this.f34693c -= i11;
                return;
            }
            if (start == end) {
                string.getClass();
                h0(start, string);
                return;
            }
        }
        throw new StringIndexOutOfBoundsException();
    }

    public final void v(String string) {
        if (string == null) {
            A();
            return;
        }
        int length = string.length();
        int i10 = this.f34693c + length;
        if (i10 > this.f34692b.length) {
            L(i10);
        }
        string.getChars(0, length, this.f34692b, this.f34693c);
        this.f34693c = i10;
    }

    public u v0() {
        w0();
        return this;
    }

    public final void w(char[] value) {
        int length = this.f34693c + value.length;
        if (length > this.f34692b.length) {
            L(length);
        }
        System.arraycopy(value, 0, this.f34692b, this.f34693c, value.length);
        this.f34693c = length;
    }

    public final void w0() {
        int i10;
        int i11 = this.f34693c;
        if (i11 < 2) {
            return;
        }
        int i12 = i11 - 1;
        char[] cArr = this.f34692b;
        char c10 = cArr[0];
        char c11 = cArr[i12];
        int i13 = i11 / 2;
        int i14 = 0;
        boolean z10 = true;
        boolean z11 = true;
        while (i14 < i13) {
            char[] cArr2 = this.f34692b;
            int i15 = i14 + 1;
            char c12 = cArr2[i15];
            int i16 = i12 - 1;
            char c13 = cArr2[i16];
            boolean z12 = z10 && c12 >= '\udc00' && c12 <= '\udfff' && c10 >= '\ud800' && c10 <= '\udbff';
            if (z12 && this.f34693c < 3) {
                return;
            }
            if (z12 == (z11 && c13 >= '\ud800' && c13 <= '\udbff' && c11 >= '\udc00' && c11 <= '\udfff')) {
                if (z12) {
                    cArr2[i12] = c12;
                    cArr2[i16] = c10;
                    cArr2[i14] = c13;
                    cArr2[i15] = c11;
                    char c14 = cArr2[i14 + 2];
                    c11 = cArr2[i12 - 2];
                    i12--;
                    c10 = c14;
                    i14 = i15;
                } else {
                    cArr2[i12] = c10;
                    cArr2[i14] = c11;
                    c10 = c12;
                    c11 = c13;
                }
                i10 = 1;
                z10 = true;
            } else if (z12) {
                cArr2[i12] = c12;
                cArr2[i14] = c11;
                c11 = c13;
                i10 = 1;
                z10 = false;
            } else {
                cArr2[i12] = c10;
                cArr2[i14] = c13;
                c10 = c12;
                i10 = 1;
                z10 = true;
                z11 = false;
                i14 += i10;
                i12--;
            }
            z11 = true;
            i14 += i10;
            i12--;
        }
        if ((this.f34693c & 1) == 1) {
            if (z10 && z11) {
                return;
            }
            char[] cArr3 = this.f34692b;
            if (!z10) {
                c11 = c10;
            }
            cArr3[i12] = c11;
        }
    }

    public final void x(char[] value, int offset, int length) {
        if (offset > value.length || offset < 0) {
            throw new ArrayIndexOutOfBoundsException("Offset out of bounds: " + offset);
        }
        if (length < 0 || value.length - offset < length) {
            throw new ArrayIndexOutOfBoundsException("Length out of bounds: " + length);
        }
        int i10 = this.f34693c + length;
        if (i10 > this.f34692b.length) {
            L(i10);
        }
        System.arraycopy(value, offset, this.f34692b, this.f34693c, length);
        this.f34693c = i10;
    }

    public void x0(int index, char ch2) {
        if (index < 0 || index >= this.f34693c) {
            throw new StringIndexOutOfBoundsException(index);
        }
        this.f34692b[index] = ch2;
    }

    public u y(int codePoint) {
        w(Character.toChars(codePoint));
        return this;
    }

    public void y0(int newLength) {
        if (newLength < 0) {
            throw new StringIndexOutOfBoundsException(newLength);
        }
        char[] cArr = this.f34692b;
        if (newLength > cArr.length) {
            L(newLength);
        } else {
            int i10 = this.f34693c;
            if (i10 < newLength) {
                Arrays.fill(cArr, i10, newLength, (char) 0);
            }
        }
        this.f34693c = newLength;
    }

    public u z(String str) {
        v(str);
        t('\n');
        return this;
    }

    public String z0(int start) {
        int i10;
        if (start < 0 || start > (i10 = this.f34693c)) {
            throw new StringIndexOutOfBoundsException(start);
        }
        return start == i10 ? "" : new String(this.f34692b, start, i10 - start);
    }

    public u(int capacity) {
        if (capacity >= 0) {
            this.f34692b = new char[capacity];
            return;
        }
        throw new NegativeArraySizeException();
    }

    public u(CharSequence seq) {
        this(seq.toString());
    }

    public u(u builder) {
        int i10 = builder.f34693c;
        this.f34693c = i10;
        char[] cArr = new char[i10 + 16];
        this.f34692b = cArr;
        System.arraycopy(builder.f34692b, 0, cArr, 0, i10);
    }

    public u(String string) {
        int length = string.length();
        this.f34693c = length;
        char[] cArr = new char[length + 16];
        this.f34692b = cArr;
        string.getChars(0, length, cArr, 0);
    }
}
