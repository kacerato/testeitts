package org.bouncycastle.jce.provider;

import Bi.EnumC2383o;
import Bi.InterfaceC2382n;
import ak.C3667g;
import android.security.KeyChain;
import android.security.keystore.KeyProperties;
import bk.AbstractC3895a;
import bk.InterfaceC3897c;
import java.io.IOException;
import java.security.AccessController;
import java.security.PrivateKey;
import java.security.PrivilegedAction;
import java.security.Provider;
import java.security.PublicKey;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import oh.C14549x;
import org.bouncycastle.crypto.CryptoServiceConstraintsException;
import qh.InterfaceC15100a;
import tj.InterfaceC15463a;
import ul.C15645d;
import wl.C16016c;

public final class C14720a extends Provider implements Tj.a {

    public static final String f101705i = "org.bouncycastle.jcajce.provider.symmetric.";

    public static final String f101709m = "org.bouncycastle.jcajce.provider.asymmetric.";

    public static final String f101712p = "org.bouncycastle.jcajce.provider.digest.";

    public static final String f101714r = "org.bouncycastle.jcajce.provider.keystore.";

    public static final String f101716t = "org.bouncycastle.jcajce.provider.drbg.";

    public Map<String, Provider.Service> f101718b;

    public static final Logger f101699c = Logger.getLogger(C14720a.class.getName());

    public static String f101700d = "BouncyCastle Security Provider v1.78.1";

    public static final Tj.c f101702f = new C14721b();

    public static final Map f101703g = new HashMap();

    public static final Class f101704h = C3667g.a(C14720a.class, "java.security.cert.PKIXRevocationChecker");

    public static final String[] f101706j = {"PBEPBKDF1", "PBEPBKDF2", "PBEPKCS12", "TLSKDF", "SCRYPT"};

    public static final String[] f101707k = {"SipHash", "SipHash128", "Poly1305"};

    public static final InterfaceC2382n[] f101708l = {w(KeyProperties.KEY_ALGORITHM_AES, 256), w("ARC4", 20), w("ARIA", 256), w("Blowfish", 128), w("Camellia", 256), w("CAST5", 128), w("CAST6", 256), w("ChaCha", 128), w("DES", 56), w("DESede", 112), w("GOST28147", 128), w("Grainv1", 128), w("Grain128", 128), w("HC128", 128), w("HC256", 256), w("IDEA", 128), w("Noekeon", 128), w("RC2", 128), w("RC5", 128), w("RC6", 256), w("Rijndael", 256), w("Salsa20", 128), w("SEED", 128), w("Serpent", 256), w("Shacal2", 128), w("Skipjack", 80), w("SM4", 128), w("TEA", 128), w("Twofish", 256), w("Threefish", 128), w("VMPC", 128), w("VMPCKSA3", 128), w("XTEA", 128), w("XSalsa20", 128), w("OpenSSLPBKDF", 128), w("DSTU7624", 256), w("GOST3412_2015", 256), w("Zuc", 128)};

    public static final String[] f101710n = {"X509", "IES", "COMPOSITE", "EXTERNAL", "CompositeSignatures"};

    public static final String[] f101711o = {"DSA", "DH", KeyProperties.KEY_ALGORITHM_EC, KeyProperties.KEY_ALGORITHM_RSA, "GOST", "ECGOST", "ElGamal", "DSTU4145", "GM", "EdEC", "LMS", "SPHINCSPlus", "Dilithium", "Falcon", "NTRU"};

    public static final String[] f101713q = {"GOST3411", "Keccak", "MD2", "MD4", KeyProperties.DIGEST_MD5, "SHA1", "RIPEMD128", "RIPEMD160", "RIPEMD256", "RIPEMD320", "SHA224", "SHA256", "SHA384", "SHA512", "SHA3", "Skein", "SM3", "Tiger", "Whirlpool", "Blake2b", "Blake2s", "DSTU7564", "Haraka", "Blake3"};

    public static final String f101701e = "BC";

    public static final String[] f101715s = {f101701e, "BCFKS", KeyChain.EXTRA_PKCS12};

    public static final String[] f101717u = {"DRBG"};

    public class C1922a implements PrivilegedAction {
        public C1922a() {
        }

        @Override
        public Object run() {
            C14720a.this.x();
            return null;
        }
    }

    public class b implements PrivilegedAction<Provider.Service> {

        public final String f101720a;

        public final String f101721b;

        public final String f101722c;

        public b(String str, String str2, String str3) {
            this.f101720a = str;
            this.f101721b = str2;
            this.f101722c = str3;
        }

        @Override
        public Provider.Service run() {
            Provider.Service service = C14720a.super.getService(this.f101720a, this.f101721b);
            if (service == null) {
                return null;
            }
            C14720a.this.f101718b.put(this.f101722c, service);
            C14720a.super.remove(service.getType() + "." + service.getAlgorithm());
            C14720a.super.putService(service);
            return service;
        }
    }

    public static class c implements InterfaceC2382n {

        public final String f101724a;

        public final int f101725b;

        public c(String str, int i10) {
            this.f101724a = str;
            this.f101725b = i10;
        }

        @Override
        public EnumC2383o a() {
            return EnumC2383o.ANY;
        }

        @Override
        public int b() {
            return this.f101725b;
        }

        @Override
        public Object getParams() {
            return null;
        }

        @Override
        public String getServiceName() {
            return this.f101724a;
        }
    }

    public C14720a() {
        super(f101701e, 1.7801d, f101700d);
        this.f101718b = new ConcurrentHashMap();
        AccessController.doPrivileged(new C1922a());
    }

    public static InterfaceC3897c o(C14549x c14549x) {
        InterfaceC3897c interfaceC3897c;
        Map map = f101703g;
        synchronized (map) {
            interfaceC3897c = (InterfaceC3897c) map.get(c14549x);
        }
        return interfaceC3897c;
    }

    public static PrivateKey p(Xh.v vVar) throws IOException {
        InterfaceC3897c o10 = o(vVar.y().u());
        if (o10 == null) {
            return null;
        }
        return o10.b(vVar);
    }

    public static PublicKey q(hi.h0 h0Var) throws IOException {
        if (h0Var.u().u().O(InterfaceC15100a.f108012Z0)) {
            return new Hl.c().a(h0Var);
        }
        InterfaceC3897c o10 = o(h0Var.u().u());
        if (o10 == null) {
            return null;
        }
        return o10.a(h0Var);
    }

    public static InterfaceC2382n w(String str, int i10) {
        return new c(str, i10);
    }

    @Override
    public void a(String str, Object obj) {
        Tj.c cVar = f101702f;
        synchronized (cVar) {
            ((C14721b) cVar).f(str, obj);
        }
    }

    @Override
    public void b(String str, String str2, Map<String, String> map) {
        d(str, str2);
        h(str, map);
    }

    @Override
    public void c(C14549x c14549x, InterfaceC3897c interfaceC3897c) {
        Map map = f101703g;
        synchronized (map) {
            map.put(c14549x, interfaceC3897c);
        }
    }

    @Override
    public void d(String str, String str2) {
        if (!containsKey(str)) {
            put(str, str2);
            return;
        }
        throw new IllegalStateException("duplicate provider key (" + str + ") found");
    }

    @Override
    public InterfaceC3897c e(C14549x c14549x) {
        return (InterfaceC3897c) f101703g.get(c14549x);
    }

    @Override
    public boolean f(String str, String str2) {
        if (!containsKey(str + "." + str2)) {
            if (!containsKey("Alg.Alias." + str + "." + str2)) {
                return false;
            }
        }
        return true;
    }

    @Override
    public void g(String str, C14549x c14549x, String str2) {
        d(str + "." + ((Object) c14549x), str2);
        d(str + ".OID." + ((Object) c14549x), str2);
    }

    @Override
    public final Provider.Service getService(String str, String str2) {
        String str3 = str + "." + org.bouncycastle.util.w.p(str2);
        Provider.Service service = this.f101718b.get(str3);
        if (service == null) {
            synchronized (this) {
                try {
                    service = (Provider.Service) (!this.f101718b.containsKey(str3) ? AccessController.doPrivileged(new b(str, str2, str3)) : this.f101718b.get(str3));
                } finally {
                }
            }
        }
        return service;
    }

    @Override
    public void h(String str, Map<String, String> map) {
        put(str + " ImplementedIn", "Software");
        for (String str2 : map.o()) {
            String str3 = str + " " + str2;
            if (containsKey(str3)) {
                throw new IllegalStateException("duplicate provider attribute key (" + str3 + ") found");
            }
            put(str3, map.get(str2));
        }
    }

    @Override
    public void i(String str, C14549x c14549x, String str2, Map<String, String> map) {
        g(str, c14549x, str2);
        h(str + "." + ((Object) c14549x), map);
        h(str + ".OID." + ((Object) c14549x), map);
    }

    public final void r(String str, InterfaceC2382n[] interfaceC2382nArr) {
        for (int i10 = 0; i10 != interfaceC2382nArr.length; i10++) {
            InterfaceC2382n interfaceC2382n = interfaceC2382nArr[i10];
            try {
                Bi.r.a(interfaceC2382n);
                v(str, interfaceC2382n.getServiceName());
            } catch (CryptoServiceConstraintsException unused) {
                Logger logger = f101699c;
                if (logger.isLoggable(Level.FINE)) {
                    logger.fine("service for " + interfaceC2382n.getServiceName() + " ignored due to constraints");
                }
            }
        }
    }

    public final void s(String str, String[] strArr) {
        for (int i10 = 0; i10 != strArr.length; i10++) {
            v(str, strArr[i10]);
        }
    }

    public final void u() {
        c(InterfaceC15100a.f108016a0, new Ll.c());
        c(InterfaceC15100a.f108021b0, new Ll.c());
        c(InterfaceC15100a.f108026c0, new Ll.c());
        c(InterfaceC15100a.f108031d0, new Ll.c());
        c(InterfaceC15100a.f108036e0, new Ll.c());
        c(InterfaceC15100a.f108041f0, new Ll.c());
        c(InterfaceC15100a.f108046g0, new Ll.c());
        c(InterfaceC15100a.f108051h0, new Ll.c());
        c(InterfaceC15100a.f108056i0, new Ll.c());
        c(InterfaceC15100a.f108061j0, new Ll.c());
        c(InterfaceC15100a.f108066k0, new Ll.c());
        c(InterfaceC15100a.f108071l0, new Ll.c());
        c(InterfaceC15100a.f108076m0, new Ll.c());
        c(InterfaceC15100a.f108081n0, new Ll.c());
        c(InterfaceC15100a.f108086o0, new Ll.c());
        c(InterfaceC15100a.f108091p0, new Ll.c());
        c(InterfaceC15100a.f108096q0, new Ll.c());
        c(InterfaceC15100a.f108101r0, new Ll.c());
        c(InterfaceC15100a.f108106s0, new Ll.c());
        c(InterfaceC15100a.f108110t0, new Ll.c());
        c(InterfaceC15100a.f108114u0, new Ll.c());
        c(InterfaceC15100a.f108118v0, new Ll.c());
        c(InterfaceC15100a.f108122w0, new Ll.c());
        c(InterfaceC15100a.f108126x0, new Ll.c());
        c(InterfaceC15100a.f108130y0, new Ll.c());
        c(InterfaceC15100a.f108134z0, new Ll.c());
        c(InterfaceC15100a.f107912A0, new Ll.c());
        c(InterfaceC15100a.f107916B0, new Ll.c());
        c(InterfaceC15100a.f107920C0, new Ll.c());
        c(InterfaceC15100a.f107924D0, new Ll.c());
        c(InterfaceC15100a.f107928E0, new Ll.c());
        c(InterfaceC15100a.f107932F0, new Ll.c());
        c(InterfaceC15100a.f107936G0, new Ll.c());
        c(InterfaceC15100a.f107940H0, new Ll.c());
        c(InterfaceC15100a.f107944I0, new Ll.c());
        c(InterfaceC15100a.f107948J0, new Ll.c());
        c(InterfaceC15100a.f107952K0, new Ll.c());
        c(InterfaceC15100a.f107964N0, new Ll.c());
        c(InterfaceC15100a.f107972P0, new Ll.c());
        c(InterfaceC15100a.f107980R0, new Ll.c());
        c(new C14549x("1.3.9999.6.4.10"), new Ll.c());
        c(InterfaceC15100a.f107984S0, new Ll.c());
        c(InterfaceC15100a.f107992U0, new Ll.c());
        c(InterfaceC15100a.f108000W0, new Ll.c());
        c(Xk.m.f29580r, new Kl.d());
        c(Xk.m.f29584v, new El.d());
        c(Xk.m.f29585w, new Nl.f());
        c(InterfaceC15463a.f117695a, new Nl.f());
        c(Xk.m.f29533F, new Nl.h());
        c(InterfaceC15463a.f117696b, new Nl.h());
        c(Xh.t.f29047Q2, new Cl.d());
        c(InterfaceC15100a.f108012Z0, new Hl.c());
        c(InterfaceC15100a.f108102r1, new xl.c());
        c(InterfaceC15100a.f108107s1, new xl.c());
        c(InterfaceC15100a.f108115u1, new C16016c());
        c(InterfaceC15100a.f108119v1, new C16016c());
        c(InterfaceC15100a.f108123w1, new C16016c());
        c(InterfaceC15100a.f108127x1, new C16016c());
        c(InterfaceC15100a.f108131y1, new C16016c());
        c(InterfaceC15100a.f108135z1, new C16016c());
        c(InterfaceC15100a.f107974P2, new Bl.d());
        c(InterfaceC15100a.f107978Q2, new Bl.d());
        C14549x c14549x = InterfaceC15100a.f107982R2;
        c(c14549x, new Bl.d());
        c(InterfaceC15100a.f107969O1, new vl.d());
        c(InterfaceC15100a.f107977Q1, new vl.d());
        c(InterfaceC15100a.f107985S1, new vl.d());
        c(InterfaceC15100a.f107993U1, new vl.d());
        c(InterfaceC15100a.f108001W1, new vl.d());
        c(InterfaceC15100a.f108074l3, new C15645d());
        c(InterfaceC15100a.f108079m3, new C15645d());
        c(InterfaceC15100a.f108084n3, new C15645d());
        c(InterfaceC15100a.f108094p3, new Al.d());
        c(InterfaceC15100a.f108099q3, new Al.d());
        c(InterfaceC15100a.f108104r3, new Al.d());
        c(c14549x, new Bl.d());
        c(InterfaceC15100a.f107986S2, new Bl.d());
        c(InterfaceC15100a.f107990T2, new Bl.d());
        c(InterfaceC15100a.f107994U2, new Bl.d());
        c(InterfaceC15100a.f107946I2, new Fl.d());
        c(InterfaceC15100a.f107950J2, new Fl.d());
        c(InterfaceC15100a.f107954K2, new Fl.d());
        c(InterfaceC15100a.f107958L2, new Fl.d());
    }

    public final void v(String str, String str2) {
        Class a10 = C3667g.a(C14720a.class, str + str2 + "$Mappings");
        if (a10 != null) {
            try {
                ((AbstractC3895a) a10.newInstance()).a(this);
            } catch (Exception e10) {
                throw new InternalError("cannot create instance of " + str + str2 + "$Mappings : " + ((Object) e10));
            }
        }
    }

    public final void x() {
        String str;
        String str2;
        s(f101712p, f101713q);
        s(f101705i, f101706j);
        s(f101705i, f101707k);
        r(f101705i, f101708l);
        s(f101709m, f101710n);
        s(f101709m, f101711o);
        s(f101714r, f101715s);
        s(f101716t, f101717u);
        u();
        put("X509Store.CERTIFICATE/COLLECTION", "org.bouncycastle.jce.provider.X509StoreCertCollection");
        put("X509Store.ATTRIBUTECERTIFICATE/COLLECTION", "org.bouncycastle.jce.provider.X509StoreAttrCertCollection");
        put("X509Store.CRL/COLLECTION", "org.bouncycastle.jce.provider.X509StoreCRLCollection");
        put("X509Store.CERTIFICATEPAIR/COLLECTION", "org.bouncycastle.jce.provider.X509StoreCertPairCollection");
        put("X509Store.CERTIFICATE/LDAP", "org.bouncycastle.jce.provider.X509StoreLDAPCerts");
        put("X509Store.CRL/LDAP", "org.bouncycastle.jce.provider.X509StoreLDAPCRLs");
        put("X509Store.ATTRIBUTECERTIFICATE/LDAP", "org.bouncycastle.jce.provider.X509StoreLDAPAttrCerts");
        put("X509Store.CERTIFICATEPAIR/LDAP", "org.bouncycastle.jce.provider.X509StoreLDAPCertPairs");
        put("X509StreamParser.CERTIFICATE", "org.bouncycastle.jce.provider.X509CertParser");
        put("X509StreamParser.ATTRIBUTECERTIFICATE", "org.bouncycastle.jce.provider.X509AttrCertParser");
        put("X509StreamParser.CRL", "org.bouncycastle.jce.provider.X509CRLParser");
        put("X509StreamParser.CERTIFICATEPAIR", "org.bouncycastle.jce.provider.X509CertPairParser");
        put("Cipher.BROKENPBEWITHMD5ANDDES", "org.bouncycastle.jce.provider.BrokenJCEBlockCipher$BrokePBEWithMD5AndDES");
        put("Cipher.BROKENPBEWITHSHA1ANDDES", "org.bouncycastle.jce.provider.BrokenJCEBlockCipher$BrokePBEWithSHA1AndDES");
        put("Cipher.OLDPBEWITHSHAANDTWOFISH-CBC", "org.bouncycastle.jce.provider.BrokenJCEBlockCipher$OldPBEWithSHAAndTwofish");
        Class cls = f101704h;
        put("CertPathValidator.RFC3281", "org.bouncycastle.jce.provider.PKIXAttrCertPathValidatorSpi");
        put("CertPathBuilder.RFC3281", "org.bouncycastle.jce.provider.PKIXAttrCertPathBuilderSpi");
        if (cls != null) {
            str = "org.bouncycastle.jce.provider.PKIXCertPathValidatorSpi_8";
            put("CertPathValidator.RFC3280", "org.bouncycastle.jce.provider.PKIXCertPathValidatorSpi_8");
            str2 = "org.bouncycastle.jce.provider.PKIXCertPathBuilderSpi_8";
        } else {
            str = "org.bouncycastle.jce.provider.PKIXCertPathValidatorSpi";
            put("CertPathValidator.RFC3280", "org.bouncycastle.jce.provider.PKIXCertPathValidatorSpi");
            str2 = "org.bouncycastle.jce.provider.PKIXCertPathBuilderSpi";
        }
        put("CertPathBuilder.RFC3280", str2);
        put("CertPathValidator.PKIX", str);
        put("CertPathBuilder.PKIX", str2);
        put("CertStore.Collection", "org.bouncycastle.jce.provider.CertStoreCollectionSpi");
        put("CertStore.LDAP", "org.bouncycastle.jce.provider.X509LDAPCertStoreSpi");
        put("CertStore.Multi", "org.bouncycastle.jce.provider.MultiCertStoreSpi");
        put("Alg.Alias.CertStore.X509LDAP", "LDAP");
    }
}
