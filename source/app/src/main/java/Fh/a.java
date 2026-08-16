package Fh;

import em.h;
import java.math.BigInteger;
import java.util.Enumeration;
import java.util.Hashtable;
import jk.AbstractC13875e;
import jk.B;
import ki.l;
import ki.m;
import ki.n;
import oh.C14549x;
import org.bouncycastle.util.w;

public class a {

    public static m f6831a = new C0132a();

    public static m f6832b = new b();

    public static final Hashtable f6833c = new Hashtable();

    public static final Hashtable f6834d = new Hashtable();

    public static final Hashtable f6835e = new Hashtable();

    public class C0132a extends m {
        @Override
        public AbstractC13875e a() {
            return a.e(new AbstractC13875e.f(a.g("FFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFF"), a.g("FFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFC"), a.g("28E9FA9E9D9F5E344D5A9E4BCF6509A7F39789F515AB8F92DDBCBD414D940E93"), a.g("FFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFF7203DF6B21C6052B53BBF40939D54123"), BigInteger.valueOf(1L), true));
        }

        @Override
        public l b() {
            AbstractC13875e c10 = c();
            return new l(c10, a.d(c10, "0432C4AE2C1F1981195F9904466A39C9948FE30BBFF2660BE1715A4589334C74C7BC3736A2F4F6779C59BDCEE36B692153D0A9877CC62A474002DF32E52139F0A0"), c10.A(), c10.s(), null);
        }
    }

    public class b extends m {
        @Override
        public AbstractC13875e a() {
            return a.e(new AbstractC13875e.f(a.g("BDB6F4FE3E8B1D9E0DA8C0D46F4C318CEFE4AFE3B6B8551F"), a.g("BB8E5E8FBC115E139FE6A814FE48AAA6F0ADA1AA5DF91985"), a.g("1854BEBDC31B21B7AEFC80AB0ECD10D5B1B3308E6DBF11C1"), a.g("BDB6F4FE3E8B1D9E0DA8C0D40FC962195DFAE76F56564677"), BigInteger.valueOf(1L), true));
        }

        @Override
        public l b() {
            AbstractC13875e c10 = c();
            return new l(c10, a.d(c10, "044AD5F7048DE709AD51236DE65E4D4B482C836DC6E410664002BB3A02D4AAADACAE24817A4CA3A1B014B5270432DB27D2"), c10.A(), c10.s(), null);
        }
    }

    static {
        f("wapip192v1", Fh.b.f6845J, f6832b);
        f("wapi192v1", Fh.b.f6846K, f6832b);
        f("sm2p256v1", Fh.b.f6841F, f6831a);
    }

    public static n d(AbstractC13875e abstractC13875e, String str) {
        n nVar = new n(abstractC13875e, h.d(str));
        B.c(nVar.u());
        return nVar;
    }

    public static AbstractC13875e e(AbstractC13875e abstractC13875e) {
        return abstractC13875e;
    }

    public static void f(String str, C14549x c14549x, m mVar) {
        f6833c.put(w.l(str), c14549x);
        f6835e.put(c14549x, str);
        f6834d.put(c14549x, mVar);
    }

    public static BigInteger g(String str) {
        return new BigInteger(1, h.d(str));
    }

    public static l h(String str) {
        C14549x n10 = n(str);
        if (n10 == null) {
            return null;
        }
        return j(n10);
    }

    public static m i(String str) {
        C14549x n10 = n(str);
        if (n10 == null) {
            return null;
        }
        return k(n10);
    }

    public static l j(C14549x c14549x) {
        m k10 = k(c14549x);
        if (k10 == null) {
            return null;
        }
        return k10.d();
    }

    public static m k(C14549x c14549x) {
        return (m) f6834d.get(c14549x);
    }

    public static String l(C14549x c14549x) {
        return (String) f6835e.get(c14549x);
    }

    public static Enumeration m() {
        return f6835e.elements();
    }

    public static C14549x n(String str) {
        return (C14549x) f6833c.get(w.l(str));
    }
}
