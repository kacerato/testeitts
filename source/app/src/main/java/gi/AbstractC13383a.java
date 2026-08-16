package gi;

import fi.C13225a;
import fi.C13227c;
import fi.C13228d;
import java.io.IOException;
import java.util.Enumeration;
import java.util.Hashtable;
import oh.C14549x;
import oh.InterfaceC14516g;
import oh.M0;
import org.bouncycastle.asn1.ASN1ParsingException;

public abstract class AbstractC13383a implements fi.f {
    public static Hashtable i(Hashtable hashtable) {
        Hashtable hashtable2 = new Hashtable();
        Enumeration keys = hashtable.keys();
        while (keys.hasMoreElements()) {
            Object nextElement = keys.nextElement();
            hashtable2.put(nextElement, hashtable.get(nextElement));
        }
        return hashtable2;
    }

    @Override
    public InterfaceC14516g a(C14549x c14549x, String str) {
        if (str.length() == 0 || str.charAt(0) != '#') {
            if (str.length() != 0 && str.charAt(0) == '\\') {
                str = str.substring(1);
            }
            return j(c14549x, str);
        }
        try {
            return d.v(str, 1);
        } catch (IOException unused) {
            throw new ASN1ParsingException("can't recode value for oid " + c14549x.J());
        }
    }

    @Override
    public int b(C13228d c13228d) {
        C13227c[] z10 = c13228d.z();
        int i10 = 0;
        for (int i11 = 0; i11 != z10.length; i11++) {
            if (z10[i11].B()) {
                C13225a[] A10 = z10[i11].A();
                for (int i12 = 0; i12 != A10.length; i12++) {
                    i10 = (i10 ^ A10[i12].v().hashCode()) ^ h(A10[i12].x());
                }
            } else {
                i10 = (i10 ^ z10[i11].x().v().hashCode()) ^ h(z10[i11].x().x());
            }
        }
        return i10;
    }

    @Override
    public boolean d(C13228d c13228d, C13228d c13228d2) {
        if (c13228d.size() != c13228d2.size()) {
            return false;
        }
        C13227c[] z10 = c13228d.z();
        C13227c[] z11 = c13228d2.z();
        boolean z12 = (z10[0].x() == null || z11[0].x() == null) ? false : !r0.v().A(r1.v());
        for (int i10 = 0; i10 != z10.length; i10++) {
            if (!k(z12, z10[i10], z11)) {
                return false;
            }
        }
        return true;
    }

    public final int h(InterfaceC14516g interfaceC14516g) {
        return d.g(interfaceC14516g).hashCode();
    }

    public InterfaceC14516g j(C14549x c14549x, String str) {
        return new M0(str);
    }

    public final boolean k(boolean z10, C13227c c13227c, C13227c[] c13227cArr) {
        if (z10) {
            for (int length = c13227cArr.length - 1; length >= 0; length--) {
                C13227c c13227c2 = c13227cArr[length];
                if (c13227c2 != null && l(c13227c, c13227c2)) {
                    c13227cArr[length] = null;
                    return true;
                }
            }
        } else {
            for (int i10 = 0; i10 != c13227cArr.length; i10++) {
                C13227c c13227c3 = c13227cArr[i10];
                if (c13227c3 != null && l(c13227c, c13227c3)) {
                    c13227cArr[i10] = null;
                    return true;
                }
            }
        }
        return false;
    }

    public boolean l(C13227c c13227c, C13227c c13227c2) {
        return d.p(c13227c, c13227c2);
    }
}
