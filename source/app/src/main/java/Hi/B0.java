package hi;

import android.provider.Telephony;
import androidx.exifinterface.media.ExifInterface;
import b2.AbstractC3834c;
import fi.C13228d;
import java.io.IOException;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;
import oh.AbstractC14545v;
import oh.C14518h;
import oh.C14549x;
import oh.G0;
import oh.I0;
import oh.InterfaceC14516g;
import oh.InterfaceC14520i;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import yd.C16179k;
import yd.C16181m;

public class B0 extends AbstractC14545v {

    public static final C14549x f90554A;

    public static final C14549x f90555B;

    public static final C14549x f90556C;

    public static final C14549x f90557D;

    public static final C14549x f90558E;

    public static final C14549x f90559F;

    public static final C14549x f90560G;

    public static final C14549x f90561H;

    public static final C14549x f90562I;

    public static final C14549x f90563J;

    public static final C14549x f90564K;

    public static final C14549x f90565L;

    public static final C14549x f90566M;

    public static final C14549x f90567N;

    public static final C14549x f90568O;

    public static final C14549x f90569P;

    public static final C14549x f90570Q;

    public static boolean f90571R;

    public static final Hashtable f90572S;

    public static final Hashtable f90573T;

    public static final Hashtable f90574U;

    public static final Hashtable f90575V;

    public static final Hashtable f90576W;

    public static final Hashtable f90577X;

    public static final Boolean f90578Y;

    public static final Boolean f90579Z;

    public static final C14549x f90580i;

    public static final C14549x f90581j;

    public static final C14549x f90582k;

    public static final C14549x f90583l;

    public static final C14549x f90584m;

    public static final C14549x f90585n;

    public static final C14549x f90586o;

    public static final C14549x f90587p;

    public static final C14549x f90588q;

    public static final C14549x f90589r;

    public static final C14549x f90590s;

    public static final C14549x f90591t;

    public static final C14549x f90592u;

    public static final C14549x f90593v;

    public static final C14549x f90594w;

    public static final C14549x f90595x;

    public static final C14549x f90596y;

    public static final C14549x f90597z;

    public C0 f90598b;

    public Vector f90599c;

    public Vector f90600d;

    public Vector f90601e;

    public oh.E f90602f;

    public boolean f90603g;

    public int f90604h;

    static {
        C14549x c14549x = new C14549x("2.5.4.6");
        f90580i = c14549x;
        C14549x c14549x2 = new C14549x("2.5.4.10");
        f90581j = c14549x2;
        C14549x c14549x3 = new C14549x("2.5.4.11");
        f90582k = c14549x3;
        C14549x c14549x4 = new C14549x("2.5.4.12");
        f90583l = c14549x4;
        C14549x c14549x5 = new C14549x("2.5.4.3");
        f90584m = c14549x5;
        C14549x c14549x6 = new C14549x("2.5.4.5");
        f90585n = c14549x6;
        C14549x c14549x7 = new C14549x("2.5.4.9");
        f90586o = c14549x7;
        f90587p = c14549x6;
        C14549x c14549x8 = new C14549x("2.5.4.7");
        f90588q = c14549x8;
        C14549x c14549x9 = new C14549x("2.5.4.8");
        f90589r = c14549x9;
        C14549x c14549x10 = new C14549x("2.5.4.4");
        f90590s = c14549x10;
        C14549x c14549x11 = new C14549x("2.5.4.42");
        f90591t = c14549x11;
        C14549x c14549x12 = new C14549x("2.5.4.43");
        f90592u = c14549x12;
        C14549x c14549x13 = new C14549x("2.5.4.44");
        f90593v = c14549x13;
        C14549x c14549x14 = new C14549x("2.5.4.45");
        f90594w = c14549x14;
        C14549x c14549x15 = new C14549x("2.5.4.15");
        f90595x = c14549x15;
        C14549x c14549x16 = new C14549x("2.5.4.17");
        f90596y = c14549x16;
        C14549x c14549x17 = new C14549x("2.5.4.46");
        f90597z = c14549x17;
        C14549x c14549x18 = new C14549x("2.5.4.65");
        f90554A = c14549x18;
        C14549x c14549x19 = new C14549x("1.3.6.1.5.5.7.9.1");
        f90555B = c14549x19;
        C14549x c14549x20 = new C14549x("1.3.6.1.5.5.7.9.2");
        f90556C = c14549x20;
        C14549x c14549x21 = new C14549x("1.3.6.1.5.5.7.9.3");
        f90557D = c14549x21;
        C14549x c14549x22 = new C14549x("1.3.6.1.5.5.7.9.4");
        f90558E = c14549x22;
        C14549x c14549x23 = new C14549x("1.3.6.1.5.5.7.9.5");
        f90559F = c14549x23;
        C14549x c14549x24 = new C14549x("1.3.36.8.3.14");
        f90560G = c14549x24;
        C14549x c14549x25 = new C14549x("2.5.4.16");
        f90561H = c14549x25;
        f90562I = new C14549x("2.5.4.54");
        C14549x c14549x26 = E0.f90631Q4;
        f90563J = c14549x26;
        C14549x c14549x27 = E0.f90632R4;
        f90564K = c14549x27;
        C14549x c14549x28 = Xh.t.f29046Q1;
        f90565L = c14549x28;
        C14549x c14549x29 = Xh.t.f29052S1;
        f90566M = c14549x29;
        C14549x c14549x30 = Xh.t.f29078Z1;
        f90567N = c14549x30;
        f90568O = c14549x28;
        C14549x c14549x31 = new C14549x("0.9.2342.19200300.100.1.25");
        f90569P = c14549x31;
        C14549x c14549x32 = new C14549x("0.9.2342.19200300.100.1.1");
        f90570Q = c14549x32;
        f90571R = false;
        Hashtable hashtable = new Hashtable();
        f90572S = hashtable;
        Hashtable hashtable2 = new Hashtable();
        f90573T = hashtable2;
        Hashtable hashtable3 = new Hashtable();
        f90574U = hashtable3;
        Hashtable hashtable4 = new Hashtable();
        f90575V = hashtable4;
        f90576W = hashtable;
        f90577X = hashtable4;
        f90578Y = new Boolean(true);
        f90579Z = new Boolean(false);
        hashtable.put(c14549x, Signature.SIG_CHAR);
        hashtable.put(c14549x2, "O");
        hashtable.put(c14549x4, ExifInterface.GPS_DIRECTION_TRUE);
        hashtable.put(c14549x3, "OU");
        hashtable.put(c14549x5, "CN");
        hashtable.put(c14549x8, "L");
        hashtable.put(c14549x9, "ST");
        hashtable.put(c14549x6, "SERIALNUMBER");
        hashtable.put(c14549x28, "E");
        hashtable.put(c14549x31, "DC");
        hashtable.put(c14549x32, "UID");
        hashtable.put(c14549x7, "STREET");
        hashtable.put(c14549x10, "SURNAME");
        hashtable.put(c14549x11, "GIVENNAME");
        hashtable.put(c14549x12, "INITIALS");
        hashtable.put(c14549x13, "GENERATION");
        hashtable.put(c14549x30, "unstructuredAddress");
        hashtable.put(c14549x29, "unstructuredName");
        hashtable.put(c14549x14, "UniqueIdentifier");
        hashtable.put(c14549x17, "DN");
        hashtable.put(c14549x18, "Pseudonym");
        hashtable.put(c14549x25, "PostalAddress");
        hashtable.put(c14549x24, "NameAtBirth");
        hashtable.put(c14549x22, "CountryOfCitizenship");
        hashtable.put(c14549x23, "CountryOfResidence");
        hashtable.put(c14549x21, "Gender");
        hashtable.put(c14549x20, "PlaceOfBirth");
        hashtable.put(c14549x19, "DateOfBirth");
        hashtable.put(c14549x16, "PostalCode");
        hashtable.put(c14549x15, "BusinessCategory");
        hashtable.put(c14549x26, "TelephoneNumber");
        hashtable.put(c14549x27, "Name");
        hashtable2.put(c14549x, Signature.SIG_CHAR);
        hashtable2.put(c14549x2, "O");
        hashtable2.put(c14549x3, "OU");
        hashtable2.put(c14549x5, "CN");
        hashtable2.put(c14549x8, "L");
        hashtable2.put(c14549x9, "ST");
        hashtable2.put(c14549x7, "STREET");
        hashtable2.put(c14549x31, "DC");
        hashtable2.put(c14549x32, "UID");
        hashtable3.put(c14549x, Signature.SIG_CHAR);
        hashtable3.put(c14549x2, "O");
        hashtable3.put(c14549x3, "OU");
        hashtable3.put(c14549x5, "CN");
        hashtable3.put(c14549x8, "L");
        hashtable3.put(c14549x9, "ST");
        hashtable3.put(c14549x7, "STREET");
        hashtable4.put(AbstractC3834c.f32824b1, c14549x);
        hashtable4.put(C16179k.f130221g, c14549x2);
        hashtable4.put("t", c14549x4);
        hashtable4.put("ou", c14549x3);
        hashtable4.put("cn", c14549x5);
        hashtable4.put("l", c14549x8);
        hashtable4.put(Telephony.BaseMmsColumns.STATUS, c14549x9);
        hashtable4.put("sn", c14549x6);
        hashtable4.put("serialnumber", c14549x6);
        hashtable4.put("street", c14549x7);
        hashtable4.put("emailaddress", c14549x28);
        hashtable4.put("dc", c14549x31);
        hashtable4.put(com.itsmagic.engine.Engines.Engine.Animation.a.f72598f, c14549x28);
        hashtable4.put("uid", c14549x32);
        hashtable4.put("surname", c14549x10);
        hashtable4.put("givenname", c14549x11);
        hashtable4.put("initials", c14549x12);
        hashtable4.put("generation", c14549x13);
        hashtable4.put("unstructuredaddress", c14549x30);
        hashtable4.put("unstructuredname", c14549x29);
        hashtable4.put("uniqueidentifier", c14549x14);
        hashtable4.put("dn", c14549x17);
        hashtable4.put("pseudonym", c14549x18);
        hashtable4.put("postaladdress", c14549x25);
        hashtable4.put("nameofbirth", c14549x24);
        hashtable4.put("countryofcitizenship", c14549x22);
        hashtable4.put("countryofresidence", c14549x23);
        hashtable4.put("gender", c14549x21);
        hashtable4.put("placeofbirth", c14549x20);
        hashtable4.put("dateofbirth", c14549x19);
        hashtable4.put("postalcode", c14549x16);
        hashtable4.put("businesscategory", c14549x15);
        hashtable4.put("telephonenumber", c14549x26);
        hashtable4.put("name", c14549x27);
    }

    public B0() {
        this.f90598b = null;
        this.f90599c = new Vector();
        this.f90600d = new Vector();
        this.f90601e = new Vector();
    }

    public static B0 C(Object obj) {
        if (obj instanceof B0) {
            return (B0) obj;
        }
        if (obj instanceof C13228d) {
            return new B0(oh.E.G(((C13228d) obj).r()));
        }
        if (obj != null) {
            return new B0(oh.E.G(obj));
        }
        return null;
    }

    public static B0 D(oh.M m10, boolean z10) {
        return C(oh.E.H(m10, z10));
    }

    public boolean A(Object obj, boolean z10) {
        if (!z10) {
            return equals(obj);
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof B0) && !(obj instanceof oh.E)) {
            return false;
        }
        if (r().A(((InterfaceC14516g) obj).r())) {
            return true;
        }
        try {
            B0 C10 = C(obj);
            int size = this.f90599c.size();
            if (size != C10.f90599c.size()) {
                return false;
            }
            for (int i10 = 0; i10 < size; i10++) {
                if (!((C14549x) this.f90599c.elementAt(i10)).A((C14549x) C10.f90599c.elementAt(i10)) || !B((String) this.f90600d.elementAt(i10), (String) C10.f90600d.elementAt(i10))) {
                    return false;
                }
            }
            return true;
        } catch (IllegalArgumentException unused) {
            return false;
        }
    }

    public final boolean B(String str, String str2) {
        String x10 = x(str);
        String x11 = x(str2);
        return x10.equals(x11) || H(x10).equals(H(x11));
    }

    public Vector E() {
        Vector vector = new Vector();
        for (int i10 = 0; i10 != this.f90599c.size(); i10++) {
            vector.addElement(this.f90599c.elementAt(i10));
        }
        return vector;
    }

    public Vector F() {
        Vector vector = new Vector();
        for (int i10 = 0; i10 != this.f90600d.size(); i10++) {
            vector.addElement(this.f90600d.elementAt(i10));
        }
        return vector;
    }

    public Vector G(C14549x c14549x) {
        Vector vector = new Vector();
        for (int i10 = 0; i10 != this.f90600d.size(); i10++) {
            if (this.f90599c.elementAt(i10).equals(c14549x)) {
                String str = (String) this.f90600d.elementAt(i10);
                if (str.length() > 2 && str.charAt(0) == '\\' && str.charAt(1) == '#') {
                    str = str.substring(1);
                }
                vector.addElement(str);
            }
        }
        return vector;
    }

    public final String H(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        if (str.length() != 0) {
            char charAt = str.charAt(0);
            stringBuffer.append(charAt);
            int i10 = 1;
            while (i10 < str.length()) {
                char charAt2 = str.charAt(i10);
                if (charAt != ' ' || charAt2 != ' ') {
                    stringBuffer.append(charAt2);
                }
                i10++;
                charAt = charAt2;
            }
        }
        return stringBuffer.toString();
    }

    public String I(boolean z10, Hashtable hashtable) {
        StringBuffer stringBuffer = new StringBuffer();
        Vector vector = new Vector();
        StringBuffer stringBuffer2 = null;
        for (int i10 = 0; i10 < this.f90599c.size(); i10++) {
            if (((Boolean) this.f90601e.elementAt(i10)).booleanValue()) {
                stringBuffer2.append('+');
                v(stringBuffer2, hashtable, (C14549x) this.f90599c.elementAt(i10), (String) this.f90600d.elementAt(i10));
            } else {
                stringBuffer2 = new StringBuffer();
                v(stringBuffer2, hashtable, (C14549x) this.f90599c.elementAt(i10), (String) this.f90600d.elementAt(i10));
                vector.addElement(stringBuffer2);
            }
        }
        boolean z11 = true;
        if (z10) {
            for (int size = vector.size() - 1; size >= 0; size--) {
                if (z11) {
                    z11 = false;
                } else {
                    stringBuffer.append(IIndexConstants.PARAMETER_SEPARATOR);
                }
                stringBuffer.append(vector.elementAt(size).toString());
            }
        } else {
            for (int i11 = 0; i11 < vector.size(); i11++) {
                if (z11) {
                    z11 = false;
                } else {
                    stringBuffer.append(IIndexConstants.PARAMETER_SEPARATOR);
                }
                stringBuffer.append(vector.elementAt(i11).toString());
            }
        }
        return stringBuffer.toString();
    }

    public final String J(String str) {
        int i10;
        if (str.length() == 0 || (str.indexOf(92) < 0 && str.indexOf(34) < 0)) {
            return str.trim();
        }
        char[] charArray = str.toCharArray();
        StringBuffer stringBuffer = new StringBuffer(str.length());
        if (charArray[0] == '\\' && charArray[1] == '#') {
            stringBuffer.append("\\#");
            i10 = 2;
        } else {
            i10 = 0;
        }
        boolean z10 = false;
        int i11 = 0;
        boolean z11 = false;
        boolean z12 = false;
        while (i10 != charArray.length) {
            char c10 = charArray[i10];
            if (c10 != ' ') {
                z12 = true;
            }
            if (c10 != '\"') {
                if (c10 == '\\' && !z10 && !z11) {
                    i11 = stringBuffer.length();
                    z10 = true;
                } else if (c10 == ' ' && !z10 && !z12) {
                }
                i10++;
            } else if (!z10) {
                z11 = !z11;
                z10 = false;
                i10++;
            }
            stringBuffer.append(c10);
            z10 = false;
            i10++;
        }
        if (stringBuffer.length() > 0) {
            while (stringBuffer.charAt(stringBuffer.length() - 1) == ' ' && i11 != stringBuffer.length() - 1) {
                stringBuffer.setLength(stringBuffer.length() - 1);
            }
        }
        return stringBuffer.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0085, code lost:
    
        r3[r9] = true;
        r4 = r4 + r6;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean equals(Object obj) {
        int i10;
        int i11;
        int i12;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof B0) && !(obj instanceof oh.E)) {
            return false;
        }
        if (r().A(((InterfaceC14516g) obj).r())) {
            return true;
        }
        try {
            B0 C10 = C(obj);
            int size = this.f90599c.size();
            if (size != C10.f90599c.size()) {
                return false;
            }
            boolean[] zArr = new boolean[size];
            if (this.f90599c.elementAt(0).equals(C10.f90599c.elementAt(0))) {
                i12 = 1;
                i11 = size;
                i10 = 0;
            } else {
                i10 = size - 1;
                i11 = -1;
                i12 = -1;
            }
            while (i10 != i11) {
                C14549x c14549x = (C14549x) this.f90599c.elementAt(i10);
                String str = (String) this.f90600d.elementAt(i10);
                int i13 = 0;
                while (i13 < size) {
                    if (!zArr[i13] && c14549x.A((C14549x) C10.f90599c.elementAt(i13)) && B(str, (String) C10.f90600d.elementAt(i13))) {
                        break;
                    }
                    i13++;
                }
                return false;
            }
            return true;
        } catch (IllegalArgumentException unused) {
            return false;
        }
    }

    @Override
    public int hashCode() {
        if (this.f90603g) {
            return this.f90604h;
        }
        this.f90603g = true;
        for (int i10 = 0; i10 != this.f90599c.size(); i10++) {
            String H10 = H(x((String) this.f90600d.elementAt(i10)));
            int hashCode = this.f90604h ^ this.f90599c.elementAt(i10).hashCode();
            this.f90604h = hashCode;
            this.f90604h = H10.hashCode() ^ hashCode;
        }
        return this.f90604h;
    }

    @Override
    public oh.B r() {
        G0 g02;
        if (this.f90602f == null) {
            C14518h c14518h = new C14518h();
            C14518h c14518h2 = new C14518h();
            C14549x c14549x = null;
            int i10 = 0;
            while (i10 != this.f90599c.size()) {
                C14518h c14518h3 = new C14518h(2);
                C14549x c14549x2 = (C14549x) this.f90599c.elementAt(i10);
                c14518h3.a(c14549x2);
                c14518h3.a(this.f90598b.c(c14549x2, (String) this.f90600d.elementAt(i10)));
                if (c14549x == null || ((Boolean) this.f90601e.elementAt(i10)).booleanValue()) {
                    g02 = new G0(c14518h3);
                } else {
                    c14518h.a(new I0(c14518h2));
                    c14518h2 = new C14518h();
                    g02 = new G0(c14518h3);
                }
                c14518h2.a(g02);
                i10++;
                c14549x = c14549x2;
            }
            c14518h.a(new I0(c14518h2));
            this.f90602f = new G0(c14518h);
        }
        return this.f90602f;
    }

    public String toString() {
        return I(f90571R, f90572S);
    }

    public final void u(Hashtable hashtable, String str, Boolean bool) {
        D0 d02 = new D0(str, '=');
        String b10 = d02.b();
        if (!d02.a()) {
            throw new IllegalArgumentException("badly formatted directory string");
        }
        String b11 = d02.b();
        this.f90599c.addElement(y(b10, hashtable));
        this.f90600d.addElement(J(b11));
        this.f90601e.addElement(bool);
    }

    public final void v(StringBuffer stringBuffer, Hashtable hashtable, C14549x c14549x, String str) {
        String str2 = (String) hashtable.get(c14549x);
        if (str2 == null) {
            str2 = c14549x.J();
        }
        stringBuffer.append(str2);
        stringBuffer.append('=');
        int length = stringBuffer.length();
        stringBuffer.append(str);
        int length2 = stringBuffer.length();
        if (str.length() >= 2 && str.charAt(0) == '\\' && str.charAt(1) == '#') {
            length += 2;
        }
        while (length < length2 && stringBuffer.charAt(length) == ' ') {
            stringBuffer.insert(length, C16181m.f130232i);
            length += 2;
            length2++;
        }
        while (true) {
            length2--;
            if (length2 <= length || stringBuffer.charAt(length2) != ' ') {
                break;
            } else {
                stringBuffer.insert(length2, JavaElement.JEM_ESCAPE);
            }
        }
        while (length <= length2) {
            char charAt = stringBuffer.charAt(length);
            if (charAt != '\"' && charAt != '\\' && charAt != '+' && charAt != ',') {
                switch (charAt) {
                    case ';':
                    case '<':
                    case '=':
                    case '>':
                        break;
                    default:
                        length++;
                        continue;
                }
            }
            stringBuffer.insert(length, C16181m.f130232i);
            length += 2;
            length2++;
        }
    }

    public final String w(byte[] bArr) {
        int length = bArr.length;
        char[] cArr = new char[length];
        for (int i10 = 0; i10 != length; i10++) {
            cArr[i10] = (char) (bArr[i10] & 255);
        }
        return new String(cArr);
    }

    public final String x(String str) {
        String l10 = org.bouncycastle.util.w.l(str.trim());
        if (l10.length() <= 0 || l10.charAt(0) != '#') {
            return l10;
        }
        InterfaceC14516g z10 = z(l10);
        return z10 instanceof oh.J ? org.bouncycastle.util.w.l(((oh.J) z10).getString().trim()) : l10;
    }

    public final C14549x y(String str, Hashtable hashtable) {
        String trim = str.trim();
        if (trim.regionMatches(true, 0, "OID.", 0, 4)) {
            return new C14549x(trim.substring(4));
        }
        C14549x R10 = C14549x.R(trim);
        if (R10 != null) {
            return R10;
        }
        C14549x c14549x = (C14549x) hashtable.get(org.bouncycastle.util.w.l(trim));
        if (c14549x != null) {
            return c14549x;
        }
        throw new IllegalArgumentException("Unknown object id - " + trim + " - passed to distinguished name");
    }

    public final oh.B z(String str) {
        try {
            return oh.B.B(em.h.e(str, 1, str.length() - 1));
        } catch (IOException e10) {
            throw new IllegalStateException("unknown encoding in name: " + ((Object) e10));
        }
    }

    public B0(String str) {
        this(f90571R, f90575V, str);
    }

    public B0(String str, C0 c02) {
        this(f90571R, f90575V, str, c02);
    }

    public B0(Hashtable hashtable) {
        this((Vector) null, hashtable);
    }

    public B0(Vector vector, Hashtable hashtable) {
        this(vector, hashtable, new x0());
    }

    public B0(Vector vector, Hashtable hashtable, C0 c02) {
        this.f90598b = null;
        this.f90599c = new Vector();
        this.f90600d = new Vector();
        this.f90601e = new Vector();
        this.f90598b = c02;
        if (vector != null) {
            for (int i10 = 0; i10 != vector.size(); i10++) {
                this.f90599c.addElement(vector.elementAt(i10));
                this.f90601e.addElement(f90579Z);
            }
        } else {
            Enumeration keys = hashtable.keys();
            while (keys.hasMoreElements()) {
                this.f90599c.addElement(keys.nextElement());
                this.f90601e.addElement(f90579Z);
            }
        }
        for (int i11 = 0; i11 != this.f90599c.size(); i11++) {
            C14549x c14549x = (C14549x) this.f90599c.elementAt(i11);
            if (hashtable.get(c14549x) == null) {
                throw new IllegalArgumentException("No attribute for object id - " + c14549x.J() + " - passed to distinguished name");
            }
            this.f90600d.addElement(hashtable.get(c14549x));
        }
    }

    public B0(Vector vector, Vector vector2) {
        this(vector, vector2, new x0());
    }

    public B0(Vector vector, Vector vector2, C0 c02) {
        this.f90598b = null;
        this.f90599c = new Vector();
        this.f90600d = new Vector();
        this.f90601e = new Vector();
        this.f90598b = c02;
        if (vector.size() != vector2.size()) {
            throw new IllegalArgumentException("oids vector must be same length as values.");
        }
        for (int i10 = 0; i10 < vector.size(); i10++) {
            this.f90599c.addElement(vector.elementAt(i10));
            this.f90600d.addElement(vector2.elementAt(i10));
            this.f90601e.addElement(f90579Z);
        }
    }

    public B0(oh.E e10) {
        Vector vector;
        this.f90598b = null;
        this.f90599c = new Vector();
        this.f90600d = new Vector();
        this.f90601e = new Vector();
        this.f90602f = e10;
        Enumeration J10 = e10.J();
        while (J10.hasMoreElements()) {
            oh.G F10 = oh.G.F(((InterfaceC14516g) J10.nextElement()).r());
            int i10 = 0;
            while (i10 < F10.size()) {
                oh.E G10 = oh.E.G(F10.H(i10).r());
                if (G10.size() != 2) {
                    throw new IllegalArgumentException("badly sized pair");
                }
                this.f90599c.addElement(C14549x.K(G10.I(0)));
                InterfaceC14516g I10 = G10.I(1);
                if (!(I10 instanceof oh.J) || (I10 instanceof oh.S)) {
                    try {
                        this.f90600d.addElement(C16181m.f130230g + w(em.h.h(I10.r().s(InterfaceC14520i.f98892a))));
                    } catch (IOException unused) {
                        throw new IllegalArgumentException("cannot encode value");
                    }
                } else {
                    String string = ((oh.J) I10).getString();
                    if (string.length() <= 0 || string.charAt(0) != '#') {
                        vector = this.f90600d;
                    } else {
                        vector = this.f90600d;
                        string = C16181m.f130232i + string;
                    }
                    vector.addElement(string);
                }
                this.f90601e.addElement(i10 != 0 ? f90578Y : f90579Z);
                i10++;
            }
        }
    }

    public B0(boolean z10, String str) {
        this(z10, f90575V, str);
    }

    public B0(boolean z10, String str, C0 c02) {
        this(z10, f90575V, str, c02);
    }

    public B0(boolean z10, Hashtable hashtable, String str) {
        this(z10, hashtable, str, new x0());
    }

    public B0(boolean z10, Hashtable hashtable, String str, C0 c02) {
        this.f90598b = null;
        this.f90599c = new Vector();
        this.f90600d = new Vector();
        this.f90601e = new Vector();
        this.f90598b = c02;
        D0 d02 = new D0(str);
        while (d02.a()) {
            String b10 = d02.b();
            if (b10.indexOf(43) > 0) {
                D0 d03 = new D0(b10, '+');
                String b11 = d03.b();
                Boolean bool = f90579Z;
                while (true) {
                    u(hashtable, b11, bool);
                    if (d03.a()) {
                        b11 = d03.b();
                        bool = f90578Y;
                    }
                }
            } else {
                u(hashtable, b10, f90579Z);
            }
        }
        if (z10) {
            Vector vector = new Vector();
            Vector vector2 = new Vector();
            Vector vector3 = new Vector();
            int i10 = 1;
            for (int i11 = 0; i11 < this.f90599c.size(); i11++) {
                if (((Boolean) this.f90601e.elementAt(i11)).booleanValue()) {
                    vector.insertElementAt(this.f90599c.elementAt(i11), i10);
                    vector2.insertElementAt(this.f90600d.elementAt(i11), i10);
                    vector3.insertElementAt(this.f90601e.elementAt(i11), i10);
                    i10++;
                } else {
                    vector.insertElementAt(this.f90599c.elementAt(i11), 0);
                    vector2.insertElementAt(this.f90600d.elementAt(i11), 0);
                    vector3.insertElementAt(this.f90601e.elementAt(i11), 0);
                    i10 = 1;
                }
            }
            this.f90599c = vector;
            this.f90600d = vector2;
            this.f90601e = vector3;
        }
    }
}
