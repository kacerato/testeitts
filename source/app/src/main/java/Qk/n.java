package Qk;

import bi.InterfaceC3890b;
import com.android.apksig.internal.oid.OidConstants;
import hi.C13486b;
import java.util.HashMap;
import java.util.Map;
import oh.A0;
import oh.C14549x;
import oh.InterfaceC14516g;
import rh.InterfaceC15181a;
import uh.InterfaceC15621l;
import yh.InterfaceC16192a;

public class n implements InterfaceC3009b {

    public static final Map f22480a;

    public static final Map f22481b;

    static {
        HashMap hashMap = new HashMap();
        f22480a = hashMap;
        HashMap hashMap2 = new HashMap();
        f22481b = hashMap2;
        hashMap.put(Xh.t.f29045Q0, "RSASSA-PSS");
        hashMap.put(Bh.a.f1842d, "ED25519");
        hashMap.put(Bh.a.f1843e, "ED448");
        hashMap.put(new C14549x(OidConstants.OID_SIG_SHA1_WITH_RSA), "SHA1WITHRSA");
        hashMap.put(Xh.t.f29059U0, "SHA224WITHRSA");
        hashMap.put(Xh.t.f29049R0, "SHA256WITHRSA");
        hashMap.put(Xh.t.f29051S0, "SHA384WITHRSA");
        hashMap.put(Xh.t.f29055T0, "SHA512WITHRSA");
        hashMap.put(InterfaceC15621l.f120698B8, "SHAKE128WITHRSAPSS");
        hashMap.put(InterfaceC15621l.f120699C8, "SHAKE256WITHRSAPSS");
        hashMap.put(InterfaceC16192a.f130282n, "GOST3411WITHGOST3410");
        hashMap.put(InterfaceC16192a.f130283o, "GOST3411WITHECGOST3410");
        hashMap.put(Yh.a.f30586i, "GOST3411-2012-256WITHECGOST3410-2012-256");
        hashMap.put(Yh.a.f30587j, "GOST3411-2012-512WITHECGOST3410-2012-512");
        hashMap.put(InterfaceC15181a.f109010d, "SHA1WITHPLAIN-ECDSA");
        hashMap.put(InterfaceC15181a.f109011e, "SHA224WITHPLAIN-ECDSA");
        hashMap.put(InterfaceC15181a.f109012f, "SHA256WITHPLAIN-ECDSA");
        hashMap.put(InterfaceC15181a.f109013g, "SHA384WITHPLAIN-ECDSA");
        hashMap.put(InterfaceC15181a.f109014h, "SHA512WITHPLAIN-ECDSA");
        hashMap.put(InterfaceC15181a.f109016j, "SHA3-224WITHPLAIN-ECDSA");
        hashMap.put(InterfaceC15181a.f109017k, "SHA3-256WITHPLAIN-ECDSA");
        hashMap.put(InterfaceC15181a.f109018l, "SHA3-384WITHPLAIN-ECDSA");
        hashMap.put(InterfaceC15181a.f109019m, "SHA3-512WITHPLAIN-ECDSA");
        hashMap.put(InterfaceC15181a.f109015i, "RIPEMD160WITHPLAIN-ECDSA");
        hashMap.put(Ah.h.f642s, "SHA1WITHCVC-ECDSA");
        hashMap.put(Ah.h.f643t, "SHA224WITHCVC-ECDSA");
        hashMap.put(Ah.h.f644u, "SHA256WITHCVC-ECDSA");
        hashMap.put(Ah.h.f645v, "SHA384WITHCVC-ECDSA");
        hashMap.put(Ah.h.f646w, "SHA512WITHCVC-ECDSA");
        hashMap.put(Jh.a.f10574a, "XMSS");
        hashMap.put(Jh.a.f10575b, "XMSSMT");
        hashMap.put(InterfaceC3890b.f33241g, "RIPEMD128WITHRSA");
        hashMap.put(InterfaceC3890b.f33240f, "RIPEMD160WITHRSA");
        hashMap.put(InterfaceC3890b.f33242h, "RIPEMD256WITHRSA");
        hashMap.put(new C14549x(OidConstants.OID_SIG_MD5_WITH_RSA), "MD5WITHRSA");
        hashMap.put(new C14549x("1.2.840.113549.1.1.2"), "MD2WITHRSA");
        hashMap.put(new C14549x(OidConstants.OID_SIG_SHA1_WITH_DSA), "SHA1WITHDSA");
        hashMap.put(ki.r.f95301E5, "SHA1WITHECDSA");
        hashMap.put(ki.r.f95309K5, "SHA224WITHECDSA");
        hashMap.put(ki.r.f95311L5, "SHA256WITHECDSA");
        hashMap.put(ki.r.f95313M5, "SHA384WITHECDSA");
        hashMap.put(ki.r.f95315N5, "SHA512WITHECDSA");
        hashMap.put(InterfaceC15621l.f120700D8, "SHAKE128WITHECDSA");
        hashMap.put(InterfaceC15621l.f120701E8, "SHAKE256WITHECDSA");
        hashMap.put(Wh.b.f27787k, "SHA1WITHRSA");
        hashMap.put(Wh.b.f27786j, "SHA1WITHDSA");
        hashMap.put(Sh.d.f23334a0, "SHA224WITHDSA");
        hashMap.put(Sh.d.f23336b0, "SHA256WITHDSA");
        hashMap2.put(Wh.b.f27785i, "SHA1");
        hashMap2.put(Sh.d.f23343f, "SHA224");
        hashMap2.put(Sh.d.f23337c, "SHA256");
        hashMap2.put(Sh.d.f23339d, "SHA384");
        hashMap2.put(Sh.d.f23341e, "SHA512");
        hashMap2.put(Sh.d.f23349i, "SHA3-224");
        hashMap2.put(Sh.d.f23351j, "SHA3-256");
        hashMap2.put(Sh.d.f23353k, "SHA3-384");
        hashMap2.put(Sh.d.f23355l, "SHA3-512");
        hashMap2.put(InterfaceC3890b.f33237c, "RIPEMD128");
        hashMap2.put(InterfaceC3890b.f33236b, "RIPEMD160");
        hashMap2.put(InterfaceC3890b.f33238d, "RIPEMD256");
    }

    public static String d(C14549x c14549x) {
        String str = (String) f22481b.get(c14549x);
        return str != null ? str : c14549x.J();
    }

    @Override
    public boolean a(C14549x c14549x) {
        return f22480a.containsKey(c14549x);
    }

    @Override
    public String b(C13486b c13486b) {
        InterfaceC14516g x10 = c13486b.x();
        if (x10 == null || A0.f98776c.z(x10) || !c13486b.u().A(Xh.t.f29045Q0)) {
            Map map = f22480a;
            boolean containsKey = map.containsKey(c13486b.u());
            C14549x u10 = c13486b.u();
            return containsKey ? (String) map.get(u10) : u10.J();
        }
        Xh.B v10 = Xh.B.v(x10);
        C13486b x11 = v10.x();
        if (!x11.u().A(Xh.t.f29037O0)) {
            return d(v10.u().u()) + "WITHRSAAND" + x11.u().J();
        }
        C13486b u11 = v10.u();
        C14549x u12 = C13486b.v(x11.x()).u();
        if (u12.A(u11.u())) {
            return d(u11.u()) + "WITHRSAANDMGF1";
        }
        return d(u11.u()) + "WITHRSAANDMGF1USING" + d(u12);
    }

    @Override
    public String c(C14549x c14549x) {
        String str = (String) f22480a.get(c14549x);
        return str != null ? str : c14549x.J();
    }
}
