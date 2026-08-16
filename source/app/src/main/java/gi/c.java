package gi;

import Xh.t;
import android.provider.Telephony;
import androidx.exifinterface.media.ExifInterface;
import b2.AbstractC3834c;
import fi.C13227c;
import fi.C13228d;
import hi.E0;
import java.util.Hashtable;
import oh.C14530n;
import oh.C14549x;
import oh.C14554z0;
import oh.F0;
import oh.InterfaceC14516g;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import yd.C16179k;

public class c extends AbstractC13383a {

    public static final C14549x f89929A;

    public static final C14549x f89930B;

    public static final C14549x f89931C;

    public static final C14549x f89932D;

    public static final C14549x f89933E;

    public static final C14549x f89934F;

    public static final C14549x f89935G;

    public static final C14549x f89936H;

    public static final C14549x f89937I;

    public static final C14549x f89938J;

    public static final C14549x f89939K;

    public static final C14549x f89940L;

    public static final C14549x f89941M;

    public static final C14549x f89942N;

    public static final C14549x f89943O;

    public static final C14549x f89944P;

    public static final C14549x f89945Q;

    public static final Hashtable f89946R;

    public static final Hashtable f89947S;

    public static final fi.f f89948T;

    public static final C14549x f89949c;

    public static final C14549x f89950d;

    public static final C14549x f89951e;

    public static final C14549x f89952f;

    public static final C14549x f89953g;

    public static final C14549x f89954h;

    public static final C14549x f89955i;

    public static final C14549x f89956j;

    public static final C14549x f89957k;

    public static final C14549x f89958l;

    public static final C14549x f89959m;

    public static final C14549x f89960n;

    public static final C14549x f89961o;

    public static final C14549x f89962p;

    public static final C14549x f89963q;

    public static final C14549x f89964r;

    public static final C14549x f89965s;

    public static final C14549x f89966t;

    public static final C14549x f89967u;

    public static final C14549x f89968v;

    public static final C14549x f89969w;

    public static final C14549x f89970x;

    public static final C14549x f89971y;

    public static final C14549x f89972z;

    public final Hashtable f89974b = AbstractC13383a.i(f89946R);

    public final Hashtable f89973a = AbstractC13383a.i(f89947S);

    static {
        C14549x M10 = new C14549x("2.5.4.6").M();
        f89949c = M10;
        C14549x M11 = new C14549x("2.5.4.10").M();
        f89950d = M11;
        C14549x M12 = new C14549x("2.5.4.11").M();
        f89951e = M12;
        C14549x M13 = new C14549x("2.5.4.12").M();
        f89952f = M13;
        C14549x M14 = new C14549x("2.5.4.3").M();
        f89953g = M14;
        f89954h = new C14549x("2.5.4.5").M();
        C14549x M15 = new C14549x("2.5.4.9").M();
        f89955i = M15;
        C14549x M16 = new C14549x("2.5.4.5").M();
        f89956j = M16;
        C14549x M17 = new C14549x("2.5.4.7").M();
        f89957k = M17;
        C14549x M18 = new C14549x("2.5.4.8").M();
        f89958l = M18;
        C14549x M19 = new C14549x("2.5.4.4").M();
        f89959m = M19;
        C14549x M20 = new C14549x("2.5.4.42").M();
        f89960n = M20;
        C14549x M21 = new C14549x("2.5.4.43").M();
        f89961o = M21;
        C14549x M22 = new C14549x("2.5.4.44").M();
        f89962p = M22;
        C14549x M23 = new C14549x("2.5.4.45").M();
        f89963q = M23;
        C14549x M24 = new C14549x("2.5.4.13").M();
        f89964r = M24;
        C14549x M25 = new C14549x("2.5.4.15").M();
        f89965s = M25;
        C14549x M26 = new C14549x("2.5.4.17").M();
        f89966t = M26;
        C14549x M27 = new C14549x("2.5.4.46").M();
        f89967u = M27;
        C14549x M28 = new C14549x("2.5.4.65").M();
        f89968v = M28;
        C14549x M29 = new C14549x("2.5.4.72").M();
        f89969w = M29;
        C14549x M30 = new C14549x("1.3.6.1.5.5.7.9.1").M();
        f89970x = M30;
        C14549x M31 = new C14549x("1.3.6.1.5.5.7.9.2").M();
        f89971y = M31;
        C14549x M32 = new C14549x("1.3.6.1.5.5.7.9.3").M();
        f89972z = M32;
        C14549x M33 = new C14549x("1.3.6.1.5.5.7.9.4").M();
        f89929A = M33;
        C14549x M34 = new C14549x("1.3.6.1.5.5.7.9.5").M();
        f89930B = M34;
        C14549x M35 = new C14549x("1.3.36.8.3.14").M();
        f89931C = M35;
        C14549x M36 = new C14549x("2.5.4.16").M();
        f89932D = M36;
        f89933E = new C14549x("2.5.4.54").M();
        C14549x c14549x = E0.f90631Q4;
        f89934F = c14549x;
        C14549x c14549x2 = E0.f90632R4;
        f89935G = c14549x2;
        C14549x c14549x3 = E0.f90633S4;
        f89936H = c14549x3;
        C14549x c14549x4 = t.f29046Q1;
        f89937I = c14549x4;
        C14549x c14549x5 = t.f29052S1;
        f89938J = c14549x5;
        C14549x c14549x6 = t.f29078Z1;
        f89939K = c14549x6;
        f89940L = c14549x4;
        C14549x c14549x7 = new C14549x("0.9.2342.19200300.100.1.25");
        f89941M = c14549x7;
        C14549x c14549x8 = new C14549x("0.9.2342.19200300.100.1.1");
        f89942N = c14549x8;
        C14549x c14549x9 = new C14549x("1.3.6.1.4.1.311.60.2.1.3");
        f89943O = c14549x9;
        C14549x c14549x10 = new C14549x("1.3.6.1.4.1.311.60.2.1.2");
        f89944P = c14549x10;
        C14549x c14549x11 = new C14549x("1.3.6.1.4.1.311.60.2.1.1");
        f89945Q = c14549x11;
        Hashtable hashtable = new Hashtable();
        f89946R = hashtable;
        Hashtable hashtable2 = new Hashtable();
        f89947S = hashtable2;
        hashtable.put(M10, Signature.SIG_CHAR);
        hashtable.put(M11, "O");
        hashtable.put(M13, ExifInterface.GPS_DIRECTION_TRUE);
        hashtable.put(M12, "OU");
        hashtable.put(M14, "CN");
        hashtable.put(M17, "L");
        hashtable.put(M18, "ST");
        hashtable.put(M16, "SERIALNUMBER");
        hashtable.put(c14549x4, "E");
        hashtable.put(c14549x7, "DC");
        hashtable.put(c14549x8, "UID");
        hashtable.put(M15, "STREET");
        hashtable.put(M19, "SURNAME");
        hashtable.put(M20, "GIVENNAME");
        hashtable.put(M21, "INITIALS");
        hashtable.put(M22, "GENERATION");
        hashtable.put(M24, "DESCRIPTION");
        hashtable.put(M29, "ROLE");
        hashtable.put(c14549x6, "unstructuredAddress");
        hashtable.put(c14549x5, "unstructuredName");
        hashtable.put(M23, "UniqueIdentifier");
        hashtable.put(M27, "DN");
        hashtable.put(M28, "Pseudonym");
        hashtable.put(M36, "PostalAddress");
        hashtable.put(M35, "NameAtBirth");
        hashtable.put(M33, "CountryOfCitizenship");
        hashtable.put(M34, "CountryOfResidence");
        hashtable.put(M32, "Gender");
        hashtable.put(M31, "PlaceOfBirth");
        hashtable.put(M30, "DateOfBirth");
        hashtable.put(M26, "PostalCode");
        hashtable.put(M25, "BusinessCategory");
        hashtable.put(c14549x, "TelephoneNumber");
        hashtable.put(c14549x2, "Name");
        hashtable.put(c14549x3, "organizationIdentifier");
        hashtable.put(c14549x9, "jurisdictionCountry");
        hashtable.put(c14549x10, "jurisdictionState");
        hashtable.put(c14549x11, "jurisdictionLocality");
        hashtable2.put(AbstractC3834c.f32824b1, M10);
        hashtable2.put(C16179k.f130221g, M11);
        hashtable2.put("t", M13);
        hashtable2.put("ou", M12);
        hashtable2.put("cn", M14);
        hashtable2.put("l", M17);
        hashtable2.put(Telephony.BaseMmsColumns.STATUS, M18);
        hashtable2.put("sn", M19);
        hashtable2.put("serialnumber", M16);
        hashtable2.put("street", M15);
        hashtable2.put("emailaddress", c14549x4);
        hashtable2.put("dc", c14549x7);
        hashtable2.put(com.itsmagic.engine.Engines.Engine.Animation.a.f72598f, c14549x4);
        hashtable2.put("uid", c14549x8);
        hashtable2.put("surname", M19);
        hashtable2.put("givenname", M20);
        hashtable2.put("initials", M21);
        hashtable2.put("generation", M22);
        hashtable2.put("description", M24);
        hashtable2.put("role", M29);
        hashtable2.put("unstructuredaddress", c14549x6);
        hashtable2.put("unstructuredname", c14549x5);
        hashtable2.put("uniqueidentifier", M23);
        hashtable2.put("dn", M27);
        hashtable2.put("pseudonym", M28);
        hashtable2.put("postaladdress", M36);
        hashtable2.put("nameatbirth", M35);
        hashtable2.put("countryofcitizenship", M33);
        hashtable2.put("countryofresidence", M34);
        hashtable2.put("gender", M32);
        hashtable2.put("placeofbirth", M31);
        hashtable2.put("dateofbirth", M30);
        hashtable2.put("postalcode", M26);
        hashtable2.put("businesscategory", M25);
        hashtable2.put("telephonenumber", c14549x);
        hashtable2.put("name", c14549x2);
        hashtable2.put("organizationidentifier", c14549x3);
        hashtable2.put("jurisdictionCountry", c14549x9);
        hashtable2.put("jurisdictionState", c14549x10);
        hashtable2.put("jurisdictionLocality", c14549x11);
        f89948T = new c();
    }

    @Override
    public String c(C14549x c14549x) {
        return (String) this.f89974b.get(c14549x);
    }

    @Override
    public String[] e(C14549x c14549x) {
        return d.m(c14549x, this.f89973a);
    }

    @Override
    public C14549x f(String str) {
        return d.k(str, this.f89973a);
    }

    @Override
    public C13227c[] fromString(String str) {
        return d.q(str, this);
    }

    @Override
    public String g(C13228d c13228d) {
        StringBuffer stringBuffer = new StringBuffer();
        boolean z10 = true;
        for (C13227c c13227c : c13228d.z()) {
            if (z10) {
                z10 = false;
            } else {
                stringBuffer.append(IIndexConstants.PARAMETER_SEPARATOR);
            }
            d.d(stringBuffer, c13227c, this.f89974b);
        }
        return stringBuffer.toString();
    }

    @Override
    public InterfaceC14516g j(C14549x c14549x, String str) {
        return (c14549x.A(f89937I) || c14549x.A(f89941M)) ? new C14554z0(str) : c14549x.A(f89970x) ? new C14530n(str) : (c14549x.A(f89949c) || c14549x.A(f89956j) || c14549x.A(f89967u) || c14549x.A(f89934F) || c14549x.A(f89943O)) ? new F0(str) : super.j(c14549x, str);
    }
}
