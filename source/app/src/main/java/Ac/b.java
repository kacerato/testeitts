package Ac;

import JAVARuntime.OHString;
import androidx.annotation.Nullable;
import com.google.gson.JsonElement;
import com.google.gson.JsonPrimitive;
import vc.i;

public class b extends i {

    public static final int f340e = 0;

    public int f341c;

    public OHString f342d;

    public b() {
        super(0);
        this.f341c = f340e;
    }

    public static int[] F(String pattern) {
        int[] iArr = new int[pattern.length()];
        int i10 = 0;
        for (int i11 = 1; i11 < pattern.length(); i11++) {
            char charAt = pattern.charAt(i11);
            while (i10 > 0 && charAt != pattern.charAt(i10)) {
                i10 = iArr[i10 - 1];
            }
            if (charAt == pattern.charAt(i10)) {
                i10++;
            }
            iArr[i11] = i10;
        }
        return iArr;
    }

    public static boolean H(char c12, char c22) {
        char upperCase;
        char upperCase2;
        return c12 == c22 || (upperCase = Character.toUpperCase(c12)) == (upperCase2 = Character.toUpperCase(c22)) || Character.toLowerCase(upperCase) == Character.toLowerCase(upperCase2);
    }

    public static b J(b ohString) {
        if (ohString != null) {
            return ohString.clone();
        }
        return null;
    }

    public static int K(int prefixHash, int suffixHash, int suffixLength) {
        int i10 = 1;
        for (int i11 = 0; i11 < suffixLength; i11++) {
            i10 *= 31;
        }
        return (prefixHash * i10) + suffixHash;
    }

    public static String K0(b string) {
        if (string == null) {
            return null;
        }
        return string.toString();
    }

    public static b V(JsonElement json) {
        if (json == null) {
            return null;
        }
        if (!json.isJsonPrimitive()) {
            return new b(json.toString());
        }
        String asString = json.getAsJsonPrimitive().getAsString();
        if (asString != null) {
            return new b(asString);
        }
        return null;
    }

    public static int c0(char[] chars, int off, int len) {
        int i10 = 0;
        for (int i11 = 0; i11 < len; i11++) {
            i10 = (i10 * 31) + chars[off + i11];
        }
        return i10;
    }

    public static JsonElement n0(b ohString) {
        if (ohString == null) {
            return null;
        }
        return new JsonPrimitive(ohString.toString());
    }

    public b[] B0(String str) {
        String[] split = toString().split(str);
        b[] bVarArr = new b[split.length];
        for (int i10 = 0; i10 < split.length; i10++) {
            bVarArr[i10] = new b(split[i10]);
        }
        return bVarArr;
    }

    public OHString[] C0(b str) {
        String[] split = toString().split(str.toString());
        OHString[] oHStringArr = new OHString[split.length];
        for (int i10 = 0; i10 < split.length; i10++) {
            oHStringArr[i10] = new OHString(split[i10]);
        }
        return oHStringArr;
    }

    @Override
    public void D(int startIdx) {
        super.D(startIdx);
        i0();
    }

    public OHString[] D0(String str) {
        String[] split = toString().split(str);
        OHString[] oHStringArr = new OHString[split.length];
        for (int i10 = 0; i10 < split.length; i10++) {
            oHStringArr[i10] = new OHString(split[i10]);
        }
        return oHStringArr;
    }

    @Override
    public void E(int startIdx, int endIndex) {
        super.E(startIdx, endIndex);
        i0();
    }

    public String[] E0(String str) {
        return toString().split(str);
    }

    public boolean F0(b str) {
        if (str == null) {
            return false;
        }
        if (str == this || str.q()) {
            return true;
        }
        if (!q() && capacity() >= str.capacity()) {
            return C(str);
        }
        return false;
    }

    public char G(int idx) {
        return get(idx);
    }

    public boolean G0(String str) {
        int length;
        if (str == null) {
            return false;
        }
        if (str.isEmpty()) {
            return true;
        }
        if (q() || capacity() < (length = str.length())) {
            return false;
        }
        for (int i10 = 0; i10 < length; i10++) {
            if (G(i10) != str.charAt(i10)) {
                return false;
            }
        }
        return true;
    }

    public b H0(int startIdx) {
        if (startIdx < 0 || startIdx > capacity()) {
            throw new IndexOutOfBoundsException("startIdx out of bounds");
        }
        int capacity = capacity() - startIdx;
        if (capacity == 0) {
            return new b();
        }
        b bVar = new b(capacity);
        bVar.y(0, this, startIdx, capacity);
        bVar.f341c = d0(startIdx, capacity());
        return bVar;
    }

    public b clone() {
        return new b(this);
    }

    public b I0(int startIdx, int endIndex) {
        if (startIdx < 0 || endIndex < startIdx || endIndex > capacity()) {
            throw new IndexOutOfBoundsException("substring range out of bounds");
        }
        int i10 = endIndex - startIdx;
        if (i10 == 0) {
            return new b();
        }
        b bVar = new b(i10);
        bVar.y(0, this, startIdx, i10);
        bVar.f341c = d0(startIdx, endIndex);
        return bVar;
    }

    public OHString J0() {
        OHString oHString = this.f342d;
        if (oHString != null) {
            return oHString;
        }
        OHString oHString2 = new OHString(this);
        this.f342d = oHString2;
        return oHString2;
    }

    public b L(b str) {
        if (str == null) {
            throw new NullPointerException("str can't be null");
        }
        if (q()) {
            return new b(str);
        }
        if (str.q()) {
            return new b(this);
        }
        b bVar = new b(capacity() + str.h0());
        bVar.position(0);
        bVar.u(this);
        bVar.u(str);
        bVar.f341c = K(this.f341c, str.hashCode(), str.h0());
        return bVar;
    }

    public b L0() {
        int h02 = h0();
        int i10 = 0;
        while (i10 < h02 && G(i10) <= ' ') {
            i10++;
        }
        while (i10 < h02 && G(h02 - 1) <= ' ') {
            h02--;
        }
        return (i10 > 0 || h02 < h0()) ? I0(i10, h02) : this;
    }

    public b M(String str) {
        if (str == null) {
            throw new NullPointerException("str can't be null");
        }
        if (q()) {
            return new b(str);
        }
        if (str.isEmpty()) {
            return new b(this);
        }
        b bVar = new b(capacity() + str.length());
        bVar.position(0);
        bVar.u(this);
        bVar.put(str.toCharArray());
        bVar.f341c = K(this.f341c, str.hashCode(), str.length());
        return bVar;
    }

    public b N(b str) {
        if (str == null) {
            throw new NullPointerException("str can't be null");
        }
        if (q()) {
            return new b(str);
        }
        if (str.q()) {
            return new b(this);
        }
        b bVar = new b(capacity() + str.h0());
        bVar.position(0);
        bVar.u(str);
        bVar.u(this);
        bVar.f341c = K(str.hashCode(), this.f341c, h0());
        return bVar;
    }

    public b O(String str) {
        if (str == null) {
            throw new NullPointerException("str can't be null");
        }
        if (q()) {
            return new b(str);
        }
        if (str.isEmpty()) {
            return new b(this);
        }
        b bVar = new b(capacity() + str.length());
        bVar.position(0);
        bVar.put(str.toCharArray());
        bVar.u(this);
        bVar.f341c = K(str.hashCode(), this.f341c, h0());
        return bVar;
    }

    public void P(b str) {
        if (str == null || str.q()) {
            return;
        }
        int i10 = this.f341c;
        super.e(str);
        this.f341c = K(i10, str.hashCode(), str.h0());
    }

    public void Q(String str) {
        if (str == null || str.length() <= 0) {
            return;
        }
        super.f(str.toCharArray());
        this.f341c = K(this.f341c, str.hashCode(), str.length());
    }

    public void S(b str) {
        if (str == null || str.q()) {
            return;
        }
        int h02 = h0();
        int i10 = this.f341c;
        super.h(str);
        this.f341c = K(str.hashCode(), i10, h02);
    }

    public void T(String str) {
        if (str == null || str.length() <= 0) {
            return;
        }
        char[] charArray = str.toCharArray();
        int h02 = h0();
        int i10 = this.f341c;
        super.i(charArray);
        this.f341c = K(str.hashCode(), i10, h02);
    }

    public boolean U(b str) {
        return (str == null || g0() || str.g0() || p(str) < 0) ? false : true;
    }

    public boolean W(b str) {
        if (str == null) {
            return false;
        }
        if (str == this) {
            return true;
        }
        if (q() && str.q()) {
            return true;
        }
        return k(str);
    }

    public boolean X(String str) {
        if (str == null) {
            return false;
        }
        if (q() && str.isEmpty()) {
            return true;
        }
        int length = str.length();
        if (super.capacity() != length) {
            return false;
        }
        for (int i10 = 0; i10 < length; i10++) {
            if (G(i10) != str.charAt(i10)) {
                return false;
            }
        }
        return true;
    }

    public boolean Y(b str) {
        if (str == null) {
            return false;
        }
        if (str == this) {
            return true;
        }
        if (q() && str.q()) {
            return true;
        }
        return l(str);
    }

    public boolean Z(String str) {
        if (str == null) {
            return false;
        }
        if (q() && str.isEmpty()) {
            return true;
        }
        int length = str.length();
        if (super.capacity() != length) {
            return false;
        }
        for (int i10 = 0; i10 < length; i10++) {
            if (!H(G(i10), str.charAt(i10))) {
                return false;
            }
        }
        return true;
    }

    public boolean a0(b str) {
        return !W(str);
    }

    public boolean b0(String str) {
        return !X(str);
    }

    public boolean contains(String str) {
        return (str == null || g0() || str.isEmpty() || f0(str) < 0) ? false : true;
    }

    public final int d0(int startIdx, int endIdx) {
        int i10 = 0;
        while (startIdx < endIdx) {
            i10 = (i10 * 31) + G(startIdx);
            startIdx++;
        }
        return i10;
    }

    public int e0(b str) {
        if (str == null) {
            throw new NullPointerException("str can't be null");
        }
        if (g0() || str.g0()) {
            return -1;
        }
        return p(str);
    }

    public boolean equals(@Nullable Object obj) {
        return obj instanceof b ? W((b) obj) : super.equals(obj);
    }

    public int f0(String str) {
        int capacity;
        if (str == null) {
            throw new NullPointerException("str can't be null");
        }
        int length = str.length();
        if (g0() || length == 0 || (capacity = capacity()) < length) {
            return -1;
        }
        int[] F10 = F(str);
        int i10 = 0;
        for (int i11 = 0; i11 < capacity; i11++) {
            char G10 = G(i11);
            while (i10 > 0 && G10 != str.charAt(i10)) {
                i10 = F10[i10 - 1];
            }
            if (G10 == str.charAt(i10) && (i10 = i10 + 1) == length) {
                return (i11 - length) + 1;
            }
        }
        return -1;
    }

    public boolean g0() {
        return capacity() == 0;
    }

    public int h0() {
        return capacity();
    }

    @Override
    public int hashCode() {
        return this.f341c;
    }

    public final void i0() {
        this.f341c = d0(0, h0());
    }

    public b j0(b str, b replacement) {
        return new b(toString().replace(str.toString(), replacement.toString()));
    }

    public b k0(String str, String replacement) {
        return new b(toString().replace(str, replacement));
    }

    public void l0(b str, b replacement) {
        u0(toString().replace(str.toString(), replacement.toString()));
    }

    public void m0(String str, String replacement) {
        u0(toString().replace(str, replacement));
    }

    public void o0(char str) {
        u0("" + str);
    }

    public void p0(double str) {
        u0("" + str);
    }

    public void q0(float str) {
        u0("" + str);
    }

    public void r0(int str) {
        u0("" + str);
    }

    public void s0(long str) {
        u0("" + str);
    }

    public void t0(b str) {
        if (str.g0()) {
            z();
            this.f341c = f340e;
            return;
        }
        super.w(str.capacity(), false);
        super.position(0);
        super.u(str);
        super.position(0);
        this.f341c = str.hashCode();
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder(super.capacity());
        int capacity = super.capacity();
        for (int i10 = 0; i10 < capacity; i10++) {
            sb2.append(get(i10));
        }
        return sb2.toString();
    }

    public void u0(String str) {
        if (str.isEmpty()) {
            z();
            this.f341c = f340e;
        } else {
            super.w(str.length(), false);
            super.position(0);
            super.put(str.toCharArray());
            this.f341c = str.hashCode();
        }
    }

    public void v0(short str) {
        u0("" + ((int) str));
    }

    public void w0(boolean str) {
        u0(str ? "true" : "false");
    }

    public void x0(char[] cbuf, int off, int len) {
        if (len <= 0) {
            z();
            this.f341c = f340e;
        } else {
            super.w(len, false);
            super.position(0);
            super.set(0, cbuf, off, len);
            this.f341c = c0(cbuf, off, len);
        }
    }

    public void y0(OHString run) {
        this.f342d = run;
    }

    public b[] z0(b str) {
        String[] split = toString().split(str.toString());
        b[] bVarArr = new b[split.length];
        for (int i10 = 0; i10 < split.length; i10++) {
            bVarArr[i10] = new b(split[i10]);
        }
        return bVarArr;
    }

    public b(int capacity) {
        super(capacity);
        this.f341c = String.valueOf(capacity).hashCode();
    }

    public b(String str) {
        super(str.length());
        if (!str.isEmpty()) {
            super.position(0);
            super.put(str.toCharArray());
        }
        this.f341c = str.hashCode();
    }

    public b(b str) {
        super(str.capacity());
        if (!str.g0()) {
            super.position(0);
            super.u(str);
        }
        this.f341c = str.hashCode();
    }

    public b(char[] cbuf, int off, int len) {
        super(len);
        if (len > 0) {
            super.position(0);
            super.set(0, cbuf, off, len);
        }
        this.f341c = c0(cbuf, off, len);
    }

    public b(char[] cbuf) {
        this(cbuf, 0, cbuf.length);
    }
}
