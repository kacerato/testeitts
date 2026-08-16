package gi;

import com.bumptech.glide.load.engine.GlideException;
import em.h;
import fi.C13225a;
import fi.C13227c;
import fi.C13229e;
import java.io.IOException;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;
import oh.B;
import oh.C14549x;
import oh.InterfaceC14516g;
import oh.InterfaceC14520i;
import oh.J;
import oh.S;
import org.bouncycastle.util.w;
import org.eclipse.jdt.internal.core.JavaElement;
import yd.C16181m;

public class d {
    public static void a(fi.f fVar, C13229e c13229e, f fVar2) {
        String b10 = fVar2.b();
        if (b10 == null) {
            throw new IllegalArgumentException("badly formatted directory string");
        }
        if (!fVar2.a()) {
            b(fVar, c13229e, b10);
            return;
        }
        Vector vector = new Vector();
        Vector vector2 = new Vector();
        do {
            i(fVar, vector, vector2, b10);
            b10 = fVar2.b();
        } while (b10 != null);
        c13229e.b(s(vector), t(vector2));
    }

    public static void b(fi.f fVar, C13229e c13229e, String str) {
        f fVar2 = new f(str, '=');
        c13229e.e(fVar.f(o(fVar2, true).trim()), u(o(fVar2, false)));
    }

    public static void c(fi.f fVar, C13229e c13229e, f fVar2) {
        while (true) {
            String b10 = fVar2.b();
            if (b10 == null) {
                return;
            }
            if (b10.indexOf(43) >= 0) {
                a(fVar, c13229e, new f(b10, '+'));
            } else {
                b(fVar, c13229e, b10);
            }
        }
    }

    public static void d(StringBuffer stringBuffer, C13227c c13227c, Hashtable hashtable) {
        if (!c13227c.B()) {
            if (c13227c.x() != null) {
                e(stringBuffer, c13227c.x(), hashtable);
                return;
            }
            return;
        }
        C13225a[] A10 = c13227c.A();
        boolean z10 = true;
        for (int i10 = 0; i10 != A10.length; i10++) {
            if (z10) {
                z10 = false;
            } else {
                stringBuffer.append('+');
            }
            e(stringBuffer, A10[i10], hashtable);
        }
    }

    public static void e(StringBuffer stringBuffer, C13225a c13225a, Hashtable hashtable) {
        String str = (String) hashtable.get(c13225a.v());
        if (str == null) {
            str = c13225a.v().J();
        }
        stringBuffer.append(str);
        stringBuffer.append('=');
        stringBuffer.append(w(c13225a.x()));
    }

    public static boolean f(C13225a c13225a, C13225a c13225a2) {
        if (c13225a == c13225a2) {
            return true;
        }
        return c13225a != null && c13225a2 != null && c13225a.v().A(c13225a2.v()) && g(c13225a.x()).equals(g(c13225a2.x()));
    }

    public static String g(InterfaceC14516g interfaceC14516g) {
        return h(w(interfaceC14516g));
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x005a, code lost:
    
        if (r5 >= r0) goto L30;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String h(String str) {
        int i10 = 0;
        if (str.length() > 0 && str.charAt(0) == '#') {
            InterfaceC14516g l10 = l(str);
            if (l10 instanceof J) {
                str = ((J) l10).getString();
            }
        }
        String l11 = w.l(str);
        int length = l11.length();
        if (length < 2) {
            return l11;
        }
        int i11 = length - 1;
        while (i10 < i11 && l11.charAt(i10) == '\\' && l11.charAt(i10 + 1) == ' ') {
            i10 += 2;
        }
        int i12 = i10 + 1;
        int i13 = i11;
        while (i13 > i12 && l11.charAt(i13 - 1) == '\\' && l11.charAt(i13) == ' ') {
            i13 -= 2;
        }
        l11 = l11.substring(i10, i13 + 1);
        return r(l11);
    }

    public static void i(fi.f fVar, Vector vector, Vector vector2, String str) {
        f fVar2 = new f(str, '=');
        String o10 = o(fVar2, true);
        String o11 = o(fVar2, false);
        C14549x f10 = fVar.f(o10.trim());
        String u10 = u(o11);
        vector.addElement(f10);
        vector2.addElement(u10);
    }

    public static int j(char c10) {
        return ('0' > c10 || c10 > '9') ? ('a' > c10 || c10 > 'f') ? c10 - '7' : c10 - 'W' : c10 - '0';
    }

    public static C14549x k(String str, Hashtable hashtable) {
        if (str.regionMatches(true, 0, "OID.", 0, 4)) {
            return new C14549x(str.substring(4));
        }
        C14549x R10 = C14549x.R(str);
        if (R10 != null) {
            return R10;
        }
        C14549x c14549x = (C14549x) hashtable.get(w.l(str));
        if (c14549x != null) {
            return c14549x;
        }
        throw new IllegalArgumentException("Unknown object id - " + str + " - passed to distinguished name");
    }

    public static B l(String str) {
        try {
            return B.B(h.e(str, 1, str.length() - 1));
        } catch (IOException e10) {
            throw new IllegalStateException("unknown encoding in name: " + ((Object) e10));
        }
    }

    public static String[] m(C14549x c14549x, Hashtable hashtable) {
        Enumeration elements = hashtable.elements();
        int i10 = 0;
        int i11 = 0;
        while (elements.hasMoreElements()) {
            if (c14549x.equals(elements.nextElement())) {
                i11++;
            }
        }
        String[] strArr = new String[i11];
        Enumeration keys = hashtable.keys();
        while (keys.hasMoreElements()) {
            String str = (String) keys.nextElement();
            if (c14549x.equals(hashtable.get(str))) {
                strArr[i10] = str;
                i10++;
            }
        }
        return strArr;
    }

    public static boolean n(char c10) {
        return ('0' <= c10 && c10 <= '9') || ('a' <= c10 && c10 <= 'f') || ('A' <= c10 && c10 <= 'F');
    }

    public static String o(f fVar, boolean z10) {
        String b10 = fVar.b();
        if (b10 == null || fVar.a() != z10) {
            throw new IllegalArgumentException("badly formatted directory string");
        }
        return b10;
    }

    public static boolean p(C13227c c13227c, C13227c c13227c2) {
        if (c13227c.size() != c13227c2.size()) {
            return false;
        }
        C13225a[] A10 = c13227c.A();
        C13225a[] A11 = c13227c2.A();
        if (A10.length != A11.length) {
            return false;
        }
        for (int i10 = 0; i10 != A10.length; i10++) {
            if (!f(A10[i10], A11[i10])) {
                return false;
            }
        }
        return true;
    }

    public static C13227c[] q(String str, fi.f fVar) {
        f fVar2 = new f(str);
        C13229e c13229e = new C13229e(fVar);
        c(fVar, c13229e, fVar2);
        return c13229e.g().z();
    }

    public static String r(String str) {
        if (str.indexOf(GlideException.a.f59088e) < 0) {
            return str;
        }
        StringBuffer stringBuffer = new StringBuffer();
        char charAt = str.charAt(0);
        stringBuffer.append(charAt);
        for (int i10 = 1; i10 < str.length(); i10++) {
            char charAt2 = str.charAt(i10);
            if (charAt != ' ' || charAt2 != ' ') {
                stringBuffer.append(charAt2);
                charAt = charAt2;
            }
        }
        return stringBuffer.toString();
    }

    public static C14549x[] s(Vector vector) {
        int size = vector.size();
        C14549x[] c14549xArr = new C14549x[size];
        for (int i10 = 0; i10 != size; i10++) {
            c14549xArr[i10] = (C14549x) vector.elementAt(i10);
        }
        return c14549xArr;
    }

    public static String[] t(Vector vector) {
        int size = vector.size();
        String[] strArr = new String[size];
        for (int i10 = 0; i10 != size; i10++) {
            strArr[i10] = (String) vector.elementAt(i10);
        }
        return strArr;
    }

    public static String u(String str) {
        int i10;
        if (str.length() == 0) {
            return str;
        }
        if (str.indexOf(92) < 0 && str.indexOf(34) < 0) {
            return str.trim();
        }
        StringBuffer stringBuffer = new StringBuffer(str.length());
        if (str.charAt(0) == '\\' && str.charAt(1) == '#') {
            stringBuffer.append("\\#");
            i10 = 2;
        } else {
            i10 = 0;
        }
        boolean z10 = false;
        int i11 = 0;
        boolean z11 = false;
        boolean z12 = false;
        char c10 = 0;
        while (i10 != str.length()) {
            char charAt = str.charAt(i10);
            if (charAt != ' ') {
                z12 = true;
            }
            if (charAt == '\"') {
                if (!z10) {
                    z11 = !z11;
                }
                stringBuffer.append(charAt);
                z10 = false;
            } else if (charAt == '\\' && !z10 && !z11) {
                i11 = stringBuffer.length();
                z10 = true;
            } else if (charAt != ' ' || z10 || z12) {
                if (z10 && n(charAt)) {
                    if (c10 != 0) {
                        stringBuffer.append((char) ((j(c10) * 16) + j(charAt)));
                        z10 = false;
                        c10 = 0;
                    } else {
                        c10 = charAt;
                    }
                }
                stringBuffer.append(charAt);
                z10 = false;
            }
            i10++;
        }
        if (stringBuffer.length() > 0) {
            while (stringBuffer.charAt(stringBuffer.length() - 1) == ' ' && i11 != stringBuffer.length() - 1) {
                stringBuffer.setLength(stringBuffer.length() - 1);
            }
        }
        return stringBuffer.toString();
    }

    public static InterfaceC14516g v(String str, int i10) throws IOException {
        int length = (str.length() - i10) / 2;
        byte[] bArr = new byte[length];
        for (int i11 = 0; i11 != length; i11++) {
            int i12 = (i11 * 2) + i10;
            char charAt = str.charAt(i12);
            char charAt2 = str.charAt(i12 + 1);
            bArr[i11] = (byte) (j(charAt2) | (j(charAt) << 4));
        }
        return B.B(bArr);
    }

    public static String w(InterfaceC14516g interfaceC14516g) {
        StringBuffer stringBuffer = new StringBuffer();
        int i10 = 0;
        if (!(interfaceC14516g instanceof J) || (interfaceC14516g instanceof S)) {
            try {
                stringBuffer.append(JavaElement.JEM_IMPORTDECLARATION);
                stringBuffer.append(h.j(interfaceC14516g.r().s(InterfaceC14520i.f98892a)));
            } catch (IOException unused) {
                throw new IllegalArgumentException("Other value has no encoded form");
            }
        } else {
            String string = ((J) interfaceC14516g).getString();
            if (string.length() > 0 && string.charAt(0) == '#') {
                stringBuffer.append(JavaElement.JEM_ESCAPE);
            }
            stringBuffer.append(string);
        }
        int length = stringBuffer.length();
        int i11 = (stringBuffer.length() >= 2 && stringBuffer.charAt(0) == '\\' && stringBuffer.charAt(1) == '#') ? 2 : 0;
        while (i11 != length) {
            char charAt = stringBuffer.charAt(i11);
            if (charAt != '\"' && charAt != '\\' && charAt != '+' && charAt != ',') {
                switch (charAt) {
                    case ';':
                    case '<':
                    case '=':
                    case '>':
                        break;
                    default:
                        i11++;
                        continue;
                }
            }
            stringBuffer.insert(i11, C16181m.f130232i);
            i11 += 2;
            length++;
        }
        if (stringBuffer.length() > 0) {
            while (stringBuffer.length() > i10 && stringBuffer.charAt(i10) == ' ') {
                stringBuffer.insert(i10, C16181m.f130232i);
                i10 += 2;
            }
        }
        for (int length2 = stringBuffer.length() - 1; length2 >= i10 && stringBuffer.charAt(length2) == ' '; length2--) {
            stringBuffer.insert(length2, JavaElement.JEM_ESCAPE);
        }
        return stringBuffer.toString();
    }
}
