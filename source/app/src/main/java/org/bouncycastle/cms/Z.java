package org.bouncycastle.cms;

import android.security.keystore.KeyProperties;
import bi.InterfaceC3890b;
import ck.C4215h;
import hi.C13486b;
import java.util.HashMap;
import java.util.Map;
import oh.C14549x;
import qh.InterfaceC15100a;
import rh.InterfaceC15181a;
import uh.InterfaceC15621l;
import yh.InterfaceC16192a;

public class Z implements M {

    public final Map f100652a;

    public final Map f100653b;

    public final Map f100654c;

    public Z() {
        HashMap hashMap = new HashMap();
        this.f100652a = hashMap;
        HashMap hashMap2 = new HashMap();
        this.f100653b = hashMap2;
        HashMap hashMap3 = new HashMap();
        this.f100654c = hashMap3;
        b(Sh.d.f23334a0, "SHA224", "DSA");
        b(Sh.d.f23336b0, "SHA256", "DSA");
        b(Sh.d.f23338c0, "SHA384", "DSA");
        b(Sh.d.f23340d0, "SHA512", "DSA");
        b(Sh.d.f23342e0, "SHA3-224", "DSA");
        b(Sh.d.f23344f0, "SHA3-256", "DSA");
        b(Sh.d.f23346g0, "SHA3-384", "DSA");
        b(Sh.d.f23348h0, "SHA3-512", "DSA");
        C14549x c14549x = Sh.d.f23358m0;
        b(c14549x, "SHA3-224", KeyProperties.KEY_ALGORITHM_RSA);
        C14549x c14549x2 = Sh.d.f23360n0;
        b(c14549x2, "SHA3-256", KeyProperties.KEY_ALGORITHM_RSA);
        C14549x c14549x3 = Sh.d.f23362o0;
        b(c14549x3, "SHA3-384", KeyProperties.KEY_ALGORITHM_RSA);
        C14549x c14549x4 = Sh.d.f23364p0;
        b(c14549x4, "SHA3-512", KeyProperties.KEY_ALGORITHM_RSA);
        b(Sh.d.f23350i0, "SHA3-224", "ECDSA");
        b(Sh.d.f23352j0, "SHA3-256", "ECDSA");
        b(Sh.d.f23354k0, "SHA3-384", "ECDSA");
        b(Sh.d.f23356l0, "SHA3-512", "ECDSA");
        b(Wh.b.f27786j, "SHA1", "DSA");
        b(Wh.b.f27777a, "MD4", KeyProperties.KEY_ALGORITHM_RSA);
        b(Wh.b.f27779c, "MD4", KeyProperties.KEY_ALGORITHM_RSA);
        b(Wh.b.f27778b, KeyProperties.DIGEST_MD5, KeyProperties.KEY_ALGORITHM_RSA);
        b(Wh.b.f27787k, "SHA1", KeyProperties.KEY_ALGORITHM_RSA);
        b(Xh.t.f29018I0, "MD2", KeyProperties.KEY_ALGORITHM_RSA);
        b(Xh.t.f29022J0, "MD4", KeyProperties.KEY_ALGORITHM_RSA);
        b(Xh.t.f29026K0, KeyProperties.DIGEST_MD5, KeyProperties.KEY_ALGORITHM_RSA);
        b(Xh.t.f29030L0, "SHA1", KeyProperties.KEY_ALGORITHM_RSA);
        b(Xh.t.f29059U0, "SHA224", KeyProperties.KEY_ALGORITHM_RSA);
        b(Xh.t.f29049R0, "SHA256", KeyProperties.KEY_ALGORITHM_RSA);
        b(Xh.t.f29051S0, "SHA384", KeyProperties.KEY_ALGORITHM_RSA);
        b(Xh.t.f29055T0, "SHA512", KeyProperties.KEY_ALGORITHM_RSA);
        b(Xh.t.f29063V0, "SHA512(224)", KeyProperties.KEY_ALGORITHM_RSA);
        b(Xh.t.f29065W0, "SHA512(256)", KeyProperties.KEY_ALGORITHM_RSA);
        b(c14549x, "SHA3-224", KeyProperties.KEY_ALGORITHM_RSA);
        b(c14549x2, "SHA3-256", KeyProperties.KEY_ALGORITHM_RSA);
        b(c14549x3, "SHA3-384", KeyProperties.KEY_ALGORITHM_RSA);
        b(c14549x4, "SHA3-512", KeyProperties.KEY_ALGORITHM_RSA);
        b(InterfaceC15621l.f120698B8, "SHAKE128", "RSAPSS");
        b(InterfaceC15621l.f120699C8, "SHAKE256", "RSAPSS");
        b(InterfaceC3890b.f33241g, "RIPEMD128", KeyProperties.KEY_ALGORITHM_RSA);
        b(InterfaceC3890b.f33240f, "RIPEMD160", KeyProperties.KEY_ALGORITHM_RSA);
        b(InterfaceC3890b.f33242h, "RIPEMD256", KeyProperties.KEY_ALGORITHM_RSA);
        b(ki.r.f95301E5, "SHA1", "ECDSA");
        b(ki.r.f95309K5, "SHA224", "ECDSA");
        b(ki.r.f95311L5, "SHA256", "ECDSA");
        b(ki.r.f95313M5, "SHA384", "ECDSA");
        b(ki.r.f95315N5, "SHA512", "ECDSA");
        b(InterfaceC15621l.f120700D8, "SHAKE128", "ECDSA");
        b(InterfaceC15621l.f120701E8, "SHAKE256", "ECDSA");
        b(ki.r.f95350t6, "SHA1", "DSA");
        b(Ah.h.f642s, "SHA1", "ECDSA");
        b(Ah.h.f643t, "SHA224", "ECDSA");
        b(Ah.h.f644u, "SHA256", "ECDSA");
        b(Ah.h.f645v, "SHA384", "ECDSA");
        b(Ah.h.f646w, "SHA512", "ECDSA");
        b(Ah.h.f635l, "SHA1", KeyProperties.KEY_ALGORITHM_RSA);
        b(Ah.h.f636m, "SHA256", KeyProperties.KEY_ALGORITHM_RSA);
        b(Ah.h.f637n, "SHA1", "RSAandMGF1");
        b(Ah.h.f638o, "SHA256", "RSAandMGF1");
        b(InterfaceC15181a.f109010d, "SHA1", "PLAIN-ECDSA");
        b(InterfaceC15181a.f109011e, "SHA224", "PLAIN-ECDSA");
        b(InterfaceC15181a.f109012f, "SHA256", "PLAIN-ECDSA");
        b(InterfaceC15181a.f109013g, "SHA384", "PLAIN-ECDSA");
        b(InterfaceC15181a.f109014h, "SHA512", "PLAIN-ECDSA");
        b(InterfaceC15181a.f109015i, "RIPEMD160", "PLAIN-ECDSA");
        b(InterfaceC15181a.f109016j, "SHA3-224", "PLAIN-ECDSA");
        b(InterfaceC15181a.f109017k, "SHA3-256", "PLAIN-ECDSA");
        b(InterfaceC15181a.f109018l, "SHA3-384", "PLAIN-ECDSA");
        b(InterfaceC15181a.f109019m, "SHA3-512", "PLAIN-ECDSA");
        b(Fh.b.f6877h0, "SHA256", "SM2");
        b(Fh.b.f6873f0, "SM3", "SM2");
        b(InterfaceC15100a.f108113u, "SHA512", "SPHINCS256");
        b(InterfaceC15100a.f108117v, "SHA3-512", "SPHINCS256");
        b(InterfaceC15100a.f108087o1, "SHAKE256", "Picnic");
        b(InterfaceC15100a.f108082n1, "SHA512", "Picnic");
        b(InterfaceC15100a.f108092p1, "SHA3-512", "Picnic");
        hashMap.put(ki.r.f95349s6, "DSA");
        hashMap.put(Xh.t.f29017H0, KeyProperties.KEY_ALGORITHM_RSA);
        hashMap.put(InterfaceC3890b.f33239e, KeyProperties.KEY_ALGORITHM_RSA);
        hashMap.put(hi.E0.f90637W4, KeyProperties.KEY_ALGORITHM_RSA);
        hashMap.put(Xh.t.f29045Q0, "RSAandMGF1");
        hashMap.put(InterfaceC16192a.f130280l, "GOST3410");
        hashMap.put(InterfaceC16192a.f130281m, "ECGOST3410");
        hashMap.put(new C14549x("1.3.6.1.4.1.5849.1.6.2"), "ECGOST3410");
        hashMap.put(new C14549x("1.3.6.1.4.1.5849.1.1.5"), "GOST3410");
        hashMap.put(Yh.a.f30584g, "ECGOST3410-2012-256");
        hashMap.put(Yh.a.f30585h, "ECGOST3410-2012-512");
        hashMap.put(InterfaceC16192a.f130283o, "ECGOST3410");
        hashMap.put(InterfaceC16192a.f130282n, "GOST3410");
        hashMap.put(Yh.a.f30586i, "ECGOST3410-2012-256");
        hashMap.put(Yh.a.f30587j, "ECGOST3410-2012-512");
        hashMap.put(ki.r.f95305I5, "ECDSA");
        hashMap2.put(Xh.t.f29135s1, "MD2");
        hashMap2.put(Xh.t.f29138t1, "MD4");
        hashMap2.put(Xh.t.f29141u1, KeyProperties.DIGEST_MD5);
        hashMap2.put(Wh.b.f27785i, "SHA1");
        hashMap2.put(Sh.d.f23343f, "SHA224");
        hashMap2.put(Sh.d.f23337c, "SHA256");
        hashMap2.put(Sh.d.f23339d, "SHA384");
        hashMap2.put(Sh.d.f23341e, "SHA512");
        hashMap2.put(Sh.d.f23345g, "SHA512(224)");
        hashMap2.put(Sh.d.f23347h, "SHA512(256)");
        hashMap2.put(Sh.d.f23357m, "SHAKE128");
        hashMap2.put(Sh.d.f23359n, "SHAKE256");
        hashMap2.put(Sh.d.f23349i, "SHA3-224");
        hashMap2.put(Sh.d.f23351j, "SHA3-256");
        hashMap2.put(Sh.d.f23353k, "SHA3-384");
        hashMap2.put(Sh.d.f23355l, "SHA3-512");
        hashMap2.put(InterfaceC3890b.f33237c, "RIPEMD128");
        hashMap2.put(InterfaceC3890b.f33236b, "RIPEMD160");
        hashMap2.put(InterfaceC3890b.f33238d, "RIPEMD256");
        hashMap2.put(InterfaceC16192a.f130270b, "GOST3411");
        hashMap2.put(new C14549x("1.3.6.1.4.1.5849.1.2.1"), "GOST3411");
        hashMap2.put(Yh.a.f30580c, "GOST3411-2012-256");
        hashMap2.put(Yh.a.f30581d, "GOST3411-2012-512");
        hashMap2.put(Fh.b.f6869d0, "SM3");
        hashMap3.put(Bh.a.f1842d, C4215h.f34909c);
        hashMap3.put(Bh.a.f1843e, C4215h.f34910d);
        hashMap3.put(Xh.t.f29047Q2, "LMS");
        hashMap3.put(Qh.c.f22356P, "COMPOSITE");
        hashMap3.put(InterfaceC15100a.f108102r1, "Falcon-512");
        hashMap3.put(InterfaceC15100a.f108107s1, "Falcon-1024");
        C14549x c14549x5 = InterfaceC15100a.f108115u1;
        hashMap3.put(c14549x5, "Dilithium2");
        C14549x c14549x6 = InterfaceC15100a.f108119v1;
        hashMap3.put(c14549x6, "Dilithium3");
        C14549x c14549x7 = InterfaceC15100a.f108123w1;
        hashMap3.put(c14549x7, "Dilithium5");
        hashMap3.put(InterfaceC15100a.f107964N0, "SPHINCS+-SHA2-128s");
        hashMap3.put(InterfaceC15100a.f107960M0, "SPHINCS+-SHA2-128f");
        hashMap3.put(InterfaceC15100a.f107972P0, "SPHINCS+-SHA2-192s");
        hashMap3.put(InterfaceC15100a.f107968O0, "SPHINCS+-SHA2-192f");
        hashMap3.put(InterfaceC15100a.f107980R0, "SPHINCS+-SHA2-256s");
        hashMap3.put(InterfaceC15100a.f107976Q0, "SPHINCS+-SHA2-256f");
        hashMap3.put(InterfaceC15100a.f107988T0, "SPHINCS+-SHAKE-128s");
        hashMap3.put(InterfaceC15100a.f107984S0, "SPHINCS+-SHAKE-128f");
        hashMap3.put(InterfaceC15100a.f107996V0, "SPHINCS+-SHAKE-192s");
        hashMap3.put(InterfaceC15100a.f107992U0, "SPHINCS+-SHAKE-192f");
        hashMap3.put(InterfaceC15100a.f108004X0, "SPHINCS+-SHAKE-256s");
        hashMap3.put(InterfaceC15100a.f108000W0, "SPHINCS+-SHAKE-256f");
        hashMap3.put(c14549x5, "Dilithium2");
        hashMap3.put(c14549x6, "Dilithium3");
        hashMap3.put(c14549x7, "Dilithium5");
        hashMap3.put(InterfaceC15100a.f108077m1, "Picnic");
    }

    @Override
    public String a(C13486b c13486b, C13486b c13486b2) {
        C14549x u10 = c13486b2.u();
        String str = (String) this.f100654c.get(u10);
        if (str != null) {
            return str;
        }
        if (u10.O(InterfaceC15100a.f108016a0)) {
            return "SPHINCSPlus";
        }
        String c10 = c(u10);
        if (c10.equals(u10.J())) {
            return c(c13486b.u()) + "with" + d(u10);
        }
        return c10 + "with" + d(u10);
    }

    public final void b(C14549x c14549x, String str, String str2) {
        this.f100653b.put(c14549x, str);
        this.f100652a.put(c14549x, str2);
    }

    public final String c(C14549x c14549x) {
        String str = (String) this.f100653b.get(c14549x);
        return str != null ? str : c14549x.J();
    }

    public final String d(C14549x c14549x) {
        String str = (String) this.f100652a.get(c14549x);
        return str != null ? str : c14549x.J();
    }

    public void e(C14549x c14549x, String str) {
        this.f100653b.put(c14549x, str);
    }

    public void f(C14549x c14549x, String str) {
        this.f100652a.put(c14549x, str);
    }
}
