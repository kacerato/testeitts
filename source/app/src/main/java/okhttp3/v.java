package okhttp3;

import Tg.C3089c;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import javax.annotation.Nullable;
import okhttp3.internal.publicsuffix.PublicSuffixDatabase;
import org.eclipse.jdt.internal.core.ClasspathEntry;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import qe.C15075d;

public final class v {

    public static final char[] f99446j = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', IIndexConstants.ANNOTATION_TYPE_SUFFIX, 'B', 'C', 'D', IIndexConstants.ENUM_SUFFIX, 'F'};

    public static final String f99447k = " \"':;<=>@[]^`{}|/\\?#";

    public static final String f99448l = " \"':;<=>@[]^`{}|/\\?#";

    public static final String f99449m = " \"<>^`{}|/\\?#";

    public static final String f99450n = "[]";

    public static final String f99451o = " \"'<>#";

    public static final String f99452p = " \"'<>#&=";

    public static final String f99453q = " !\"#$&'(),/:;<=>?@[]\\^`{|}~";

    public static final String f99454r = "\\^`{|}";

    public static final String f99455s = " \"':;<=>@[]^`{}|/\\?#&!$(),~";

    public static final String f99456t = "";

    public static final String f99457u = " \"#<>\\^`{|}";

    public final String f99458a;

    public final String f99459b;

    public final String f99460c;

    public final String f99461d;

    public final int f99462e;

    public final List<String> f99463f;

    @Nullable
    public final List<String> f99464g;

    @Nullable
    public final String f99465h;

    public final String f99466i;

    public static final class a {

        public static final String f99467i = "Invalid URL host";

        @Nullable
        public String f99468a;

        @Nullable
        public String f99471d;

        public final List<String> f99473f;

        @Nullable
        public List<String> f99474g;

        @Nullable
        public String f99475h;

        public String f99469b = "";

        public String f99470c = "";

        public int f99472e = -1;

        public a() {
            ArrayList arrayList = new ArrayList();
            this.f99473f = arrayList;
            arrayList.add("");
        }

        public static int I(String str, int i10, int i11) {
            if (i11 - i10 < 2) {
                return -1;
            }
            char charAt = str.charAt(i10);
            if ((charAt >= 'a' && charAt <= 'z') || (charAt >= 'A' && charAt <= 'Z')) {
                while (true) {
                    i10++;
                    if (i10 >= i11) {
                        break;
                    }
                    char charAt2 = str.charAt(i10);
                    if (charAt2 < 'a' || charAt2 > 'z') {
                        if (charAt2 < 'A' || charAt2 > 'Z') {
                            if (charAt2 < '0' || charAt2 > '9') {
                                if (charAt2 != '+' && charAt2 != '-' && charAt2 != '.') {
                                    if (charAt2 == ':') {
                                        return i10;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            return -1;
        }

        public static int N(String str, int i10, int i11) {
            int i12 = 0;
            while (i10 < i11) {
                char charAt = str.charAt(i10);
                if (charAt != '\\' && charAt != '/') {
                    break;
                }
                i12++;
                i10++;
            }
            return i12;
        }

        public static String i(String str, int i10, int i11) {
            return Gg.c.d(v.z(str, i10, i11, false));
        }

        public static int u(String str, int i10, int i11) {
            int parseInt;
            try {
                parseInt = Integer.parseInt(v.a(str, i10, i11, "", false, false, false, true, null));
            } catch (NumberFormatException unused) {
            }
            if (parseInt <= 0 || parseInt > 65535) {
                return -1;
            }
            return parseInt;
        }

        public static int y(String str, int i10, int i11) {
            while (i10 < i11) {
                char charAt = str.charAt(i10);
                if (charAt == ':') {
                    return i10;
                }
                if (charAt != '[') {
                    i10++;
                }
                do {
                    i10++;
                    if (i10 < i11) {
                    }
                    i10++;
                } while (str.charAt(i10) != ']');
                i10++;
            }
            return i11;
        }

        public a A(@Nullable String str) {
            this.f99474g = str != null ? v.M(v.b(str, v.f99451o, false, false, true, true)) : null;
            return this;
        }

        public a B() {
            int size = this.f99473f.size();
            for (int i10 = 0; i10 < size; i10++) {
                this.f99473f.set(i10, v.b(this.f99473f.get(i10), v.f99450n, true, true, false, true));
            }
            List<String> list = this.f99474g;
            if (list != null) {
                int size2 = list.size();
                for (int i11 = 0; i11 < size2; i11++) {
                    String str = this.f99474g.get(i11);
                    if (str != null) {
                        this.f99474g.set(i11, v.b(str, v.f99454r, true, true, true, true));
                    }
                }
            }
            String str2 = this.f99475h;
            if (str2 != null) {
                this.f99475h = v.b(str2, v.f99457u, true, true, false, false);
            }
            return this;
        }

        public final void C(String str) {
            for (int size = this.f99474g.size() - 2; size >= 0; size -= 2) {
                if (str.equals(this.f99474g.get(size))) {
                    this.f99474g.remove(size + 1);
                    this.f99474g.remove(size);
                    if (this.f99474g.isEmpty()) {
                        this.f99474g = null;
                        return;
                    }
                }
            }
        }

        public a D(String str) {
            if (str == null) {
                throw new NullPointerException("encodedName == null");
            }
            if (this.f99474g == null) {
                return this;
            }
            C(v.b(str, v.f99452p, true, false, true, true));
            return this;
        }

        public a E(String str) {
            if (str == null) {
                throw new NullPointerException("name == null");
            }
            if (this.f99474g == null) {
                return this;
            }
            C(v.b(str, v.f99453q, false, false, true, true));
            return this;
        }

        public a F(int i10) {
            this.f99473f.remove(i10);
            if (this.f99473f.isEmpty()) {
                this.f99473f.add("");
            }
            return this;
        }

        public final void G(String str, int i10, int i11) {
            if (i10 == i11) {
                return;
            }
            char charAt = str.charAt(i10);
            if (charAt == '/' || charAt == '\\') {
                this.f99473f.clear();
                this.f99473f.add("");
                i10++;
            } else {
                List<String> list = this.f99473f;
                list.set(list.size() - 1, "");
            }
            while (true) {
                int i12 = i10;
                if (i12 >= i11) {
                    return;
                }
                i10 = Gg.c.p(str, i12, i11, "/\\");
                boolean z10 = i10 < i11;
                z(str, i12, i10, z10, true);
                if (z10) {
                    i10++;
                }
            }
        }

        public a H(String str) {
            if (str == null) {
                throw new NullPointerException("scheme == null");
            }
            if (str.equalsIgnoreCase("http")) {
                this.f99468a = "http";
            } else {
                if (!str.equalsIgnoreCase(C15075d.f106134a)) {
                    throw new IllegalArgumentException("unexpected scheme: " + str);
                }
                this.f99468a = C15075d.f106134a;
            }
            return this;
        }

        public a J(int i10, String str) {
            if (str == null) {
                throw new NullPointerException("encodedPathSegment == null");
            }
            String a10 = v.a(str, 0, str.length(), v.f99449m, true, false, false, true, null);
            this.f99473f.set(i10, a10);
            if (!r(a10) && !s(a10)) {
                return this;
            }
            throw new IllegalArgumentException("unexpected path segment: " + str);
        }

        public a K(String str, @Nullable String str2) {
            D(str);
            c(str, str2);
            return this;
        }

        public a L(int i10, String str) {
            if (str == null) {
                throw new NullPointerException("pathSegment == null");
            }
            String a10 = v.a(str, 0, str.length(), v.f99449m, false, false, false, true, null);
            if (!r(a10) && !s(a10)) {
                this.f99473f.set(i10, a10);
                return this;
            }
            throw new IllegalArgumentException("unexpected path segment: " + str);
        }

        public a M(String str, @Nullable String str2) {
            E(str);
            g(str, str2);
            return this;
        }

        public a O(String str) {
            if (str == null) {
                throw new NullPointerException("username == null");
            }
            this.f99469b = v.b(str, " \"':;<=>@[]^`{}|/\\?#", false, false, false, true);
            return this;
        }

        public a a(String str) {
            if (str == null) {
                throw new NullPointerException("encodedPathSegment == null");
            }
            z(str, 0, str.length(), false, true);
            return this;
        }

        public a b(String str) {
            if (str != null) {
                return f(str, true);
            }
            throw new NullPointerException("encodedPathSegments == null");
        }

        public a c(String str, @Nullable String str2) {
            if (str == null) {
                throw new NullPointerException("encodedName == null");
            }
            if (this.f99474g == null) {
                this.f99474g = new ArrayList();
            }
            this.f99474g.add(v.b(str, v.f99452p, true, false, true, true));
            this.f99474g.add(str2 != null ? v.b(str2, v.f99452p, true, false, true, true) : null);
            return this;
        }

        public a d(String str) {
            if (str == null) {
                throw new NullPointerException("pathSegment == null");
            }
            z(str, 0, str.length(), false, false);
            return this;
        }

        public a e(String str) {
            if (str != null) {
                return f(str, false);
            }
            throw new NullPointerException("pathSegments == null");
        }

        public final a f(String str, boolean z10) {
            int i10 = 0;
            do {
                int p10 = Gg.c.p(str, i10, str.length(), "/\\");
                z(str, i10, p10, p10 < str.length(), z10);
                i10 = p10 + 1;
            } while (i10 <= str.length());
            return this;
        }

        public a g(String str, @Nullable String str2) {
            if (str == null) {
                throw new NullPointerException("name == null");
            }
            if (this.f99474g == null) {
                this.f99474g = new ArrayList();
            }
            this.f99474g.add(v.b(str, v.f99453q, false, false, true, true));
            this.f99474g.add(str2 != null ? v.b(str2, v.f99453q, false, false, true, true) : null);
            return this;
        }

        public v h() {
            if (this.f99468a == null) {
                throw new IllegalStateException("scheme == null");
            }
            if (this.f99471d != null) {
                return new v(this);
            }
            throw new IllegalStateException("host == null");
        }

        public int j() {
            int i10 = this.f99472e;
            return i10 != -1 ? i10 : v.e(this.f99468a);
        }

        public a k(@Nullable String str) {
            this.f99475h = str != null ? v.b(str, "", true, false, false, false) : null;
            return this;
        }

        public a l(String str) {
            if (str == null) {
                throw new NullPointerException("encodedPassword == null");
            }
            this.f99470c = v.b(str, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true);
            return this;
        }

        public a m(String str) {
            if (str == null) {
                throw new NullPointerException("encodedPath == null");
            }
            if (str.startsWith("/")) {
                G(str, 0, str.length());
                return this;
            }
            throw new IllegalArgumentException("unexpected encodedPath: " + str);
        }

        public a n(@Nullable String str) {
            this.f99474g = str != null ? v.M(v.b(str, v.f99451o, true, false, true, true)) : null;
            return this;
        }

        public a o(String str) {
            if (str == null) {
                throw new NullPointerException("encodedUsername == null");
            }
            this.f99469b = v.b(str, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true);
            return this;
        }

        public a p(@Nullable String str) {
            this.f99475h = str != null ? v.b(str, "", false, false, false, false) : null;
            return this;
        }

        public a q(String str) {
            if (str == null) {
                throw new NullPointerException("host == null");
            }
            String i10 = i(str, 0, str.length());
            if (i10 != null) {
                this.f99471d = i10;
                return this;
            }
            throw new IllegalArgumentException("unexpected host: " + str);
        }

        public final boolean r(String str) {
            return str.equals(".") || str.equalsIgnoreCase("%2e");
        }

        public final boolean s(String str) {
            return str.equals(ClasspathEntry.DOT_DOT) || str.equalsIgnoreCase("%2e.") || str.equalsIgnoreCase(".%2e") || str.equalsIgnoreCase("%2e%2e");
        }

        public a t(@Nullable v vVar, String str) {
            int p10;
            int i10;
            int F10 = Gg.c.F(str, 0, str.length());
            int G10 = Gg.c.G(str, F10, str.length());
            int I10 = I(str, F10, G10);
            if (I10 != -1) {
                if (str.regionMatches(true, F10, "https:", 0, 6)) {
                    this.f99468a = C15075d.f106134a;
                    F10 += 6;
                } else {
                    if (!str.regionMatches(true, F10, "http:", 0, 5)) {
                        throw new IllegalArgumentException("Expected URL scheme 'http' or 'https' but was '" + str.substring(0, I10) + "'");
                    }
                    this.f99468a = "http";
                    F10 += 5;
                }
            } else {
                if (vVar == null) {
                    throw new IllegalArgumentException("Expected URL scheme 'http' or 'https' but no colon was found");
                }
                this.f99468a = vVar.f99458a;
            }
            int N10 = N(str, F10, G10);
            char c10 = '?';
            char c11 = JavaElement.JEM_IMPORTDECLARATION;
            if (N10 >= 2 || vVar == null || !vVar.f99458a.equals(this.f99468a)) {
                boolean z10 = false;
                boolean z11 = false;
                int i11 = F10 + N10;
                while (true) {
                    p10 = Gg.c.p(str, i11, G10, "@/\\?#");
                    char charAt = p10 != G10 ? str.charAt(p10) : '\uffff';
                    if (charAt == '\uffff' || charAt == c11 || charAt == '/' || charAt == '\\' || charAt == c10) {
                        break;
                    }
                    if (charAt == '@') {
                        if (z10) {
                            i10 = p10;
                            this.f99470c += "%40" + v.a(str, i11, i10, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true, null);
                        } else {
                            int o10 = Gg.c.o(str, i11, p10, ':');
                            i10 = p10;
                            String a10 = v.a(str, i11, o10, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true, null);
                            if (z11) {
                                a10 = this.f99469b + "%40" + a10;
                            }
                            this.f99469b = a10;
                            if (o10 != i10) {
                                this.f99470c = v.a(str, o10 + 1, i10, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true, null);
                                z10 = true;
                            }
                            z11 = true;
                        }
                        i11 = i10 + 1;
                    }
                    c10 = '?';
                    c11 = JavaElement.JEM_IMPORTDECLARATION;
                }
                int y10 = y(str, i11, p10);
                int i12 = y10 + 1;
                if (i12 < p10) {
                    this.f99471d = i(str, i11, y10);
                    int u10 = u(str, i12, p10);
                    this.f99472e = u10;
                    if (u10 == -1) {
                        throw new IllegalArgumentException("Invalid URL port: \"" + str.substring(i12, p10) + '\"');
                    }
                } else {
                    this.f99471d = i(str, i11, y10);
                    this.f99472e = v.e(this.f99468a);
                }
                if (this.f99471d == null) {
                    throw new IllegalArgumentException("Invalid URL host: \"" + str.substring(i11, y10) + '\"');
                }
                F10 = p10;
            } else {
                this.f99469b = vVar.k();
                this.f99470c = vVar.g();
                this.f99471d = vVar.f99461d;
                this.f99472e = vVar.f99462e;
                this.f99473f.clear();
                this.f99473f.addAll(vVar.i());
                if (F10 == G10 || str.charAt(F10) == '#') {
                    n(vVar.j());
                }
            }
            int p11 = Gg.c.p(str, F10, G10, "?#");
            G(str, F10, p11);
            if (p11 < G10 && str.charAt(p11) == '?') {
                int o11 = Gg.c.o(str, p11, G10, JavaElement.JEM_IMPORTDECLARATION);
                this.f99474g = v.M(v.a(str, p11 + 1, o11, v.f99451o, true, false, true, true, null));
                p11 = o11;
            }
            if (p11 < G10 && str.charAt(p11) == '#') {
                this.f99475h = v.a(str, 1 + p11, G10, "", true, false, false, false, null);
            }
            return this;
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder();
            String str = this.f99468a;
            if (str != null) {
                sb2.append(str);
                sb2.append("://");
            } else {
                sb2.append("//");
            }
            if (!this.f99469b.isEmpty() || !this.f99470c.isEmpty()) {
                sb2.append(this.f99469b);
                if (!this.f99470c.isEmpty()) {
                    sb2.append(':');
                    sb2.append(this.f99470c);
                }
                sb2.append('@');
            }
            String str2 = this.f99471d;
            if (str2 != null) {
                if (str2.indexOf(58) != -1) {
                    sb2.append('[');
                    sb2.append(this.f99471d);
                    sb2.append(JavaElement.JEM_TYPE_PARAMETER);
                } else {
                    sb2.append(this.f99471d);
                }
            }
            if (this.f99472e != -1 || this.f99468a != null) {
                int j10 = j();
                String str3 = this.f99468a;
                if (str3 == null || j10 != v.e(str3)) {
                    sb2.append(':');
                    sb2.append(j10);
                }
            }
            v.x(sb2, this.f99473f);
            if (this.f99474g != null) {
                sb2.append('?');
                v.r(sb2, this.f99474g);
            }
            if (this.f99475h != null) {
                sb2.append(JavaElement.JEM_IMPORTDECLARATION);
                sb2.append(this.f99475h);
            }
            return sb2.toString();
        }

        public a v(String str) {
            if (str == null) {
                throw new NullPointerException("password == null");
            }
            this.f99470c = v.b(str, " \"':;<=>@[]^`{}|/\\?#", false, false, false, true);
            return this;
        }

        public final void w() {
            if (!this.f99473f.remove(r0.size() - 1).isEmpty() || this.f99473f.isEmpty()) {
                this.f99473f.add("");
            } else {
                this.f99473f.set(r0.size() - 1, "");
            }
        }

        public a x(int i10) {
            if (i10 > 0 && i10 <= 65535) {
                this.f99472e = i10;
                return this;
            }
            throw new IllegalArgumentException("unexpected port: " + i10);
        }

        public final void z(String str, int i10, int i11, boolean z10, boolean z11) {
            String a10 = v.a(str, i10, i11, v.f99449m, z11, false, false, true, null);
            if (r(a10)) {
                return;
            }
            if (s(a10)) {
                w();
                return;
            }
            if (this.f99473f.get(r11.size() - 1).isEmpty()) {
                this.f99473f.set(r11.size() - 1, a10);
            } else {
                this.f99473f.add(a10);
            }
            if (z10) {
                this.f99473f.add("");
            }
        }
    }

    public v(a aVar) {
        this.f99458a = aVar.f99468a;
        this.f99459b = A(aVar.f99469b, false);
        this.f99460c = A(aVar.f99470c, false);
        this.f99461d = aVar.f99471d;
        this.f99462e = aVar.j();
        this.f99463f = B(aVar.f99473f, false);
        List<String> list = aVar.f99474g;
        this.f99464g = list != null ? B(list, true) : null;
        String str = aVar.f99475h;
        this.f99465h = str != null ? A(str, false) : null;
        this.f99466i = aVar.toString();
    }

    public static String A(String str, boolean z10) {
        return z(str, 0, str.length(), z10);
    }

    public static void C(C3089c c3089c, String str, int i10, int i11, boolean z10) {
        int i12;
        while (i10 < i11) {
            int codePointAt = str.codePointAt(i10);
            if (codePointAt != 37 || (i12 = i10 + 2) >= i11) {
                if (codePointAt == 43 && z10) {
                    c3089c.writeByte(32);
                }
                c3089c.U(codePointAt);
            } else {
                int l10 = Gg.c.l(str.charAt(i10 + 1));
                int l11 = Gg.c.l(str.charAt(i12));
                if (l10 != -1 && l11 != -1) {
                    c3089c.writeByte((l10 << 4) + l11);
                    i10 = i12;
                }
                c3089c.U(codePointAt);
            }
            i10 += Character.charCount(codePointAt);
        }
    }

    public static boolean D(String str, int i10, int i11) {
        int i12 = i10 + 2;
        return i12 < i11 && str.charAt(i10) == '%' && Gg.c.l(str.charAt(i10 + 1)) != -1 && Gg.c.l(str.charAt(i12)) != -1;
    }

    public static List<String> M(String str) {
        ArrayList arrayList = new ArrayList();
        int i10 = 0;
        while (i10 <= str.length()) {
            int indexOf = str.indexOf(38, i10);
            if (indexOf == -1) {
                indexOf = str.length();
            }
            int indexOf2 = str.indexOf(61, i10);
            if (indexOf2 == -1 || indexOf2 > indexOf) {
                arrayList.add(str.substring(i10, indexOf));
                arrayList.add(null);
            } else {
                arrayList.add(str.substring(i10, indexOf2));
                arrayList.add(str.substring(indexOf2 + 1, indexOf));
            }
            i10 = indexOf + 1;
        }
        return arrayList;
    }

    public static String a(String str, int i10, int i11, String str2, boolean z10, boolean z11, boolean z12, boolean z13, Charset charset) {
        int i12 = i10;
        while (i12 < i11) {
            int codePointAt = str.codePointAt(i12);
            if (codePointAt >= 32 && codePointAt != 127 && (codePointAt < 128 || !z13)) {
                if (str2.indexOf(codePointAt) == -1 && ((codePointAt != 37 || (z10 && (!z11 || D(str, i12, i11)))) && (codePointAt != 43 || !z12))) {
                    i12 += Character.charCount(codePointAt);
                }
            }
            C3089c c3089c = new C3089c();
            c3089c.F(str, i10, i12);
            d(c3089c, str, i12, i11, str2, z10, z11, z12, z13, charset);
            return c3089c.D1();
        }
        return str.substring(i10, i11);
    }

    public static String b(String str, String str2, boolean z10, boolean z11, boolean z12, boolean z13) {
        return a(str, 0, str.length(), str2, z10, z11, z12, z13, null);
    }

    public static String c(String str, String str2, boolean z10, boolean z11, boolean z12, boolean z13, Charset charset) {
        return a(str, 0, str.length(), str2, z10, z11, z12, z13, charset);
    }

    public static void d(C3089c c3089c, String str, int i10, int i11, String str2, boolean z10, boolean z11, boolean z12, boolean z13, Charset charset) {
        C3089c c3089c2 = null;
        while (i10 < i11) {
            int codePointAt = str.codePointAt(i10);
            if (!z10 || (codePointAt != 9 && codePointAt != 10 && codePointAt != 12 && codePointAt != 13)) {
                if (codePointAt == 43 && z12) {
                    c3089c.X(z10 ? "+" : "%2B");
                } else if (codePointAt < 32 || codePointAt == 127 || ((codePointAt >= 128 && z13) || str2.indexOf(codePointAt) != -1 || (codePointAt == 37 && (!z10 || (z11 && !D(str, i10, i11)))))) {
                    if (c3089c2 == null) {
                        c3089c2 = new C3089c();
                    }
                    if (charset == null || charset.equals(Gg.c.f7807j)) {
                        c3089c2.U(codePointAt);
                    } else {
                        c3089c2.I(str, i10, Character.charCount(codePointAt) + i10, charset);
                    }
                    while (!c3089c2.b2()) {
                        byte readByte = c3089c2.readByte();
                        c3089c.writeByte(37);
                        char[] cArr = f99446j;
                        c3089c.writeByte(cArr[((readByte & 255) >> 4) & 15]);
                        c3089c.writeByte(cArr[readByte & 15]);
                    }
                } else {
                    c3089c.U(codePointAt);
                }
            }
            i10 += Character.charCount(codePointAt);
        }
    }

    public static int e(String str) {
        if (str.equals("http")) {
            return 80;
        }
        return str.equals(C15075d.f106134a) ? 443 : -1;
    }

    public static v m(String str) {
        return new a().t(null, str).h();
    }

    @Nullable
    public static v n(URI uri) {
        return u(uri.toString());
    }

    @Nullable
    public static v o(URL url) {
        return u(url.toString());
    }

    public static void r(StringBuilder sb2, List<String> list) {
        int size = list.size();
        for (int i10 = 0; i10 < size; i10 += 2) {
            String str = list.get(i10);
            String str2 = list.get(i10 + 1);
            if (i10 > 0) {
                sb2.append('&');
            }
            sb2.append(str);
            if (str2 != null) {
                sb2.append('=');
                sb2.append(str2);
            }
        }
    }

    @Nullable
    public static v u(String str) {
        try {
            return m(str);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    public static void x(StringBuilder sb2, List<String> list) {
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            sb2.append('/');
            sb2.append(list.get(i10));
        }
    }

    public static String z(String str, int i10, int i11, boolean z10) {
        for (int i12 = i10; i12 < i11; i12++) {
            char charAt = str.charAt(i12);
            if (charAt == '%' || (charAt == '+' && z10)) {
                C3089c c3089c = new C3089c();
                c3089c.F(str, i10, i12);
                C(c3089c, str, i12, i11, z10);
                return c3089c.D1();
            }
        }
        return str.substring(i10, i11);
    }

    public final List<String> B(List<String> list, boolean z10) {
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i10 = 0; i10 < size; i10++) {
            String str = list.get(i10);
            arrayList.add(str != null ? A(str, z10) : null);
        }
        return Collections.unmodifiableList(arrayList);
    }

    public int E() {
        return this.f99462e;
    }

    @Nullable
    public String F() {
        if (this.f99464g == null) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        r(sb2, this.f99464g);
        return sb2.toString();
    }

    @Nullable
    public String G(String str) {
        List<String> list = this.f99464g;
        if (list == null) {
            return null;
        }
        int size = list.size();
        for (int i10 = 0; i10 < size; i10 += 2) {
            if (str.equals(this.f99464g.get(i10))) {
                return this.f99464g.get(i10 + 1);
            }
        }
        return null;
    }

    public String H(int i10) {
        List<String> list = this.f99464g;
        if (list != null) {
            return list.get(i10 * 2);
        }
        throw new IndexOutOfBoundsException();
    }

    public Set<String> I() {
        if (this.f99464g == null) {
            return Collections.emptySet();
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        int size = this.f99464g.size();
        for (int i10 = 0; i10 < size; i10 += 2) {
            linkedHashSet.add(this.f99464g.get(i10));
        }
        return Collections.unmodifiableSet(linkedHashSet);
    }

    public String J(int i10) {
        List<String> list = this.f99464g;
        if (list != null) {
            return list.get((i10 * 2) + 1);
        }
        throw new IndexOutOfBoundsException();
    }

    public List<String> K(String str) {
        if (this.f99464g == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        int size = this.f99464g.size();
        for (int i10 = 0; i10 < size; i10 += 2) {
            if (str.equals(this.f99464g.get(i10))) {
                arrayList.add(this.f99464g.get(i10 + 1));
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    public int L() {
        List<String> list = this.f99464g;
        if (list != null) {
            return list.size() / 2;
        }
        return 0;
    }

    public String N() {
        return t("/...").O("").v("").h().toString();
    }

    @Nullable
    public v O(String str) {
        a t10 = t(str);
        if (t10 != null) {
            return t10.h();
        }
        return null;
    }

    public String P() {
        return this.f99458a;
    }

    @Nullable
    public String Q() {
        if (Gg.c.K(this.f99461d)) {
            return null;
        }
        return PublicSuffixDatabase.c().d(this.f99461d);
    }

    public URI R() {
        String aVar = s().B().toString();
        try {
            return new URI(aVar);
        } catch (URISyntaxException e10) {
            try {
                return URI.create(aVar.replaceAll("[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]", ""));
            } catch (Exception unused) {
                throw new RuntimeException(e10);
            }
        }
    }

    public URL S() {
        try {
            return new URL(this.f99466i);
        } catch (MalformedURLException e10) {
            throw new RuntimeException(e10);
        }
    }

    public String T() {
        return this.f99459b;
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof v) && ((v) obj).f99466i.equals(this.f99466i);
    }

    @Nullable
    public String f() {
        if (this.f99465h == null) {
            return null;
        }
        return this.f99466i.substring(this.f99466i.indexOf(35) + 1);
    }

    public String g() {
        if (this.f99460c.isEmpty()) {
            return "";
        }
        return this.f99466i.substring(this.f99466i.indexOf(58, this.f99458a.length() + 3) + 1, this.f99466i.indexOf(64));
    }

    public String h() {
        int indexOf = this.f99466i.indexOf(47, this.f99458a.length() + 3);
        String str = this.f99466i;
        return this.f99466i.substring(indexOf, Gg.c.p(str, indexOf, str.length(), "?#"));
    }

    public int hashCode() {
        return this.f99466i.hashCode();
    }

    public List<String> i() {
        int indexOf = this.f99466i.indexOf(47, this.f99458a.length() + 3);
        String str = this.f99466i;
        int p10 = Gg.c.p(str, indexOf, str.length(), "?#");
        ArrayList arrayList = new ArrayList();
        while (indexOf < p10) {
            int i10 = indexOf + 1;
            int o10 = Gg.c.o(this.f99466i, i10, p10, '/');
            arrayList.add(this.f99466i.substring(i10, o10));
            indexOf = o10;
        }
        return arrayList;
    }

    @Nullable
    public String j() {
        if (this.f99464g == null) {
            return null;
        }
        int indexOf = this.f99466i.indexOf(63) + 1;
        String str = this.f99466i;
        return this.f99466i.substring(indexOf, Gg.c.o(str, indexOf, str.length(), JavaElement.JEM_IMPORTDECLARATION));
    }

    public String k() {
        if (this.f99459b.isEmpty()) {
            return "";
        }
        int length = this.f99458a.length() + 3;
        String str = this.f99466i;
        return this.f99466i.substring(length, Gg.c.p(str, length, str.length(), ":@"));
    }

    @Nullable
    public String l() {
        return this.f99465h;
    }

    public String p() {
        return this.f99461d;
    }

    public boolean q() {
        return this.f99458a.equals(C15075d.f106134a);
    }

    public a s() {
        a aVar = new a();
        aVar.f99468a = this.f99458a;
        aVar.f99469b = k();
        aVar.f99470c = g();
        aVar.f99471d = this.f99461d;
        aVar.f99472e = this.f99462e != e(this.f99458a) ? this.f99462e : -1;
        aVar.f99473f.clear();
        aVar.f99473f.addAll(i());
        aVar.n(j());
        aVar.f99475h = f();
        return aVar;
    }

    @Nullable
    public a t(String str) {
        try {
            return new a().t(this, str);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    public String toString() {
        return this.f99466i;
    }

    public String v() {
        return this.f99460c;
    }

    public List<String> w() {
        return this.f99463f;
    }

    public int y() {
        return this.f99463f.size();
    }
}
