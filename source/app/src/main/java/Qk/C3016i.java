package Qk;

import android.security.keystore.KeyProperties;
import bi.InterfaceC3890b;
import hi.C13486b;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import oh.C14549x;
import qh.InterfaceC15100a;
import rh.InterfaceC15181a;
import yh.InterfaceC16192a;

public class C3016i implements InterfaceC3009b {

    public static final Map f22467a;

    static {
        HashMap hashMap = new HashMap();
        f22467a = hashMap;
        hashMap.put(InterfaceC15181a.f109015i, "RIPEMD160WITHPLAIN-ECDSA");
        hashMap.put(InterfaceC15181a.f109010d, "SHA1WITHPLAIN-ECDSA");
        hashMap.put(InterfaceC15181a.f109011e, "SHA224WITHPLAIN-ECDSA");
        hashMap.put(InterfaceC15181a.f109012f, "SHA256WITHPLAIN-ECDSA");
        hashMap.put(InterfaceC15181a.f109013g, "SHA384WITHPLAIN-ECDSA");
        hashMap.put(InterfaceC15181a.f109014h, "SHA512WITHPLAIN-ECDSA");
        hashMap.put(InterfaceC16192a.f130283o, "GOST3411WITHECGOST3410-2001");
        hashMap.put(InterfaceC16192a.f130282n, "GOST3411WITHGOST3410-94");
        hashMap.put(InterfaceC16192a.f130270b, "GOST3411");
        hashMap.put(Yh.a.f30586i, "GOST3411WITHECGOST3410-2012-256");
        hashMap.put(Yh.a.f30587j, "GOST3411WITHECGOST3410-2012-512");
        hashMap.put(Ah.h.f642s, "SHA1WITHCVC-ECDSA");
        hashMap.put(Ah.h.f643t, "SHA224WITHCVC-ECDSA");
        hashMap.put(Ah.h.f644u, "SHA256WITHCVC-ECDSA");
        hashMap.put(Ah.h.f645v, "SHA384WITHCVC-ECDSA");
        hashMap.put(Ah.h.f646w, "SHA512WITHCVC-ECDSA");
        hashMap.put(InterfaceC15100a.f108102r1, "FALCON");
        hashMap.put(InterfaceC15100a.f108107s1, "FALCON");
        hashMap.put(InterfaceC15100a.f108021b0, "SPHINCS+");
        hashMap.put(InterfaceC15100a.f108026c0, "SPHINCS+");
        hashMap.put(InterfaceC15100a.f108031d0, "SPHINCS+");
        hashMap.put(InterfaceC15100a.f108036e0, "SPHINCS+");
        hashMap.put(InterfaceC15100a.f108041f0, "SPHINCS+");
        hashMap.put(InterfaceC15100a.f108046g0, "SPHINCS+");
        hashMap.put(InterfaceC15100a.f108051h0, "SPHINCS+");
        hashMap.put(InterfaceC15100a.f108056i0, "SPHINCS+");
        hashMap.put(InterfaceC15100a.f108061j0, "SPHINCS+");
        hashMap.put(InterfaceC15100a.f108066k0, "SPHINCS+");
        hashMap.put(InterfaceC15100a.f108071l0, "SPHINCS+");
        hashMap.put(InterfaceC15100a.f108076m0, "SPHINCS+");
        hashMap.put(InterfaceC15100a.f108081n0, "SPHINCS+");
        hashMap.put(InterfaceC15100a.f108086o0, "SPHINCS+");
        hashMap.put(InterfaceC15100a.f108091p0, "SPHINCS+");
        hashMap.put(InterfaceC15100a.f108096q0, "SPHINCS+");
        hashMap.put(InterfaceC15100a.f108101r0, "SPHINCS+");
        hashMap.put(InterfaceC15100a.f108106s0, "SPHINCS+");
        hashMap.put(InterfaceC15100a.f108110t0, "SPHINCS+");
        hashMap.put(InterfaceC15100a.f108114u0, "SPHINCS+");
        hashMap.put(InterfaceC15100a.f108118v0, "SPHINCS+");
        hashMap.put(InterfaceC15100a.f108122w0, "SPHINCS+");
        hashMap.put(InterfaceC15100a.f108126x0, "SPHINCS+");
        hashMap.put(InterfaceC15100a.f108130y0, "SPHINCS+");
        hashMap.put(InterfaceC15100a.f108134z0, "SPHINCS+");
        hashMap.put(InterfaceC15100a.f107912A0, "SPHINCS+");
        hashMap.put(InterfaceC15100a.f107916B0, "SPHINCS+");
        hashMap.put(InterfaceC15100a.f107920C0, "SPHINCS+");
        hashMap.put(InterfaceC15100a.f107924D0, "SPHINCS+");
        hashMap.put(InterfaceC15100a.f107928E0, "SPHINCS+");
        hashMap.put(InterfaceC15100a.f107932F0, "SPHINCS+");
        hashMap.put(InterfaceC15100a.f107936G0, "SPHINCS+");
        hashMap.put(InterfaceC15100a.f107940H0, "SPHINCS+");
        hashMap.put(InterfaceC15100a.f107944I0, "SPHINCS+");
        hashMap.put(InterfaceC15100a.f107948J0, "SPHINCS+");
        hashMap.put(InterfaceC15100a.f107952K0, "SPHINCS+");
        hashMap.put(Sh.d.f23343f, "SHA224");
        hashMap.put(Sh.d.f23337c, "SHA256");
        hashMap.put(Sh.d.f23339d, "SHA384");
        hashMap.put(Sh.d.f23341e, "SHA512");
        hashMap.put(Sh.d.f23349i, "SHA3-224");
        hashMap.put(Sh.d.f23351j, "SHA3-256");
        hashMap.put(Sh.d.f23353k, "SHA3-384");
        hashMap.put(Sh.d.f23355l, "SHA3-512");
        hashMap.put(Wh.b.f27786j, "SHA1WITHDSA");
        hashMap.put(Wh.b.f27788l, "ELGAMAL");
        hashMap.put(Wh.b.f27785i, "SHA1");
        hashMap.put(Wh.b.f27778b, "MD5WITHRSA");
        hashMap.put(Wh.b.f27787k, "SHA1WITHRSA");
        hashMap.put(Xh.t.f29033N0, "RSAOAEP");
        hashMap.put(Xh.t.f29045Q0, "RSAPSS");
        hashMap.put(Xh.t.f29018I0, "MD2WITHRSA");
        hashMap.put(Xh.t.f29141u1, KeyProperties.DIGEST_MD5);
        hashMap.put(Xh.t.f29026K0, "MD5WITHRSA");
        hashMap.put(Xh.t.f29017H0, KeyProperties.KEY_ALGORITHM_RSA);
        hashMap.put(Xh.t.f29030L0, "SHA1WITHRSA");
        hashMap.put(Xh.t.f29059U0, "SHA224WITHRSA");
        hashMap.put(Xh.t.f29049R0, "SHA256WITHRSA");
        hashMap.put(Xh.t.f29051S0, "SHA384WITHRSA");
        hashMap.put(Xh.t.f29055T0, "SHA512WITHRSA");
        hashMap.put(Sh.d.f23358m0, "SHA3-224WITHRSA");
        hashMap.put(Sh.d.f23360n0, "SHA3-256WITHRSA");
        hashMap.put(Sh.d.f23362o0, "SHA3-384WITHRSA");
        hashMap.put(Sh.d.f23364p0, "SHA3-512WITHRSA");
        hashMap.put(InterfaceC3890b.f33237c, "RIPEMD128");
        hashMap.put(InterfaceC3890b.f33236b, "RIPEMD160");
        hashMap.put(InterfaceC3890b.f33238d, "RIPEMD256");
        hashMap.put(InterfaceC3890b.f33241g, "RIPEMD128WITHRSA");
        hashMap.put(InterfaceC3890b.f33240f, "RIPEMD160WITHRSA");
        hashMap.put(InterfaceC3890b.f33242h, "RIPEMD256WITHRSA");
        hashMap.put(ki.r.f95301E5, "ECDSAWITHSHA1");
        hashMap.put(ki.r.f95309K5, "SHA224WITHECDSA");
        hashMap.put(ki.r.f95311L5, "SHA256WITHECDSA");
        hashMap.put(ki.r.f95313M5, "SHA384WITHECDSA");
        hashMap.put(ki.r.f95315N5, "SHA512WITHECDSA");
        hashMap.put(Sh.d.f23350i0, "SHA3-224WITHECDSA");
        hashMap.put(Sh.d.f23352j0, "SHA3-256WITHECDSA");
        hashMap.put(Sh.d.f23354k0, "SHA3-384WITHECDSA");
        hashMap.put(Sh.d.f23356l0, "SHA3-512WITHECDSA");
        hashMap.put(ki.r.f95350t6, "SHA1WITHDSA");
        hashMap.put(Sh.d.f23334a0, "SHA224WITHDSA");
        hashMap.put(Sh.d.f23336b0, "SHA256WITHDSA");
        hashMap.put(Sh.d.f23338c0, "SHA384WITHDSA");
        hashMap.put(Sh.d.f23340d0, "SHA512WITHDSA");
        hashMap.put(Sh.d.f23342e0, "SHA3-224WITHDSA");
        hashMap.put(Sh.d.f23344f0, "SHA3-256WITHDSA");
        hashMap.put(Sh.d.f23346g0, "SHA3-384WITHDSA");
        hashMap.put(Sh.d.f23348h0, "SHA3-512WITHDSA");
        hashMap.put(Gh.a.f7825g, "Tiger");
        hashMap.put(Xh.t.f29126o1, "RC2/CBC");
        hashMap.put(Xh.t.f29123n1, "DESEDE-3KEY/CBC");
        hashMap.put(Sh.d.f23372x, "AES-128/ECB");
        hashMap.put(Sh.d.f23313G, "AES-192/ECB");
        hashMap.put(Sh.d.f23322P, "AES-256/ECB");
        hashMap.put(Sh.d.f23373y, "AES-128/CBC");
        hashMap.put(Sh.d.f23314H, "AES-192/CBC");
        hashMap.put(Sh.d.f23323Q, "AES-256/CBC");
        hashMap.put(Sh.d.f23307A, "AES-128/CFB");
        hashMap.put(Sh.d.f23316J, "AES-192/CFB");
        hashMap.put(Sh.d.f23325S, "AES-256/CFB");
        hashMap.put(Sh.d.f23374z, "AES-128/OFB");
        hashMap.put(Sh.d.f23315I, "AES-192/OFB");
        hashMap.put(Sh.d.f23324R, "AES-256/OFB");
        hashMap.put(Uh.a.f26182a, "CAMELLIA-128/CBC");
        hashMap.put(Uh.a.f26183b, "CAMELLIA-192/CBC");
        hashMap.put(Uh.a.f26184c, "CAMELLIA-256/CBC");
        hashMap.put(Oh.a.f20091a, "SEED/CBC");
        hashMap.put(Qh.c.f22398w, "IDEA/CBC");
        hashMap.put(Qh.c.f22396u, "CAST5/CBC");
        hashMap.put(Qh.c.f22401z, "Blowfish/ECB");
        hashMap.put(Qh.c.f22341A, "Blowfish/CBC");
        hashMap.put(Qh.c.f22342B, "Blowfish/CFB");
        hashMap.put(Qh.c.f22343C, "Blowfish/OFB");
        hashMap.put(Gh.a.f7828j, "Serpent-128/ECB");
        hashMap.put(Gh.a.f7829k, "Serpent-128/CBC");
        hashMap.put(Gh.a.f7831m, "Serpent-128/CFB");
        hashMap.put(Gh.a.f7830l, "Serpent-128/OFB");
        hashMap.put(Gh.a.f7832n, "Serpent-192/ECB");
        hashMap.put(Gh.a.f7833o, "Serpent-192/CBC");
        hashMap.put(Gh.a.f7835q, "Serpent-192/CFB");
        hashMap.put(Gh.a.f7834p, "Serpent-192/OFB");
        hashMap.put(Gh.a.f7836r, "Serpent-256/ECB");
        hashMap.put(Gh.a.f7837s, "Serpent-256/CBC");
        hashMap.put(Gh.a.f7839u, "Serpent-256/CFB");
        hashMap.put(Gh.a.f7838t, "Serpent-256/OFB");
        hashMap.put(Qh.c.f22345E, "BLAKE2b-160");
        hashMap.put(Qh.c.f22346F, "BLAKE2b-256");
        hashMap.put(Qh.c.f22347G, "BLAKE2b-384");
        hashMap.put(Qh.c.f22348H, "BLAKE2b-512");
        hashMap.put(Qh.c.f22349I, "BLAKE2s-128");
        hashMap.put(Qh.c.f22350J, "BLAKE2s-160");
        hashMap.put(Qh.c.f22351K, "BLAKE2s-224");
        hashMap.put(Qh.c.f22352L, "BLAKE2s-256");
        hashMap.put(Qh.c.f22354N, "BLAKE3-256");
    }

    @Override
    public boolean a(C14549x c14549x) {
        return f22467a.containsKey(c14549x);
    }

    @Override
    public String b(C13486b c13486b) {
        return c(c13486b.u());
    }

    @Override
    public String c(C14549x c14549x) {
        String str = (String) f22467a.get(c14549x);
        return str != null ? str : c14549x.J();
    }

    public Set<C14549x> d() {
        return f22467a.o();
    }
}
