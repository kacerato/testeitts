package im;

import hi.C13495g;
import hi.J;
import java.util.ArrayList;
import java.util.List;
import li.C14143e;
import oh.AbstractC14536q;
import oh.AbstractC14551y;
import oh.C14549x;

public class C13759a {

    public static final String f92422f = "1.3.6.1.4.1.8005.100.100.4";

    public C14143e f92423a;

    public String f92424b;

    public String f92425c;

    public List f92426d = new ArrayList();

    public List f92427e = new ArrayList();

    public static class C1781a {

        public String f92428a;

        public String f92429b;

        public String f92430c;

        public String f92431d;

        public C1781a(String str) {
            this.f92428a = str;
        }

        public String a() {
            if (this.f92429b == null && this.f92428a != null) {
                e();
            }
            return this.f92431d;
        }

        public String b() {
            String str = this.f92428a;
            if (str != null) {
                return str;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.f92429b);
            sb2.append("/Role=");
            String str2 = this.f92430c;
            String str3 = "";
            if (str2 == null) {
                str2 = "";
            }
            sb2.append(str2);
            if (this.f92431d != null) {
                str3 = "/Capability=" + this.f92431d;
            }
            sb2.append(str3);
            String sb3 = sb2.toString();
            this.f92428a = sb3;
            return sb3;
        }

        public String c() {
            if (this.f92429b == null && this.f92428a != null) {
                e();
            }
            return this.f92429b;
        }

        public String d() {
            if (this.f92429b == null && this.f92428a != null) {
                e();
            }
            return this.f92430c;
        }

        public void e() {
            this.f92428a.length();
            int indexOf = this.f92428a.indexOf("/Role=");
            if (indexOf < 0) {
                return;
            }
            this.f92429b = this.f92428a.substring(0, indexOf);
            int i10 = indexOf + 6;
            int indexOf2 = this.f92428a.indexOf("/Capability=", i10);
            String str = this.f92428a;
            String substring = indexOf2 < 0 ? str.substring(i10) : str.substring(i10, indexOf2);
            String str2 = null;
            if (substring.length() == 0) {
                substring = null;
            }
            this.f92430c = substring;
            String substring2 = indexOf2 < 0 ? null : this.f92428a.substring(indexOf2 + 12);
            if (substring2 != null && substring2.length() != 0) {
                str2 = substring2;
            }
            this.f92431d = str2;
        }

        public String toString() {
            return b();
        }

        public C1781a(String str, String str2, String str3) {
            this.f92429b = str;
            this.f92430c = str2;
            this.f92431d = str3;
        }
    }

    public C13759a(C14143e c14143e) {
        if (c14143e == null) {
            throw new IllegalArgumentException("VOMSAttribute: AttributeCertificate is NULL");
        }
        this.f92423a = c14143e;
        C13495g[] b10 = c14143e.b(new C14549x(f92422f));
        if (b10 == null) {
            return;
        }
        for (int i10 = 0; i10 != b10.length; i10++) {
            try {
                J u10 = J.u(b10[i10].x()[0]);
                String string = ((AbstractC14536q) u10.v().y()[0].x()).getString();
                int indexOf = string.indexOf("://");
                if (indexOf < 0 || indexOf == string.length() - 1) {
                    throw new IllegalArgumentException("Bad encoding of VOMS policyAuthority : [" + string + "]");
                }
                this.f92425c = string.substring(0, indexOf);
                this.f92424b = string.substring(indexOf + 3);
                if (u10.x() != 1) {
                    throw new IllegalArgumentException("VOMS attribute values are not encoded as octet strings, policyAuthority = " + string);
                }
                AbstractC14551y[] abstractC14551yArr = (AbstractC14551y[]) u10.y();
                for (int i11 = 0; i11 != abstractC14551yArr.length; i11++) {
                    String str = new String(abstractC14551yArr[i11].H());
                    C1781a c1781a = new C1781a(str);
                    if (!this.f92426d.contains(str)) {
                        if (str.startsWith("/" + this.f92425c + "/")) {
                            this.f92426d.add(str);
                            this.f92427e.add(c1781a);
                        }
                    }
                }
            } catch (IllegalArgumentException e10) {
                throw e10;
            } catch (Exception unused) {
                throw new IllegalArgumentException("Badly encoded VOMS extension in AC issued by " + ((Object) c14143e.h()));
            }
        }
    }

    public C14143e a() {
        return this.f92423a;
    }

    public List b() {
        return this.f92426d;
    }

    public String c() {
        return this.f92424b;
    }

    public List d() {
        return this.f92427e;
    }

    public String e() {
        return this.f92425c;
    }

    public String toString() {
        return "VO      :" + this.f92425c + "\nHostPort:" + this.f92424b + "\nFQANs   :" + ((Object) this.f92427e);
    }
}
