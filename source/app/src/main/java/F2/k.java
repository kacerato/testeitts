package F2;

import javax.annotation.CheckForNull;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import w2.H;

@v2.b
@a
public final class k extends y2.l {

    public static final char[] f6466e = {'+'};

    public static final char[] f6467f = "0123456789ABCDEF".toCharArray();

    public final boolean f6468c;

    public final boolean[] f6469d;

    public k(String str, boolean z10) {
        H.E(str);
        if (str.matches(".*[0-9A-Za-z].*")) {
            throw new IllegalArgumentException("Alphanumeric characters are always 'safe' and should not be explicitly specified");
        }
        String concat = str.concat("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789");
        if (z10 && concat.contains(" ")) {
            throw new IllegalArgumentException("plusForSpace cannot be specified when space is a 'safe' character");
        }
        this.f6468c = z10;
        this.f6469d = h(concat);
    }

    public static boolean[] h(String str) {
        char[] charArray = str.toCharArray();
        int i10 = -1;
        for (char c10 : charArray) {
            i10 = Math.max((int) c10, i10);
        }
        boolean[] zArr = new boolean[i10 + 1];
        for (char c11 : charArray) {
            zArr[c11] = true;
        }
        return zArr;
    }

    @Override
    public String b(String str) {
        H.E(str);
        int length = str.length();
        for (int i10 = 0; i10 < length; i10++) {
            char charAt = str.charAt(i10);
            boolean[] zArr = this.f6469d;
            if (charAt >= zArr.length || !zArr[charAt]) {
                return e(str, i10);
            }
        }
        return str;
    }

    @Override
    @CheckForNull
    public char[] d(int i10) {
        boolean[] zArr = this.f6469d;
        if (i10 < zArr.length && zArr[i10]) {
            return null;
        }
        if (i10 == 32 && this.f6468c) {
            return f6466e;
        }
        if (i10 <= 127) {
            char[] cArr = f6467f;
            return new char[]{JavaElement.JEM_PACKAGEDECLARATION, cArr[i10 >>> 4], cArr[i10 & 15]};
        }
        if (i10 <= 2047) {
            char[] cArr2 = f6467f;
            return new char[]{JavaElement.JEM_PACKAGEDECLARATION, cArr2[(i10 >>> 10) | 12], cArr2[(i10 >>> 6) & 15], JavaElement.JEM_PACKAGEDECLARATION, cArr2[((i10 >>> 4) & 3) | 8], cArr2[i10 & 15]};
        }
        if (i10 <= 65535) {
            char[] cArr3 = f6467f;
            return new char[]{JavaElement.JEM_PACKAGEDECLARATION, IIndexConstants.ENUM_SUFFIX, cArr3[i10 >>> 12], JavaElement.JEM_PACKAGEDECLARATION, cArr3[((i10 >>> 10) & 3) | 8], cArr3[(i10 >>> 6) & 15], JavaElement.JEM_PACKAGEDECLARATION, cArr3[((i10 >>> 4) & 3) | 8], cArr3[i10 & 15]};
        }
        if (i10 <= 1114111) {
            char[] cArr4 = f6467f;
            return new char[]{JavaElement.JEM_PACKAGEDECLARATION, 'F', cArr4[(i10 >>> 18) & 7], JavaElement.JEM_PACKAGEDECLARATION, cArr4[((i10 >>> 16) & 3) | 8], cArr4[(i10 >>> 12) & 15], JavaElement.JEM_PACKAGEDECLARATION, cArr4[((i10 >>> 10) & 3) | 8], cArr4[(i10 >>> 6) & 15], JavaElement.JEM_PACKAGEDECLARATION, cArr4[((i10 >>> 4) & 3) | 8], cArr4[i10 & 15]};
        }
        StringBuilder sb2 = new StringBuilder(43);
        sb2.append("Invalid unicode character value ");
        sb2.append(i10);
        throw new IllegalArgumentException(sb2.toString());
    }

    @Override
    public int g(CharSequence charSequence, int i10, int i11) {
        H.E(charSequence);
        while (i10 < i11) {
            char charAt = charSequence.charAt(i10);
            boolean[] zArr = this.f6469d;
            if (charAt >= zArr.length || !zArr[charAt]) {
                break;
            }
            i10++;
        }
        return i10;
    }
}
