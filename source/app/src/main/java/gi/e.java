package gi;

import android.provider.Telephony;
import android.view.View;
import b2.AbstractC3834c;
import fi.C13227c;
import fi.C13228d;
import java.util.Hashtable;
import oh.C14549x;
import oh.C14554z0;
import oh.F0;
import oh.InterfaceC14516g;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import yd.C16179k;

public class e extends AbstractC13383a {

    public static final C14549x f89975A;

    public static final C14549x f89976B;

    public static final C14549x f89977C;

    public static final C14549x f89978D;

    public static final C14549x f89979E;

    public static final C14549x f89980F;

    public static final C14549x f89981G;

    public static final C14549x f89982H;

    public static final C14549x f89983I;

    public static final C14549x f89984J;

    public static final C14549x f89985K;

    public static final C14549x f89986L;

    public static final C14549x f89987M;

    public static final C14549x f89988N;

    public static final C14549x f89989O;

    public static final C14549x f89990P;

    public static final C14549x f89991Q;

    public static final C14549x f89992R;

    public static final C14549x f89993S;

    public static final Hashtable f89994T;

    public static final Hashtable f89995U;

    public static final fi.f f89996V;

    public static final C14549x f89997c;

    public static final C14549x f89998d;

    public static final C14549x f89999e;

    public static final C14549x f90000f;

    public static final C14549x f90001g;

    public static final C14549x f90002h;

    public static final C14549x f90003i;

    public static final C14549x f90004j;

    public static final C14549x f90005k;

    public static final C14549x f90006l;

    public static final C14549x f90007m;

    public static final C14549x f90008n;

    public static final C14549x f90009o;

    public static final C14549x f90010p;

    public static final C14549x f90011q;

    public static final C14549x f90012r;

    public static final C14549x f90013s;

    public static final C14549x f90014t;

    public static final C14549x f90015u;

    public static final C14549x f90016v;

    public static final C14549x f90017w;

    public static final C14549x f90018x;

    public static final C14549x f90019y;

    public static final C14549x f90020z;

    public final Hashtable f90022b = AbstractC13383a.i(f89994T);

    public final Hashtable f90021a = AbstractC13383a.i(f89995U);

    static {
        C14549x M10 = new C14549x("2.5.4.15").M();
        f89997c = M10;
        C14549x M11 = new C14549x("2.5.4.6").M();
        f89998d = M11;
        C14549x M12 = new C14549x("2.5.4.3").M();
        f89999e = M12;
        C14549x M13 = new C14549x("0.9.2342.19200300.100.1.25").M();
        f90000f = M13;
        C14549x M14 = new C14549x("2.5.4.13").M();
        f90001g = M14;
        C14549x M15 = new C14549x("2.5.4.27").M();
        f90002h = M15;
        C14549x M16 = new C14549x("2.5.4.49").M();
        f90003i = M16;
        C14549x M17 = new C14549x("2.5.4.46").M();
        f90004j = M17;
        C14549x M18 = new C14549x("2.5.4.47").M();
        f90005k = M18;
        C14549x M19 = new C14549x("2.5.4.23").M();
        f90006l = M19;
        C14549x M20 = new C14549x("2.5.4.44").M();
        f90007m = M20;
        C14549x M21 = new C14549x("2.5.4.42").M();
        f90008n = M21;
        C14549x M22 = new C14549x("2.5.4.51").M();
        f90009o = M22;
        C14549x M23 = new C14549x("2.5.4.43").M();
        f90010p = M23;
        C14549x M24 = new C14549x("2.5.4.25").M();
        f90011q = M24;
        C14549x M25 = new C14549x("2.5.4.7").M();
        f90012r = M25;
        C14549x M26 = new C14549x("2.5.4.31").M();
        f90013s = M26;
        C14549x M27 = new C14549x("2.5.4.41").M();
        f90014t = M27;
        C14549x M28 = new C14549x("2.5.4.10").M();
        f90015u = M28;
        C14549x M29 = new C14549x("2.5.4.11").M();
        f90016v = M29;
        C14549x M30 = new C14549x("2.5.4.32").M();
        f90017w = M30;
        C14549x M31 = new C14549x("2.5.4.19").M();
        f90018x = M31;
        C14549x M32 = new C14549x("2.5.4.16").M();
        f90019y = M32;
        C14549x M33 = new C14549x("2.5.4.17").M();
        f90020z = M33;
        C14549x M34 = new C14549x("2.5.4.18").M();
        f89975A = M34;
        C14549x M35 = new C14549x("2.5.4.28").M();
        f89976B = M35;
        C14549x M36 = new C14549x("2.5.4.26").M();
        f89977C = M36;
        C14549x M37 = new C14549x("2.5.4.33").M();
        f89978D = M37;
        C14549x M38 = new C14549x("2.5.4.14").M();
        f89979E = M38;
        C14549x M39 = new C14549x("2.5.4.34").M();
        f89980F = M39;
        C14549x M40 = new C14549x("2.5.4.5").M();
        f89981G = M40;
        C14549x M41 = new C14549x("2.5.4.4").M();
        f89982H = M41;
        C14549x M42 = new C14549x("2.5.4.8").M();
        f89983I = M42;
        C14549x M43 = new C14549x("2.5.4.9").M();
        f89984J = M43;
        C14549x M44 = new C14549x("2.5.4.20").M();
        f89985K = M44;
        C14549x M45 = new C14549x("2.5.4.22").M();
        f89986L = M45;
        C14549x M46 = new C14549x("2.5.4.21").M();
        f89987M = M46;
        C14549x M47 = new C14549x("2.5.4.12").M();
        f89988N = M47;
        C14549x M48 = new C14549x("0.9.2342.19200300.100.1.1").M();
        f89989O = M48;
        C14549x M49 = new C14549x("2.5.4.50").M();
        f89990P = M49;
        C14549x M50 = new C14549x("2.5.4.35").M();
        f89991Q = M50;
        C14549x M51 = new C14549x("2.5.4.24").M();
        f89992R = M51;
        C14549x M52 = new C14549x("2.5.4.45").M();
        f89993S = M52;
        Hashtable hashtable = new Hashtable();
        f89994T = hashtable;
        Hashtable hashtable2 = new Hashtable();
        f89995U = hashtable2;
        hashtable.put(M10, "businessCategory");
        hashtable.put(M11, AbstractC3834c.f32824b1);
        hashtable.put(M12, "cn");
        hashtable.put(M13, "dc");
        hashtable.put(M14, "description");
        hashtable.put(M15, "destinationIndicator");
        hashtable.put(M16, "distinguishedName");
        hashtable.put(M17, "dnQualifier");
        hashtable.put(M18, "enhancedSearchGuide");
        hashtable.put(M19, "facsimileTelephoneNumber");
        hashtable.put(M20, "generationQualifier");
        hashtable.put(M21, "givenName");
        hashtable.put(M22, "houseIdentifier");
        hashtable.put(M23, "initials");
        hashtable.put(M24, "internationalISDNNumber");
        hashtable.put(M25, "l");
        hashtable.put(M26, "member");
        hashtable.put(M27, "name");
        hashtable.put(M28, C16179k.f130221g);
        hashtable.put(M29, "ou");
        hashtable.put(M30, "owner");
        hashtable.put(M31, "physicalDeliveryOfficeName");
        hashtable.put(M32, View.AUTOFILL_HINT_POSTAL_ADDRESS);
        hashtable.put(M33, View.AUTOFILL_HINT_POSTAL_CODE);
        hashtable.put(M34, "postOfficeBox");
        hashtable.put(M35, "preferredDeliveryMethod");
        hashtable.put(M36, "registeredAddress");
        hashtable.put(M37, "roleOccupant");
        hashtable.put(M38, "searchGuide");
        hashtable.put(M39, "seeAlso");
        hashtable.put(M40, "serialNumber");
        hashtable.put(M41, "sn");
        hashtable.put(M42, Telephony.BaseMmsColumns.STATUS);
        hashtable.put(M43, "street");
        hashtable.put(M44, "telephoneNumber");
        hashtable.put(M45, "teletexTerminalIdentifier");
        hashtable.put(M46, "telexNumber");
        hashtable.put(M47, "title");
        hashtable.put(M48, "uid");
        hashtable.put(M49, "uniqueMember");
        hashtable.put(M50, "userPassword");
        hashtable.put(M51, "x121Address");
        hashtable.put(M52, "x500UniqueIdentifier");
        hashtable2.put("businesscategory", M10);
        hashtable2.put(AbstractC3834c.f32824b1, M11);
        hashtable2.put("cn", M12);
        hashtable2.put("dc", M13);
        hashtable2.put("description", M14);
        hashtable2.put("destinationindicator", M15);
        hashtable2.put("distinguishedname", M16);
        hashtable2.put("dnqualifier", M17);
        hashtable2.put("enhancedsearchguide", M18);
        hashtable2.put("facsimiletelephonenumber", M19);
        hashtable2.put("generationqualifier", M20);
        hashtable2.put("givenname", M21);
        hashtable2.put("houseidentifier", M22);
        hashtable2.put("initials", M23);
        hashtable2.put("internationalisdnnumber", M24);
        hashtable2.put("l", M25);
        hashtable2.put("member", M26);
        hashtable2.put("name", M27);
        hashtable2.put(C16179k.f130221g, M28);
        hashtable2.put("ou", M29);
        hashtable2.put("owner", M30);
        hashtable2.put("physicaldeliveryofficename", M31);
        hashtable2.put("postaladdress", M32);
        hashtable2.put("postalcode", M33);
        hashtable2.put("postofficebox", M34);
        hashtable2.put("preferreddeliverymethod", M35);
        hashtable2.put("registeredaddress", M36);
        hashtable2.put("roleoccupant", M37);
        hashtable2.put("searchguide", M38);
        hashtable2.put("seealso", M39);
        hashtable2.put("serialnumber", M40);
        hashtable2.put("sn", M41);
        hashtable2.put(Telephony.BaseMmsColumns.STATUS, M42);
        hashtable2.put("street", M43);
        hashtable2.put("telephonenumber", M44);
        hashtable2.put("teletexterminalidentifier", M45);
        hashtable2.put("telexnumber", M46);
        hashtable2.put("title", M47);
        hashtable2.put("uid", M48);
        hashtable2.put("uniquemember", M49);
        hashtable2.put("userpassword", M50);
        hashtable2.put("x121address", M51);
        hashtable2.put("x500uniqueidentifier", M52);
        f89996V = new e();
    }

    @Override
    public String c(C14549x c14549x) {
        return (String) this.f90022b.get(c14549x);
    }

    @Override
    public String[] e(C14549x c14549x) {
        return d.m(c14549x, this.f90021a);
    }

    @Override
    public C14549x f(String str) {
        return d.k(str, this.f90021a);
    }

    @Override
    public C13227c[] fromString(String str) {
        C13227c[] q10 = d.q(str, this);
        C13227c[] c13227cArr = new C13227c[q10.length];
        for (int i10 = 0; i10 != q10.length; i10++) {
            c13227cArr[(r0 - i10) - 1] = q10[i10];
        }
        return c13227cArr;
    }

    @Override
    public String g(C13228d c13228d) {
        StringBuffer stringBuffer = new StringBuffer();
        C13227c[] z10 = c13228d.z();
        boolean z11 = true;
        for (int length = z10.length - 1; length >= 0; length--) {
            if (z11) {
                z11 = false;
            } else {
                stringBuffer.append(IIndexConstants.PARAMETER_SEPARATOR);
            }
            d.d(stringBuffer, z10[length], this.f90022b);
        }
        return stringBuffer.toString();
    }

    @Override
    public InterfaceC14516g j(C14549x c14549x, String str) {
        return c14549x.A(f90000f) ? new C14554z0(str) : (c14549x.A(f89998d) || c14549x.A(f89981G) || c14549x.A(f90004j) || c14549x.A(f89985K)) ? new F0(str) : super.j(c14549x, str);
    }
}
