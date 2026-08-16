package F2;

import java.io.Serializable;
import javax.annotation.CheckForNull;
import org.eclipse.jdt.internal.core.JavaElement;
import w2.AbstractC15885e;
import w2.B;
import w2.H;
import w2.P;

@v2.b
@a
@I2.j
public final class b implements Serializable {

    public static final int f6138e = -1;

    public static final long f6139f = 0;

    public final String f6140b;

    public final int f6141c;

    public final boolean f6142d;

    public b(String str, int i10, boolean z10) {
        this.f6140b = str;
        this.f6141c = i10;
        this.f6142d = z10;
    }

    public static b a(String str) {
        b c10 = c(str);
        H.u(!c10.h(), "Host has a port: %s", str);
        return c10;
    }

    public static b b(String str, int i10) {
        H.k(i(i10), "Port out of range: %s", i10);
        b c10 = c(str);
        H.u(!c10.h(), "Host has a port: %s", str);
        return new b(c10.f6140b, i10, c10.f6142d);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0042  */
    @I2.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static b c(String str) {
        String str2;
        boolean z10;
        String str3;
        String substring;
        H.E(str);
        int i10 = -1;
        if (!str.startsWith("[")) {
            int indexOf = str.indexOf(58);
            if (indexOf >= 0) {
                int i11 = indexOf + 1;
                if (str.indexOf(58, i11) == -1) {
                    substring = str.substring(0, indexOf);
                    str3 = str.substring(i11);
                }
            }
            str2 = str;
            z10 = indexOf >= 0;
            str3 = null;
            if (!P.d(str3)) {
                H.u(!str3.startsWith("+") && AbstractC15885e.f().C(str3), "Unparseable port number: %s", str);
                try {
                    i10 = Integer.parseInt(str3);
                    H.u(i(i10), "Port number out of range: %s", str);
                } catch (NumberFormatException unused) {
                    throw new IllegalArgumentException(str.length() != 0 ? "Unparseable port number: ".concat(str) : new String("Unparseable port number: "));
                }
            }
            return new b(str2, i10, z10);
        }
        String[] e10 = e(str);
        substring = e10[0];
        str3 = e10[1];
        str2 = substring;
        z10 = false;
        if (!P.d(str3)) {
        }
        return new b(str2, i10, z10);
    }

    public static String[] e(String str) {
        H.u(str.charAt(0) == '[', "Bracketed host-port string must start with a bracket: %s", str);
        int indexOf = str.indexOf(58);
        int lastIndexOf = str.lastIndexOf(93);
        H.u(indexOf > -1 && lastIndexOf > indexOf, "Invalid bracketed host/port: %s", str);
        String substring = str.substring(1, lastIndexOf);
        int i10 = lastIndexOf + 1;
        if (i10 == str.length()) {
            return new String[]{substring, ""};
        }
        H.u(str.charAt(i10) == ':', "Only a colon may follow a close bracket: %s", str);
        int i11 = lastIndexOf + 2;
        for (int i12 = i11; i12 < str.length(); i12++) {
            H.u(Character.isDigit(str.charAt(i12)), "Port must be numeric: %s", str);
        }
        return new String[]{substring, str.substring(i11)};
    }

    public static boolean i(int i10) {
        return i10 >= 0 && i10 <= 65535;
    }

    public String d() {
        return this.f6140b;
    }

    public boolean equals(@CheckForNull Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return B.a(this.f6140b, bVar.f6140b) && this.f6141c == bVar.f6141c;
    }

    public int f() {
        H.g0(h());
        return this.f6141c;
    }

    public int g(int i10) {
        return h() ? this.f6141c : i10;
    }

    public boolean h() {
        return this.f6141c >= 0;
    }

    public int hashCode() {
        return B.b(this.f6140b, Integer.valueOf(this.f6141c));
    }

    @I2.a
    public b j() {
        H.u(!this.f6142d, "Possible bracketless IPv6 literal: %s", this.f6140b);
        return this;
    }

    public b k(int i10) {
        H.d(i(i10));
        return h() ? this : new b(this.f6140b, i10, this.f6142d);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder(this.f6140b.length() + 8);
        if (this.f6140b.indexOf(58) >= 0) {
            sb2.append('[');
            sb2.append(this.f6140b);
            sb2.append(JavaElement.JEM_TYPE_PARAMETER);
        } else {
            sb2.append(this.f6140b);
        }
        if (h()) {
            sb2.append(':');
            sb2.append(this.f6141c);
        }
        return sb2.toString();
    }
}
