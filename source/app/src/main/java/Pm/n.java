package Pm;

import Um.A;
import Um.v;
import Um.y;
import java.util.Arrays;
import java.util.BitSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import w2.C15883c;
import yd.C16181m;

public class n implements Vm.a {

    public static final String f21806i = "<!---->|<!--(?:-?[^>-])(?:-?[^-])*-->";

    public static final String f21807j = "[<][?].*?[?][>]";

    public static final String f21808k = "<![A-Z]+\\s+[^>]*>";

    public static final String f21809l = "<!\\[CDATA\\[[\\s\\S]*?\\]\\]>";

    public static final String f21810m = "(?:<[A-Za-z][A-Za-z0-9-]*(?:\\s+[a-zA-Z_:][a-zA-Z0-9:._-]*(?:\\s*=\\s*(?:[^\"'=<>`\\x00-\\x20]+|'[^']*'|\"[^\"]*\"))?)*\\s*/?>|</[A-Za-z][A-Za-z0-9-]*\\s*[>]|<!---->|<!--(?:-?[^>-])(?:-?[^-])*-->|[<][?].*?[?][>]|<![A-Z]+\\s+[^>]*>|<!\\[CDATA\\[[\\s\\S]*?\\]\\]>)";

    public static final String f21811n = "!\"#\\$%&'\\(\\)\\*\\+,\\-\\./:;<=>\\?@\\[\\\\\\]\\^_`\\{\\|\\}~";

    public static final Pattern f21812o = Pattern.compile("^[!\"#\\$%&'\\(\\)\\*\\+,\\-\\./:;<=>\\?@\\[\\\\\\]\\^_`\\{\\|\\}~\\p{Pc}\\p{Pd}\\p{Pe}\\p{Pf}\\p{Pi}\\p{Po}\\p{Ps}]");

    public static final Pattern f21813p = Pattern.compile("^(?:<[A-Za-z][A-Za-z0-9-]*(?:\\s+[a-zA-Z_:][a-zA-Z0-9:._-]*(?:\\s*=\\s*(?:[^\"'=<>`\\x00-\\x20]+|'[^']*'|\"[^\"]*\"))?)*\\s*/?>|</[A-Za-z][A-Za-z0-9-]*\\s*[>]|<!---->|<!--(?:-?[^>-])(?:-?[^-])*-->|[<][?].*?[?][>]|<![A-Z]+\\s+[^>]*>|<!\\[CDATA\\[[\\s\\S]*?\\]\\]>)", 2);

    public static final Pattern f21814q = Pattern.compile("^[!\"#$%&'()*+,./:;<=>?@\\[\\\\\\]^_`{|}~-]");

    public static final Pattern f21815r = Pattern.compile("^&(?:#x[a-f0-9]{1,6}|#[0-9]{1,7}|[a-z][a-z0-9]{1,31});", 2);

    public static final Pattern f21816s = Pattern.compile("`+");

    public static final Pattern f21817t = Pattern.compile("^`+");

    public static final Pattern f21818u = Pattern.compile("^<([a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*)>");

    public static final Pattern f21819v = Pattern.compile("^<[a-zA-Z][a-zA-Z0-9.+-]{1,31}:[^<>\u0000- ]*>");

    public static final Pattern f21820w = Pattern.compile("^ *(?:\n *)?");

    public static final Pattern f21821x = Pattern.compile("^[\\p{Zs}\t\r\n\f]");

    public static final Pattern f21822y = Pattern.compile("\\s+");

    public static final Pattern f21823z = Pattern.compile(" *$");

    public final BitSet f21824a;

    public final BitSet f21825b;

    public final Map<Character, Xm.a> f21826c;

    public final Vm.b f21827d;

    public String f21828e;

    public int f21829f;

    public f f21830g;

    public e f21831h;

    public static class a {

        public final int f21832a;

        public final boolean f21833b;

        public final boolean f21834c;

        public a(int i10, boolean z10, boolean z11) {
            this.f21832a = i10;
            this.f21834c = z10;
            this.f21833b = z11;
        }
    }

    public n(Vm.b bVar) {
        Map<Character, Xm.a> f10 = f(bVar.a());
        this.f21826c = f10;
        BitSet e10 = e(f10.o());
        this.f21825b = e10;
        this.f21824a = g(e10);
        this.f21827d = bVar;
    }

    public static void c(char c10, Xm.a aVar, Map<Character, Xm.a> map) {
        if (map.put(Character.valueOf(c10), aVar) == null) {
            return;
        }
        throw new IllegalArgumentException("Delimiter processor conflict with delimiter char '" + c10 + "'");
    }

    public static void d(Iterable<Xm.a> iterable, Map<Character, Xm.a> map) {
        s sVar;
        for (Xm.a aVar : iterable) {
            char c10 = aVar.c();
            char a10 = aVar.a();
            if (c10 == a10) {
                Xm.a aVar2 = map.get(Character.valueOf(c10));
                if (aVar2 == null || aVar2.c() != aVar2.a()) {
                    c(c10, aVar, map);
                } else {
                    if (aVar2 instanceof s) {
                        sVar = (s) aVar2;
                    } else {
                        s sVar2 = new s(c10);
                        sVar2.f(aVar2);
                        sVar = sVar2;
                    }
                    sVar.f(aVar);
                    map.put(Character.valueOf(c10), sVar);
                }
            } else {
                c(c10, aVar, map);
                c(a10, aVar, map);
            }
        }
    }

    public static BitSet e(Set<Character> set) {
        BitSet bitSet = new BitSet();
        Iterator<Character> it = set.iterator();
        while (it.hasNext()) {
            bitSet.set(it.next().charValue());
        }
        return bitSet;
    }

    public static Map<Character, Xm.a> f(List<Xm.a> list) {
        HashMap hashMap = new HashMap();
        d(Arrays.asList(new Qm.a(), new Qm.c()), hashMap);
        d(list, hashMap);
        return hashMap;
    }

    public static BitSet g(BitSet bitSet) {
        BitSet bitSet2 = new BitSet();
        bitSet2.or(bitSet);
        bitSet2.set(10);
        bitSet2.set(96);
        bitSet2.set(91);
        bitSet2.set(93);
        bitSet2.set(92);
        bitSet2.set(33);
        bitSet2.set(60);
        bitSet2.set(38);
        return bitSet2;
    }

    public final v A() {
        int i10 = this.f21829f;
        int length = this.f21828e.length();
        while (true) {
            int i11 = this.f21829f;
            if (i11 == length || this.f21824a.get(this.f21828e.charAt(i11))) {
                break;
            }
            this.f21829f++;
        }
        int i12 = this.f21829f;
        if (i10 != i12) {
            return M(this.f21828e, i10, i12);
        }
        return null;
    }

    public final char B() {
        if (this.f21829f < this.f21828e.length()) {
            return this.f21828e.charAt(this.f21829f);
        }
        return (char) 0;
    }

    public final void C(f fVar) {
        boolean z10;
        HashMap hashMap = new HashMap();
        f fVar2 = this.f21830g;
        while (fVar2 != null) {
            f fVar3 = fVar2.f21769e;
            if (fVar3 == fVar) {
                break;
            } else {
                fVar2 = fVar3;
            }
        }
        while (fVar2 != null) {
            char c10 = fVar2.f21766b;
            Xm.a aVar = this.f21826c.get(Character.valueOf(c10));
            if (!fVar2.f21768d || aVar == null) {
                fVar2 = fVar2.f21770f;
            } else {
                char c11 = aVar.c();
                f fVar4 = fVar2.f21769e;
                int i10 = 0;
                boolean z11 = false;
                while (fVar4 != null && fVar4 != fVar && fVar4 != hashMap.get(Character.valueOf(c10))) {
                    if (fVar4.f21767c && fVar4.f21766b == c11) {
                        i10 = aVar.d(fVar4, fVar2);
                        z11 = true;
                        if (i10 > 0) {
                            z10 = true;
                            break;
                        }
                    }
                    fVar4 = fVar4.f21769e;
                }
                z10 = z11;
                z11 = false;
                if (z11) {
                    A a10 = fVar4.f21765a;
                    A a11 = fVar2.f21765a;
                    fVar4.f21771g -= i10;
                    fVar2.f21771g -= i10;
                    a10.q(a10.p().substring(0, a10.p().length() - i10));
                    a11.q(a11.p().substring(0, a11.p().length() - i10));
                    G(fVar4, fVar2);
                    k(a10, a11);
                    aVar.e(a10, a11, i10);
                    if (fVar4.f21771g == 0) {
                        E(fVar4);
                    }
                    if (fVar2.f21771g == 0) {
                        f fVar5 = fVar2.f21770f;
                        E(fVar2);
                        fVar2 = fVar5;
                    }
                } else {
                    if (!z10) {
                        hashMap.put(Character.valueOf(c10), fVar2.f21769e);
                        if (!fVar2.f21767c) {
                            F(fVar2);
                        }
                    }
                    fVar2 = fVar2.f21770f;
                }
            }
        }
        while (true) {
            f fVar6 = this.f21830g;
            if (fVar6 == null || fVar6 == fVar) {
                return;
            } else {
                F(fVar6);
            }
        }
    }

    public final void D(f fVar) {
        f fVar2 = fVar.f21769e;
        if (fVar2 != null) {
            fVar2.f21770f = fVar.f21770f;
        }
        f fVar3 = fVar.f21770f;
        if (fVar3 == null) {
            this.f21830g = fVar2;
        } else {
            fVar3.f21769e = fVar2;
        }
    }

    public final void E(f fVar) {
        fVar.f21765a.o();
        D(fVar);
    }

    public final void F(f fVar) {
        D(fVar);
    }

    public final void G(f fVar, f fVar2) {
        f fVar3 = fVar2.f21769e;
        while (fVar3 != null && fVar3 != fVar) {
            f fVar4 = fVar3.f21769e;
            F(fVar3);
            fVar3 = fVar4;
        }
    }

    public final void H() {
        this.f21831h = this.f21831h.f21761d;
    }

    public void I(String str) {
        this.f21828e = str;
        this.f21829f = 0;
        this.f21830g = null;
        this.f21831h = null;
    }

    public final a J(Xm.a aVar, char c10) {
        boolean z10;
        int i10 = this.f21829f;
        boolean z11 = false;
        int i11 = 0;
        while (B() == c10) {
            i11++;
            this.f21829f++;
        }
        if (i11 < aVar.b()) {
            this.f21829f = i10;
            return null;
        }
        String substring = i10 == 0 ? "\n" : this.f21828e.substring(i10 - 1, i10);
        char B10 = B();
        String valueOf = B10 != 0 ? String.valueOf(B10) : "\n";
        Pattern pattern = f21812o;
        boolean matches = pattern.matcher(substring).matches();
        Pattern pattern2 = f21821x;
        boolean matches2 = pattern2.matcher(substring).matches();
        boolean matches3 = pattern.matcher(valueOf).matches();
        boolean matches4 = pattern2.matcher(valueOf).matches();
        boolean z12 = !matches4 && (!matches3 || matches2 || matches);
        boolean z13 = !matches2 && (!matches || matches4 || matches3);
        if (c10 == '_') {
            z10 = z12 && (!z13 || matches);
            if (z13 && (!z12 || matches3)) {
                z11 = true;
            }
        } else {
            boolean z14 = z12 && c10 == aVar.c();
            if (z13 && c10 == aVar.a()) {
                z11 = true;
            }
            z10 = z14;
        }
        this.f21829f = i10;
        return new a(i11, z10, z11);
    }

    public final void K() {
        h(f21820w);
    }

    public final A L(String str) {
        return new A(str);
    }

    public final A M(String str, int i10, int i11) {
        return new A(str.substring(i10, i11));
    }

    @Override
    public void a(String str, v vVar) {
        I(str.trim());
        v vVar2 = null;
        while (true) {
            vVar2 = u(vVar2);
            if (vVar2 == null) {
                C(null);
                i(vVar);
                return;
            }
            vVar.d(vVar2);
        }
    }

    public final void b(e eVar) {
        e eVar2 = this.f21831h;
        if (eVar2 != null) {
            eVar2.f21764g = true;
        }
        this.f21831h = eVar;
    }

    public final String h(Pattern pattern) {
        if (this.f21829f >= this.f21828e.length()) {
            return null;
        }
        Matcher matcher = pattern.matcher(this.f21828e);
        matcher.region(this.f21829f, this.f21828e.length());
        if (!matcher.find()) {
            return null;
        }
        this.f21829f = matcher.end();
        return matcher.group();
    }

    public final void i(v vVar) {
        if (vVar.e() == vVar.f()) {
            return;
        }
        l(vVar.e(), vVar.f());
    }

    public final void j(A a10, A a11, int i10) {
        if (a10 == null || a11 == null || a10 == a11) {
            return;
        }
        StringBuilder sb2 = new StringBuilder(i10);
        sb2.append(a10.p());
        v g10 = a10.g();
        v g11 = a11.g();
        while (g10 != g11) {
            sb2.append(((A) g10).p());
            v g12 = g10.g();
            g10.o();
            g10 = g12;
        }
        a10.q(sb2.toString());
    }

    public final void k(v vVar, v vVar2) {
        if (vVar == vVar2 || vVar.g() == vVar2) {
            return;
        }
        l(vVar.g(), vVar2.i());
    }

    public final void l(v vVar, v vVar2) {
        A a10 = null;
        A a11 = null;
        int i10 = 0;
        while (vVar != null) {
            if (vVar instanceof A) {
                a11 = (A) vVar;
                if (a10 == null) {
                    a10 = a11;
                }
                i10 += a11.p().length();
            } else {
                j(a10, a11, i10);
                a10 = null;
                a11 = null;
                i10 = 0;
            }
            if (vVar == vVar2) {
                break;
            } else {
                vVar = vVar.g();
            }
        }
        j(a10, a11, i10);
    }

    public final v m() {
        String h10 = h(f21818u);
        if (h10 != null) {
            String substring = h10.substring(1, h10.length() - 1);
            Um.r rVar = new Um.r("mailto:" + substring, null);
            rVar.d(new A(substring));
            return rVar;
        }
        String h11 = h(f21819v);
        if (h11 == null) {
            return null;
        }
        String substring2 = h11.substring(1, h11.length() - 1);
        Um.r rVar2 = new Um.r(substring2, null);
        rVar2.d(new A(substring2));
        return rVar2;
    }

    public final v n() {
        this.f21829f++;
        if (B() == '\n') {
            Um.l lVar = new Um.l();
            this.f21829f++;
            return lVar;
        }
        if (this.f21829f < this.f21828e.length()) {
            Pattern pattern = f21814q;
            String str = this.f21828e;
            int i10 = this.f21829f;
            if (pattern.matcher(str.substring(i10, i10 + 1)).matches()) {
                String str2 = this.f21828e;
                int i11 = this.f21829f;
                A M10 = M(str2, i11, i11 + 1);
                this.f21829f++;
                return M10;
            }
        }
        return L(C16181m.f130232i);
    }

    public final v o() {
        String h10;
        String h11 = h(f21817t);
        if (h11 == null) {
            return null;
        }
        int i10 = this.f21829f;
        do {
            h10 = h(f21816s);
            if (h10 == null) {
                this.f21829f = i10;
                return L(h11);
            }
        } while (!h10.equals(h11));
        Um.e eVar = new Um.e();
        String replace = this.f21828e.substring(i10, this.f21829f - h11.length()).replace('\n', C15883c.f126249O);
        if (replace.length() >= 3 && replace.charAt(0) == ' ' && replace.charAt(replace.length() - 1) == ' ' && Tm.d.e(replace)) {
            replace = replace.substring(1, replace.length() - 1);
        }
        eVar.q(replace);
        return eVar;
    }

    public final v p() {
        int i10 = this.f21829f;
        this.f21829f = i10 + 1;
        if (B() != '[') {
            return L("!");
        }
        this.f21829f++;
        A L10 = L("![");
        b(e.a(L10, i10 + 1, this.f21831h, this.f21830g));
        return L10;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00ed  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final v q() {
        boolean z10;
        String str;
        String str2;
        boolean z11 = true;
        int i10 = this.f21829f + 1;
        this.f21829f = i10;
        e eVar = this.f21831h;
        if (eVar == null) {
            return L("]");
        }
        if (!eVar.f21763f) {
            H();
            return L("]");
        }
        String str3 = null;
        if (B() == '(') {
            this.f21829f++;
            K();
            str = v();
            if (str != null) {
                K();
                Pattern pattern = f21822y;
                String str4 = this.f21828e;
                int i11 = this.f21829f;
                if (pattern.matcher(str4.substring(i11 - 1, i11)).matches()) {
                    str2 = x();
                    K();
                } else {
                    str2 = null;
                }
                if (B() == ')') {
                    this.f21829f++;
                    z10 = true;
                } else {
                    this.f21829f = i10;
                    z10 = false;
                }
            } else {
                z10 = false;
                str2 = null;
            }
        } else {
            z10 = false;
            str = null;
            str2 = null;
        }
        if (!z10) {
            int i12 = this.f21829f;
            w();
            int i13 = this.f21829f - i12;
            if (i13 > 2) {
                str3 = this.f21828e.substring(i12, i13 + i12);
            } else if (!eVar.f21764g) {
                str3 = this.f21828e.substring(eVar.f21759b, i10);
            }
            if (str3 != null) {
                Um.s b10 = this.f21827d.b(Tm.a.d(str3));
                if (b10 != null) {
                    str = b10.p();
                    str2 = b10.r();
                    if (z11) {
                        this.f21829f = i10;
                        H();
                        return L("]");
                    }
                    v pVar = eVar.f21760c ? new Um.p(str, str2) : new Um.r(str, str2);
                    v g10 = eVar.f21758a.g();
                    while (g10 != null) {
                        v g11 = g10.g();
                        pVar.d(g10);
                        g10 = g11;
                    }
                    C(eVar.f21762e);
                    i(pVar);
                    eVar.f21758a.o();
                    H();
                    if (!eVar.f21760c) {
                        for (e eVar2 = this.f21831h; eVar2 != null; eVar2 = eVar2.f21761d) {
                            if (!eVar2.f21760c) {
                                eVar2.f21763f = false;
                            }
                        }
                    }
                    return pVar;
                }
            }
        }
        z11 = z10;
        if (z11) {
        }
    }

    public final v r(Xm.a aVar, char c10) {
        a J10 = J(aVar, c10);
        if (J10 == null) {
            return null;
        }
        int i10 = J10.f21832a;
        int i11 = this.f21829f;
        int i12 = i11 + i10;
        this.f21829f = i12;
        A M10 = M(this.f21828e, i11, i12);
        f fVar = new f(M10, c10, J10.f21834c, J10.f21833b, this.f21830g);
        this.f21830g = fVar;
        fVar.f21771g = i10;
        fVar.f21772h = i10;
        f fVar2 = fVar.f21769e;
        if (fVar2 != null) {
            fVar2.f21770f = fVar;
        }
        return M10;
    }

    public final v s() {
        String h10 = h(f21815r);
        if (h10 != null) {
            return L(Tm.b.a(h10));
        }
        return null;
    }

    public final v t() {
        String h10 = h(f21813p);
        if (h10 == null) {
            return null;
        }
        Um.o oVar = new Um.o();
        oVar.q(h10);
        return oVar;
    }

    public final v u(v vVar) {
        v y10;
        char B10 = B();
        if (B10 == 0) {
            return null;
        }
        if (B10 == '\n') {
            y10 = y(vVar);
        } else if (B10 == '!') {
            y10 = p();
        } else if (B10 == '&') {
            y10 = s();
        } else if (B10 == '<') {
            y10 = m();
            if (y10 == null) {
                y10 = t();
            }
        } else if (B10 != '`') {
            switch (B10) {
                case '[':
                    y10 = z();
                    break;
                case '\\':
                    y10 = n();
                    break;
                case ']':
                    y10 = q();
                    break;
                default:
                    if (!this.f21825b.get(B10)) {
                        y10 = A();
                        break;
                    } else {
                        y10 = r(this.f21826c.get(Character.valueOf(B10)), B10);
                        break;
                    }
            }
        } else {
            y10 = o();
        }
        if (y10 != null) {
            return y10;
        }
        this.f21829f++;
        return L(String.valueOf(B10));
    }

    public final String v() {
        int a10 = Tm.c.a(this.f21828e, this.f21829f);
        if (a10 == -1) {
            return null;
        }
        String substring = B() == '<' ? this.f21828e.substring(this.f21829f + 1, a10 - 1) : this.f21828e.substring(this.f21829f, a10);
        this.f21829f = a10;
        return Tm.a.g(substring);
    }

    public int w() {
        if (this.f21829f < this.f21828e.length() && this.f21828e.charAt(this.f21829f) == '[') {
            int i10 = this.f21829f + 1;
            int c10 = Tm.c.c(this.f21828e, i10);
            int i11 = c10 - i10;
            if (c10 != -1 && i11 <= 999 && c10 < this.f21828e.length() && this.f21828e.charAt(c10) == ']') {
                this.f21829f = c10 + 1;
                return i11 + 2;
            }
        }
        return 0;
    }

    public final String x() {
        int d10 = Tm.c.d(this.f21828e, this.f21829f);
        if (d10 == -1) {
            return null;
        }
        String substring = this.f21828e.substring(this.f21829f + 1, d10 - 1);
        this.f21829f = d10;
        return Tm.a.g(substring);
    }

    public final v y(v vVar) {
        this.f21829f++;
        if (vVar instanceof A) {
            A a10 = (A) vVar;
            if (a10.p().endsWith(" ")) {
                String p10 = a10.p();
                Matcher matcher = f21823z.matcher(p10);
                int end = matcher.find() ? matcher.end() - matcher.start() : 0;
                if (end > 0) {
                    a10.q(p10.substring(0, p10.length() - end));
                }
                return end >= 2 ? new Um.l() : new y();
            }
        }
        return new y();
    }

    public final v z() {
        int i10 = this.f21829f;
        this.f21829f = i10 + 1;
        A L10 = L("[");
        b(e.b(L10, i10, this.f21831h, this.f21830g));
        return L10;
    }
}
