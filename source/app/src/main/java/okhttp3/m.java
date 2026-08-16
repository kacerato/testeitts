package okhttp3;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.annotation.Nullable;
import okhttp3.internal.publicsuffix.PublicSuffixDatabase;

public final class m {

    public static final Pattern f99400j = Pattern.compile("(\\d{2,4})[^\\d]*");

    public static final Pattern f99401k = Pattern.compile("(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*");

    public static final Pattern f99402l = Pattern.compile("(\\d{1,2})[^\\d]*");

    public static final Pattern f99403m = Pattern.compile("(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*");

    public final String f99404a;

    public final String f99405b;

    public final long f99406c;

    public final String f99407d;

    public final String f99408e;

    public final boolean f99409f;

    public final boolean f99410g;

    public final boolean f99411h;

    public final boolean f99412i;

    public static final class a {

        @Nullable
        public String f99413a;

        @Nullable
        public String f99414b;

        @Nullable
        public String f99416d;

        public boolean f99418f;

        public boolean f99419g;

        public boolean f99420h;

        public boolean f99421i;

        public long f99415c = Lg.d.f13421a;

        public String f99417e = "/";

        public m a() {
            return new m(this);
        }

        public a b(String str) {
            return c(str, false);
        }

        public final a c(String str, boolean z10) {
            if (str == null) {
                throw new NullPointerException("domain == null");
            }
            String d10 = Gg.c.d(str);
            if (d10 != null) {
                this.f99416d = d10;
                this.f99421i = z10;
                return this;
            }
            throw new IllegalArgumentException("unexpected domain: " + str);
        }

        public a d(long j10) {
            if (j10 <= 0) {
                j10 = Long.MIN_VALUE;
            }
            if (j10 > Lg.d.f13421a) {
                j10 = 253402300799999L;
            }
            this.f99415c = j10;
            this.f99420h = true;
            return this;
        }

        public a e(String str) {
            return c(str, true);
        }

        public a f() {
            this.f99419g = true;
            return this;
        }

        public a g(String str) {
            if (str == null) {
                throw new NullPointerException("name == null");
            }
            if (!str.trim().equals(str)) {
                throw new IllegalArgumentException("name is not trimmed");
            }
            this.f99413a = str;
            return this;
        }

        public a h(String str) {
            if (!str.startsWith("/")) {
                throw new IllegalArgumentException("path must start with '/'");
            }
            this.f99417e = str;
            return this;
        }

        public a i() {
            this.f99418f = true;
            return this;
        }

        public a j(String str) {
            if (str == null) {
                throw new NullPointerException("value == null");
            }
            if (!str.trim().equals(str)) {
                throw new IllegalArgumentException("value is not trimmed");
            }
            this.f99414b = str;
            return this;
        }
    }

    public m(String str, String str2, long j10, String str3, String str4, boolean z10, boolean z11, boolean z12, boolean z13) {
        this.f99404a = str;
        this.f99405b = str2;
        this.f99406c = j10;
        this.f99407d = str3;
        this.f99408e = str4;
        this.f99409f = z10;
        this.f99410g = z11;
        this.f99412i = z12;
        this.f99411h = z13;
    }

    public static int a(String str, int i10, int i11, boolean z10) {
        while (i10 < i11) {
            char charAt = str.charAt(i10);
            if (((charAt < ' ' && charAt != '\t') || charAt >= '\u007f' || (charAt >= '0' && charAt <= '9') || ((charAt >= 'a' && charAt <= 'z') || ((charAt >= 'A' && charAt <= 'Z') || charAt == ':'))) == (!z10)) {
                return i10;
            }
            i10++;
        }
        return i11;
    }

    public static boolean c(String str, String str2) {
        if (str.equals(str2)) {
            return true;
        }
        return str.endsWith(str2) && str.charAt((str.length() - str2.length()) - 1) == '.' && !Gg.c.K(str);
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00f1  */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static m i(long j10, v vVar, String str) {
        long j11;
        String p10;
        m mVar;
        String str2;
        String substring;
        int length = str.length();
        char c10 = ';';
        int o10 = Gg.c.o(str, 0, length, ';');
        char c11 = '=';
        int o11 = Gg.c.o(str, 0, o10, '=');
        if (o11 == o10) {
            return null;
        }
        String J10 = Gg.c.J(str, 0, o11);
        if (J10.isEmpty() || Gg.c.y(J10) != -1) {
            return null;
        }
        String J11 = Gg.c.J(str, o11 + 1, o10);
        if (Gg.c.y(J11) != -1) {
            return null;
        }
        int i10 = o10 + 1;
        boolean z10 = false;
        boolean z11 = false;
        boolean z12 = false;
        String str3 = null;
        boolean z13 = true;
        long j12 = -1;
        long j13 = 253402300799999L;
        String str4 = null;
        while (i10 < length) {
            int o12 = Gg.c.o(str, i10, length, c10);
            int o13 = Gg.c.o(str, i10, o12, c11);
            String J12 = Gg.c.J(str, i10, o13);
            String J13 = o13 < o12 ? Gg.c.J(str, o13 + 1, o12) : "";
            if (J12.equalsIgnoreCase("expires")) {
                try {
                    j13 = m(J13, 0, J13.length());
                } catch (NumberFormatException | IllegalArgumentException unused) {
                }
            } else if (J12.equalsIgnoreCase("max-age")) {
                j12 = n(J13);
            } else {
                if (J12.equalsIgnoreCase("domain")) {
                    str3 = l(J13);
                    z13 = false;
                } else if (J12.equalsIgnoreCase("path")) {
                    str4 = J13;
                } else if (J12.equalsIgnoreCase("secure")) {
                    z10 = true;
                } else if (J12.equalsIgnoreCase("httponly")) {
                    z11 = true;
                }
                i10 = o12 + 1;
                c10 = ';';
                c11 = '=';
            }
            z12 = true;
            i10 = o12 + 1;
            c10 = ';';
            c11 = '=';
        }
        long j14 = Long.MIN_VALUE;
        if (j12 != Long.MIN_VALUE) {
            if (j12 != -1) {
                j14 = j10 + (j12 <= 9223372036854775L ? j12 * 1000 : Long.MAX_VALUE);
                if (j14 < j10 || j14 > Lg.d.f13421a) {
                    j11 = 253402300799999L;
                }
            } else {
                j11 = j13;
            }
            p10 = vVar.p();
            if (str3 != null) {
                str2 = p10;
                mVar = null;
            } else {
                if (!c(p10, str3)) {
                    return null;
                }
                mVar = null;
                str2 = str3;
            }
            if (p10.length() == str2.length() && PublicSuffixDatabase.c().d(str2) == null) {
                return mVar;
            }
            if (str4 == null && str4.startsWith("/")) {
                substring = str4;
            } else {
                String h10 = vVar.h();
                int lastIndexOf = h10.lastIndexOf(47);
                substring = lastIndexOf != 0 ? h10.substring(0, lastIndexOf) : "/";
            }
            return new m(J10, J11, j11, str2, substring, z10, z11, z13, z12);
        }
        j11 = j14;
        p10 = vVar.p();
        if (str3 != null) {
        }
        if (p10.length() == str2.length()) {
        }
        if (str4 == null) {
        }
        String h102 = vVar.h();
        int lastIndexOf2 = h102.lastIndexOf(47);
        substring = lastIndexOf2 != 0 ? h102.substring(0, lastIndexOf2) : "/";
        return new m(J10, J11, j11, str2, substring, z10, z11, z13, z12);
    }

    @Nullable
    public static m j(v vVar, String str) {
        return i(System.currentTimeMillis(), vVar, str);
    }

    public static List<m> k(v vVar, u uVar) {
        List<String> o10 = uVar.o(F2.d.f6157E0);
        int size = o10.size();
        ArrayList arrayList = null;
        for (int i10 = 0; i10 < size; i10++) {
            m j10 = j(vVar, o10.get(i10));
            if (j10 != null) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(j10);
            }
        }
        return arrayList != null ? Collections.unmodifiableList(arrayList) : Collections.emptyList();
    }

    public static String l(String str) {
        if (str.endsWith(".")) {
            throw new IllegalArgumentException();
        }
        if (str.startsWith(".")) {
            str = str.substring(1);
        }
        String d10 = Gg.c.d(str);
        if (d10 != null) {
            return d10;
        }
        throw new IllegalArgumentException();
    }

    public static long m(String str, int i10, int i11) {
        int a10 = a(str, i10, i11, false);
        Matcher matcher = f99403m.matcher(str);
        int i12 = -1;
        int i13 = -1;
        int i14 = -1;
        int i15 = -1;
        int i16 = -1;
        int i17 = -1;
        while (a10 < i11) {
            int a11 = a(str, a10 + 1, i11, true);
            matcher.region(a10, a11);
            if (i13 == -1 && matcher.usePattern(f99403m).matches()) {
                i13 = Integer.parseInt(matcher.group(1));
                i16 = Integer.parseInt(matcher.group(2));
                i17 = Integer.parseInt(matcher.group(3));
            } else if (i14 == -1 && matcher.usePattern(f99402l).matches()) {
                i14 = Integer.parseInt(matcher.group(1));
            } else {
                if (i15 == -1) {
                    Pattern pattern = f99401k;
                    if (matcher.usePattern(pattern).matches()) {
                        i15 = pattern.pattern().indexOf(matcher.group(1).toLowerCase(Locale.US)) / 4;
                    }
                }
                if (i12 == -1 && matcher.usePattern(f99400j).matches()) {
                    i12 = Integer.parseInt(matcher.group(1));
                }
            }
            a10 = a(str, a11 + 1, i11, false);
        }
        if (i12 >= 70 && i12 <= 99) {
            i12 += 1900;
        }
        if (i12 >= 0 && i12 <= 69) {
            i12 += 2000;
        }
        if (i12 < 1601) {
            throw new IllegalArgumentException();
        }
        if (i15 == -1) {
            throw new IllegalArgumentException();
        }
        if (i14 < 1 || i14 > 31) {
            throw new IllegalArgumentException();
        }
        if (i13 < 0 || i13 > 23) {
            throw new IllegalArgumentException();
        }
        if (i16 < 0 || i16 > 59) {
            throw new IllegalArgumentException();
        }
        if (i17 < 0 || i17 > 59) {
            throw new IllegalArgumentException();
        }
        GregorianCalendar gregorianCalendar = new GregorianCalendar(Gg.c.f7813p);
        gregorianCalendar.setLenient(false);
        gregorianCalendar.set(1, i12);
        gregorianCalendar.set(2, i15 - 1);
        gregorianCalendar.set(5, i14);
        gregorianCalendar.set(11, i13);
        gregorianCalendar.set(12, i16);
        gregorianCalendar.set(13, i17);
        gregorianCalendar.set(14, 0);
        return gregorianCalendar.getTimeInMillis();
    }

    public static long n(String str) {
        try {
            long parseLong = Long.parseLong(str);
            if (parseLong <= 0) {
                return Long.MIN_VALUE;
            }
            return parseLong;
        } catch (NumberFormatException e10) {
            if (str.matches("-?\\d+")) {
                return str.startsWith("-") ? Long.MIN_VALUE : Long.MAX_VALUE;
            }
            throw e10;
        }
    }

    public static boolean p(v vVar, String str) {
        String h10 = vVar.h();
        if (h10.equals(str)) {
            return true;
        }
        if (h10.startsWith(str)) {
            return str.endsWith("/") || h10.charAt(str.length()) == '/';
        }
        return false;
    }

    public String b() {
        return this.f99407d;
    }

    public long d() {
        return this.f99406c;
    }

    public boolean e() {
        return this.f99412i;
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof m)) {
            return false;
        }
        m mVar = (m) obj;
        return mVar.f99404a.equals(this.f99404a) && mVar.f99405b.equals(this.f99405b) && mVar.f99407d.equals(this.f99407d) && mVar.f99408e.equals(this.f99408e) && mVar.f99406c == this.f99406c && mVar.f99409f == this.f99409f && mVar.f99410g == this.f99410g && mVar.f99411h == this.f99411h && mVar.f99412i == this.f99412i;
    }

    public boolean f() {
        return this.f99410g;
    }

    public boolean g(v vVar) {
        if ((this.f99412i ? vVar.p().equals(this.f99407d) : c(vVar.p(), this.f99407d)) && p(vVar, this.f99408e)) {
            return !this.f99409f || vVar.q();
        }
        return false;
    }

    public String h() {
        return this.f99404a;
    }

    public int hashCode() {
        int hashCode = (((((((527 + this.f99404a.hashCode()) * 31) + this.f99405b.hashCode()) * 31) + this.f99407d.hashCode()) * 31) + this.f99408e.hashCode()) * 31;
        long j10 = this.f99406c;
        return ((((((((hashCode + ((int) (j10 ^ (j10 >>> 32)))) * 31) + (!this.f99409f ? 1 : 0)) * 31) + (!this.f99410g ? 1 : 0)) * 31) + (!this.f99411h ? 1 : 0)) * 31) + (!this.f99412i ? 1 : 0);
    }

    public String o() {
        return this.f99408e;
    }

    public boolean q() {
        return this.f99411h;
    }

    public boolean r() {
        return this.f99409f;
    }

    public String s(boolean z10) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.f99404a);
        sb2.append('=');
        sb2.append(this.f99405b);
        if (this.f99411h) {
            if (this.f99406c == Long.MIN_VALUE) {
                sb2.append("; max-age=0");
            } else {
                sb2.append("; expires=");
                sb2.append(Lg.d.a(new Date(this.f99406c)));
            }
        }
        if (!this.f99412i) {
            sb2.append("; domain=");
            if (z10) {
                sb2.append(".");
            }
            sb2.append(this.f99407d);
        }
        sb2.append("; path=");
        sb2.append(this.f99408e);
        if (this.f99409f) {
            sb2.append("; secure");
        }
        if (this.f99410g) {
            sb2.append("; httponly");
        }
        return sb2.toString();
    }

    public String t() {
        return this.f99405b;
    }

    public String toString() {
        return s(false);
    }

    public m(a aVar) {
        String str = aVar.f99413a;
        if (str != null) {
            String str2 = aVar.f99414b;
            if (str2 != null) {
                String str3 = aVar.f99416d;
                if (str3 != null) {
                    this.f99404a = str;
                    this.f99405b = str2;
                    this.f99406c = aVar.f99415c;
                    this.f99407d = str3;
                    this.f99408e = aVar.f99417e;
                    this.f99409f = aVar.f99418f;
                    this.f99410g = aVar.f99419g;
                    this.f99411h = aVar.f99420h;
                    this.f99412i = aVar.f99421i;
                    return;
                }
                throw new NullPointerException("builder.domain == null");
            }
            throw new NullPointerException("builder.value == null");
        }
        throw new NullPointerException("builder.name == null");
    }
}
