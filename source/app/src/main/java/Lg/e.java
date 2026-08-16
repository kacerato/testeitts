package Lg;

import Tg.C3089c;
import com.tonyodev.fetch2core.FetchCoreUtils;
import java.io.EOFException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
import okhttp3.C;
import okhttp3.C14588h;
import okhttp3.E;
import okhttp3.m;
import okhttp3.n;
import okhttp3.u;
import okhttp3.v;
import org.openjdk.tools.doclint.DocLint;

public final class e {

    public static final Tg.f f13425a = Tg.f.m("\"\\");

    public static final Tg.f f13426b = Tg.f.m("\t ,=");

    public static long a(u uVar) {
        return q(uVar.d("Content-Length"));
    }

    public static long b(E e10) {
        return a(e10.m());
    }

    public static boolean c(E e10) {
        if (e10.w().g().equals(FetchCoreUtils.HEAD_REQUEST_METHOD)) {
            return false;
        }
        int g10 = e10.g();
        return (((g10 >= 100 && g10 < 200) || g10 == 204 || g10 == 304) && b(e10) == -1 && !"chunked".equalsIgnoreCase(e10.j("Transfer-Encoding"))) ? false : true;
    }

    public static boolean d(u uVar) {
        return r(uVar).contains("*");
    }

    public static boolean e(E e10) {
        return d(e10.m());
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x007d, code lost:
    
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x007d, code lost:
    
        continue;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void f(List<C14588h> list, C3089c c3089c) {
        String j10;
        int m10;
        while (true) {
            String str = null;
            while (true) {
                if (str == null) {
                    p(c3089c);
                    str = j(c3089c);
                    if (str == null) {
                        return;
                    }
                }
                boolean p10 = p(c3089c);
                j10 = j(c3089c);
                if (j10 == null) {
                    if (c3089c.b2()) {
                        list.add(new C14588h(str, (Map<String, String>) Collections.emptyMap()));
                        return;
                    }
                    return;
                }
                m10 = m(c3089c, (byte) 61);
                boolean p11 = p(c3089c);
                if (p10 || (!p11 && !c3089c.b2())) {
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    int m11 = m10 + m(c3089c, (byte) 61);
                    while (true) {
                        if (j10 == null) {
                            j10 = j(c3089c);
                            if (p(c3089c)) {
                                break;
                            } else {
                                m11 = m(c3089c, (byte) 61);
                            }
                        }
                        if (m11 == 0) {
                            break;
                        }
                        if (m11 > 1 || p(c3089c)) {
                            return;
                        }
                        String j11 = (c3089c.b2() || c3089c.l(0L) != 34) ? j(c3089c) : i(c3089c);
                        if (j11 == null || ((String) linkedHashMap.put(j10, j11)) != null) {
                            return;
                        }
                        if (!p(c3089c) && !c3089c.b2()) {
                            return;
                        } else {
                            j10 = null;
                        }
                    }
                    list.add(new C14588h(str, linkedHashMap));
                    str = j10;
                }
            }
            list.add(new C14588h(str, (Map<String, String>) Collections.singletonMap(null, j10 + l('=', m10))));
        }
    }

    public static List<C14588h> g(u uVar, String str) {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < uVar.l(); i10++) {
            if (str.equalsIgnoreCase(uVar.g(i10))) {
                f(arrayList, new C3089c().X(uVar.n(i10)));
            }
        }
        return arrayList;
    }

    public static int h(String str, int i10) {
        try {
            long parseLong = Long.parseLong(str);
            if (parseLong > 2147483647L) {
                return Integer.MAX_VALUE;
            }
            if (parseLong < 0) {
                return 0;
            }
            return (int) parseLong;
        } catch (NumberFormatException unused) {
            return i10;
        }
    }

    public static String i(C3089c c3089c) {
        if (c3089c.readByte() != 34) {
            throw new IllegalArgumentException();
        }
        C3089c c3089c2 = new C3089c();
        while (true) {
            long H12 = c3089c.H1(f13425a);
            if (H12 == -1) {
                return null;
            }
            if (c3089c.l(H12) == 34) {
                c3089c2.h0(c3089c, H12);
                c3089c.readByte();
                return c3089c2.D1();
            }
            if (c3089c.Q() == H12 + 1) {
                return null;
            }
            c3089c2.h0(c3089c, H12);
            c3089c.readByte();
            c3089c2.h0(c3089c, 1L);
        }
    }

    public static String j(C3089c c3089c) {
        try {
            long H12 = c3089c.H1(f13426b);
            if (H12 == -1) {
                H12 = c3089c.Q();
            }
            if (H12 != 0) {
                return c3089c.w1(H12);
            }
            return null;
        } catch (EOFException unused) {
            throw new AssertionError();
        }
    }

    public static void k(n nVar, v vVar, u uVar) {
        if (nVar == n.f99422a) {
            return;
        }
        List<m> k10 = m.k(vVar, uVar);
        if (k10.isEmpty()) {
            return;
        }
        nVar.b(vVar, k10);
    }

    public static String l(char c10, int i10) {
        char[] cArr = new char[i10];
        Arrays.fill(cArr, c10);
        return new String(cArr);
    }

    public static int m(C3089c c3089c, byte b10) {
        int i10 = 0;
        while (!c3089c.b2() && c3089c.l(0L) == b10) {
            i10++;
            c3089c.readByte();
        }
        return i10;
    }

    public static int n(String str, int i10, String str2) {
        while (i10 < str.length() && str2.indexOf(str.charAt(i10)) == -1) {
            i10++;
        }
        return i10;
    }

    public static int o(String str, int i10) {
        char charAt;
        while (i10 < str.length() && ((charAt = str.charAt(i10)) == ' ' || charAt == '\t')) {
            i10++;
        }
        return i10;
    }

    public static boolean p(C3089c c3089c) {
        boolean z10 = false;
        while (!c3089c.b2()) {
            byte l10 = c3089c.l(0L);
            if (l10 != 44) {
                if (l10 != 32 && l10 != 9) {
                    break;
                }
                c3089c.readByte();
            } else {
                c3089c.readByte();
                z10 = true;
            }
        }
        return z10;
    }

    public static long q(String str) {
        if (str == null) {
            return -1L;
        }
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException unused) {
            return -1L;
        }
    }

    public static Set<String> r(u uVar) {
        Set<String> emptySet = Collections.emptySet();
        int l10 = uVar.l();
        for (int i10 = 0; i10 < l10; i10++) {
            if (F2.d.f6178L0.equalsIgnoreCase(uVar.g(i10))) {
                String n10 = uVar.n(i10);
                if (emptySet.isEmpty()) {
                    emptySet = new TreeSet<>(String.CASE_INSENSITIVE_ORDER);
                }
                for (String str : n10.split(DocLint.SEPARATOR)) {
                    emptySet.add(str.trim());
                }
            }
        }
        return emptySet;
    }

    public static Set<String> s(E e10) {
        return r(e10.m());
    }

    public static u t(u uVar, u uVar2) {
        Set<String> r10 = r(uVar2);
        if (r10.isEmpty()) {
            return new u.a().h();
        }
        u.a aVar = new u.a();
        int l10 = uVar.l();
        for (int i10 = 0; i10 < l10; i10++) {
            String g10 = uVar.g(i10);
            if (r10.contains(g10)) {
                aVar.b(g10, uVar.n(i10));
            }
        }
        return aVar.h();
    }

    public static u u(E e10) {
        return t(e10.q().w().e(), e10.m());
    }

    public static boolean v(E e10, u uVar, C c10) {
        for (String str : s(e10)) {
            if (!Gg.c.r(uVar.o(str), c10.d(str))) {
                return false;
            }
        }
        return true;
    }
}
