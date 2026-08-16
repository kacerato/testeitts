package Kj;

import android.security.keystore.KeyProperties;
import bi.InterfaceC3890b;
import bk.AbstractC3896b;
import hi.E0;
import java.util.HashMap;
import java.util.Map;
import nj.InterfaceC14453b;
import oh.C14549x;

public class r {

    public static final String f11455a = "org.bouncycastle.jcajce.provider.asymmetric.rsa.";

    public static final Map<String, String> f11456b;

    public static class a extends AbstractC3896b {
        @Override
        public void a(Tj.a aVar) {
            String str;
            String str2;
            aVar.d("AlgorithmParameters.OAEP", "org.bouncycastle.jcajce.provider.asymmetric.rsa.AlgorithmParametersSpi$OAEP");
            aVar.d("AlgorithmParameters.PSS", "org.bouncycastle.jcajce.provider.asymmetric.rsa.AlgorithmParametersSpi$PSS");
            aVar.d("Alg.Alias.AlgorithmParameters.RSAPSS", KeyProperties.SIGNATURE_PADDING_RSA_PSS);
            aVar.d("Alg.Alias.AlgorithmParameters.RSASSA-PSS", KeyProperties.SIGNATURE_PADDING_RSA_PSS);
            aVar.d("Alg.Alias.AlgorithmParameters.SHA224withRSA/PSS", KeyProperties.SIGNATURE_PADDING_RSA_PSS);
            aVar.d("Alg.Alias.AlgorithmParameters.SHA256withRSA/PSS", KeyProperties.SIGNATURE_PADDING_RSA_PSS);
            aVar.d("Alg.Alias.AlgorithmParameters.SHA384withRSA/PSS", KeyProperties.SIGNATURE_PADDING_RSA_PSS);
            aVar.d("Alg.Alias.AlgorithmParameters.SHA512withRSA/PSS", KeyProperties.SIGNATURE_PADDING_RSA_PSS);
            aVar.d("Alg.Alias.AlgorithmParameters.SHA224WITHRSAANDMGF1", KeyProperties.SIGNATURE_PADDING_RSA_PSS);
            aVar.d("Alg.Alias.AlgorithmParameters.SHA256WITHRSAANDMGF1", KeyProperties.SIGNATURE_PADDING_RSA_PSS);
            aVar.d("Alg.Alias.AlgorithmParameters.SHA384WITHRSAANDMGF1", KeyProperties.SIGNATURE_PADDING_RSA_PSS);
            aVar.d("Alg.Alias.AlgorithmParameters.SHA512WITHRSAANDMGF1", KeyProperties.SIGNATURE_PADDING_RSA_PSS);
            aVar.d("Alg.Alias.AlgorithmParameters.SHA3-224WITHRSAANDMGF1", KeyProperties.SIGNATURE_PADDING_RSA_PSS);
            aVar.d("Alg.Alias.AlgorithmParameters.SHA3-256WITHRSAANDMGF1", KeyProperties.SIGNATURE_PADDING_RSA_PSS);
            aVar.d("Alg.Alias.AlgorithmParameters.SHA3-384WITHRSAANDMGF1", KeyProperties.SIGNATURE_PADDING_RSA_PSS);
            aVar.d("Alg.Alias.AlgorithmParameters.SHA3-512WITHRSAANDMGF1", KeyProperties.SIGNATURE_PADDING_RSA_PSS);
            aVar.d("Alg.Alias.AlgorithmParameters.RAWRSAPSS", KeyProperties.SIGNATURE_PADDING_RSA_PSS);
            aVar.d("Alg.Alias.AlgorithmParameters.NONEWITHRSAPSS", KeyProperties.SIGNATURE_PADDING_RSA_PSS);
            aVar.d("Alg.Alias.AlgorithmParameters.NONEWITHRSASSA-PSS", KeyProperties.SIGNATURE_PADDING_RSA_PSS);
            aVar.d("Alg.Alias.AlgorithmParameters.NONEWITHRSAANDMGF1", KeyProperties.SIGNATURE_PADDING_RSA_PSS);
            aVar.h("Cipher.RSA", r.f11456b);
            aVar.d("Cipher.RSA", "org.bouncycastle.jcajce.provider.asymmetric.rsa.CipherSpi$NoPadding");
            aVar.d("Cipher.RSA/RAW", "org.bouncycastle.jcajce.provider.asymmetric.rsa.CipherSpi$NoPadding");
            aVar.d("Cipher.RSA/PKCS1", "org.bouncycastle.jcajce.provider.asymmetric.rsa.CipherSpi$PKCS1v1_5Padding");
            C14549x c14549x = Xh.t.f29017H0;
            aVar.i("Cipher", c14549x, "org.bouncycastle.jcajce.provider.asymmetric.rsa.CipherSpi$PKCS1v1_5Padding", r.f11456b);
            C14549x c14549x2 = E0.f90637W4;
            aVar.i("Cipher", c14549x2, "org.bouncycastle.jcajce.provider.asymmetric.rsa.CipherSpi$PKCS1v1_5Padding", r.f11456b);
            aVar.d("Cipher.RSA/1", "org.bouncycastle.jcajce.provider.asymmetric.rsa.CipherSpi$PKCS1v1_5Padding_PrivateOnly");
            aVar.d("Cipher.RSA/2", "org.bouncycastle.jcajce.provider.asymmetric.rsa.CipherSpi$PKCS1v1_5Padding_PublicOnly");
            aVar.b("Cipher.RSA/OAEP", "org.bouncycastle.jcajce.provider.asymmetric.rsa.CipherSpi$OAEPPadding", r.f11456b);
            C14549x c14549x3 = Xh.t.f29033N0;
            aVar.i("Cipher", c14549x3, "org.bouncycastle.jcajce.provider.asymmetric.rsa.CipherSpi$OAEPPadding", r.f11456b);
            aVar.b("Cipher.RSA/ISO9796-1", "org.bouncycastle.jcajce.provider.asymmetric.rsa.CipherSpi$ISO9796d1Padding", r.f11456b);
            aVar.d("Alg.Alias.Cipher.RSA//RAW", KeyProperties.KEY_ALGORITHM_RSA);
            aVar.d("Alg.Alias.Cipher.RSA//NOPADDING", KeyProperties.KEY_ALGORITHM_RSA);
            aVar.d("Alg.Alias.Cipher.RSA//PKCS1PADDING", "RSA/PKCS1");
            aVar.d("Alg.Alias.Cipher.RSA//OAEPPADDING", "RSA/OAEP");
            aVar.d("Alg.Alias.Cipher.RSA//ISO9796-1PADDING", "RSA/ISO9796-1");
            aVar.d("KeyFactory.RSA", "org.bouncycastle.jcajce.provider.asymmetric.rsa.KeyFactorySpi");
            aVar.d("KeyPairGenerator.RSA", "org.bouncycastle.jcajce.provider.asymmetric.rsa.KeyPairGeneratorSpi");
            aVar.d("KeyFactory.RSASSA-PSS", "org.bouncycastle.jcajce.provider.asymmetric.rsa.KeyFactorySpi");
            aVar.d("KeyPairGenerator.RSASSA-PSS", "org.bouncycastle.jcajce.provider.asymmetric.rsa.KeyPairGeneratorSpi$PSS");
            Sj.i iVar = new Sj.i();
            l(aVar, c14549x, KeyProperties.KEY_ALGORITHM_RSA, iVar);
            l(aVar, c14549x2, KeyProperties.KEY_ALGORITHM_RSA, iVar);
            l(aVar, c14549x3, KeyProperties.KEY_ALGORITHM_RSA, iVar);
            C14549x c14549x4 = Xh.t.f29045Q0;
            l(aVar, c14549x4, KeyProperties.KEY_ALGORITHM_RSA, iVar);
            n(aVar, c14549x, KeyProperties.KEY_ALGORITHM_RSA);
            n(aVar, c14549x2, KeyProperties.KEY_ALGORITHM_RSA);
            n(aVar, c14549x3, "OAEP");
            n(aVar, c14549x4, KeyProperties.SIGNATURE_PADDING_RSA_PSS);
            aVar.b("Signature.RSASSA-PSS", "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$PSSwithRSA", r.f11456b);
            aVar.d("Alg.Alias.Signature." + ((Object) c14549x4), "RSASSA-PSS");
            aVar.d("Alg.Alias.Signature.OID." + ((Object) c14549x4), "RSASSA-PSS");
            aVar.b("Signature.RSA", "org.bouncycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$noneRSA", r.f11456b);
            aVar.b("Signature.RAWRSASSA-PSS", "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$nonePSS", r.f11456b);
            aVar.d("Alg.Alias.Signature.RAWRSA", KeyProperties.KEY_ALGORITHM_RSA);
            aVar.d("Alg.Alias.Signature.NONEWITHRSA", KeyProperties.KEY_ALGORITHM_RSA);
            aVar.d("Alg.Alias.Signature.RAWRSAPSS", "RAWRSASSA-PSS");
            aVar.d("Alg.Alias.Signature.NONEWITHRSAPSS", "RAWRSASSA-PSS");
            aVar.d("Alg.Alias.Signature.NONEWITHRSASSA-PSS", "RAWRSASSA-PSS");
            aVar.d("Alg.Alias.Signature.NONEWITHRSAANDMGF1", "RAWRSASSA-PSS");
            aVar.d("Alg.Alias.Signature.RSAPSS", "RSASSA-PSS");
            q(aVar, "SHA224", "MGF1", "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA224withRSA");
            q(aVar, "SHA256", "MGF1", "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA256withRSA");
            q(aVar, "SHA384", "MGF1", "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA384withRSA");
            q(aVar, "SHA512", "MGF1", "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA512withRSA");
            q(aVar, "SHA512(224)", "MGF1", "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA512_224withRSA");
            q(aVar, "SHA512(256)", "MGF1", "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA512_256withRSA");
            q(aVar, "SHA3-224", "MGF1", "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA3_224withRSA");
            q(aVar, "SHA3-256", "MGF1", "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA3_256withRSA");
            q(aVar, "SHA3-384", "MGF1", "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA3_384withRSA");
            q(aVar, "SHA3-512", "MGF1", "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA3_512withRSA");
            r(aVar, "SHAKE128", "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHAKE128WithRSAPSS", InterfaceC14453b.f98268o);
            r(aVar, "SHAKE256", "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHAKE256WithRSAPSS", InterfaceC14453b.f98269p);
            q(aVar, "SHA224", "SHAKE128", "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA224withRSAandSHAKE128");
            q(aVar, "SHA256", "SHAKE128", "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA256withRSAandSHAKE128");
            q(aVar, "SHA384", "SHAKE128", "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA384withRSAandSHAKE128");
            q(aVar, "SHA512", "SHAKE128", "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA512withRSAandSHAKE128");
            q(aVar, "SHA512(224)", "SHAKE128", "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA512_224withRSAandSHAKE128");
            q(aVar, "SHA512(256)", "SHAKE128", "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA512_256withRSAandSHAKE128");
            q(aVar, "SHA224", "SHAKE256", "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA224withRSAandSHAKE256");
            q(aVar, "SHA256", "SHAKE256", "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA256withRSAandSHAKE256");
            q(aVar, "SHA384", "SHAKE256", "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA384withRSAandSHAKE256");
            q(aVar, "SHA512", "SHAKE256", "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA512withRSAandSHAKE256");
            q(aVar, "SHA512(224)", "SHAKE256", "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA512_224withRSAandSHAKE256");
            q(aVar, "SHA512(256)", "SHAKE256", "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA512_256withRSAandSHAKE256");
            q(aVar, "SHA3-224", "SHAKE128", "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA3_224withRSAandSHAKE128");
            q(aVar, "SHA3-256", "SHAKE128", "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA3_256withRSAandSHAKE128");
            q(aVar, "SHA3-384", "SHAKE128", "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA3_384withRSAandSHAKE128");
            q(aVar, "SHA3-512", "SHAKE128", "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA3_512withRSAandSHAKE128");
            q(aVar, "SHA3-224", "SHAKE256", "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA3_224withRSAandSHAKE256");
            q(aVar, "SHA3-256", "SHAKE256", "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA3_256withRSAandSHAKE256");
            q(aVar, "SHA3-384", "SHAKE256", "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA3_384withRSAandSHAKE256");
            q(aVar, "SHA3-512", "SHAKE256", "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA3_512withRSAandSHAKE256");
            if (aVar.f("MessageDigest", "MD2")) {
                str2 = "SHA3-512";
                str = "SHA3-384";
                o(aVar, "MD2", "org.bouncycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$MD2", Xh.t.f29018I0);
            } else {
                str = "SHA3-384";
                str2 = "SHA3-512";
            }
            if (aVar.f("MessageDigest", "MD4")) {
                o(aVar, "MD4", "org.bouncycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$MD4", Xh.t.f29022J0);
            }
            if (aVar.f("MessageDigest", KeyProperties.DIGEST_MD5)) {
                o(aVar, KeyProperties.DIGEST_MD5, "org.bouncycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$MD5", Xh.t.f29026K0);
                p(aVar, KeyProperties.DIGEST_MD5, "org.bouncycastle.jcajce.provider.asymmetric.rsa.ISOSignatureSpi$MD5WithRSAEncryption");
            }
            if (aVar.f("MessageDigest", "SHA1")) {
                aVar.d("Alg.Alias.AlgorithmParameters.SHA1withRSA/PSS", KeyProperties.SIGNATURE_PADDING_RSA_PSS);
                aVar.d("Alg.Alias.AlgorithmParameters.SHA1WITHRSAANDMGF1", KeyProperties.SIGNATURE_PADDING_RSA_PSS);
                q(aVar, "SHA1", "MGF1", "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA1withRSA");
                q(aVar, "SHA1", "SHAKE128", "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA1withRSAandSHAKE128");
                q(aVar, "SHA1", "SHAKE256", "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA1withRSAandSHAKE256");
                o(aVar, "SHA1", "org.bouncycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$SHA1", Xh.t.f29030L0);
                p(aVar, "SHA1", "org.bouncycastle.jcajce.provider.asymmetric.rsa.ISOSignatureSpi$SHA1WithRSAEncryption");
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Alg.Alias.Signature.");
                C14549x c14549x5 = Bj.b.f1913k;
                sb2.append((Object) c14549x5);
                aVar.d(sb2.toString(), "SHA1WITHRSA");
                aVar.d("Alg.Alias.Signature.OID." + ((Object) c14549x5), "SHA1WITHRSA");
                s(aVar, "SHA1", "org.bouncycastle.jcajce.provider.asymmetric.rsa.X931SignatureSpi$SHA1WithRSAEncryption");
            }
            o(aVar, "SHA224", "org.bouncycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$SHA224", Xh.t.f29059U0);
            o(aVar, "SHA256", "org.bouncycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$SHA256", Xh.t.f29049R0);
            o(aVar, "SHA384", "org.bouncycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$SHA384", Xh.t.f29051S0);
            o(aVar, "SHA512", "org.bouncycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$SHA512", Xh.t.f29055T0);
            o(aVar, "SHA512(224)", "org.bouncycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$SHA512_224", Xh.t.f29063V0);
            o(aVar, "SHA512(256)", "org.bouncycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$SHA512_256", Xh.t.f29065W0);
            o(aVar, "SHA3-224", "org.bouncycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$SHA3_224", Sh.d.f23358m0);
            o(aVar, "SHA3-256", "org.bouncycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$SHA3_256", Sh.d.f23360n0);
            o(aVar, str, "org.bouncycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$SHA3_384", Sh.d.f23362o0);
            o(aVar, str2, "org.bouncycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$SHA3_512", Sh.d.f23364p0);
            p(aVar, "SHA224", "org.bouncycastle.jcajce.provider.asymmetric.rsa.ISOSignatureSpi$SHA224WithRSAEncryption");
            p(aVar, "SHA256", "org.bouncycastle.jcajce.provider.asymmetric.rsa.ISOSignatureSpi$SHA256WithRSAEncryption");
            p(aVar, "SHA384", "org.bouncycastle.jcajce.provider.asymmetric.rsa.ISOSignatureSpi$SHA384WithRSAEncryption");
            p(aVar, "SHA512", "org.bouncycastle.jcajce.provider.asymmetric.rsa.ISOSignatureSpi$SHA512WithRSAEncryption");
            p(aVar, "SHA512(224)", "org.bouncycastle.jcajce.provider.asymmetric.rsa.ISOSignatureSpi$SHA512_224WithRSAEncryption");
            p(aVar, "SHA512(256)", "org.bouncycastle.jcajce.provider.asymmetric.rsa.ISOSignatureSpi$SHA512_256WithRSAEncryption");
            s(aVar, "SHA224", "org.bouncycastle.jcajce.provider.asymmetric.rsa.X931SignatureSpi$SHA224WithRSAEncryption");
            s(aVar, "SHA256", "org.bouncycastle.jcajce.provider.asymmetric.rsa.X931SignatureSpi$SHA256WithRSAEncryption");
            s(aVar, "SHA384", "org.bouncycastle.jcajce.provider.asymmetric.rsa.X931SignatureSpi$SHA384WithRSAEncryption");
            s(aVar, "SHA512", "org.bouncycastle.jcajce.provider.asymmetric.rsa.X931SignatureSpi$SHA512WithRSAEncryption");
            s(aVar, "SHA512(224)", "org.bouncycastle.jcajce.provider.asymmetric.rsa.X931SignatureSpi$SHA512_224WithRSAEncryption");
            s(aVar, "SHA512(256)", "org.bouncycastle.jcajce.provider.asymmetric.rsa.X931SignatureSpi$SHA512_256WithRSAEncryption");
            if (aVar.f("MessageDigest", "RIPEMD128")) {
                o(aVar, "RIPEMD128", "org.bouncycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$RIPEMD128", InterfaceC3890b.f33241g);
                o(aVar, "RMD128", "org.bouncycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$RIPEMD128", null);
                s(aVar, "RMD128", "org.bouncycastle.jcajce.provider.asymmetric.rsa.X931SignatureSpi$RIPEMD128WithRSAEncryption");
                s(aVar, "RIPEMD128", "org.bouncycastle.jcajce.provider.asymmetric.rsa.X931SignatureSpi$RIPEMD128WithRSAEncryption");
            }
            if (aVar.f("MessageDigest", "RIPEMD160")) {
                o(aVar, "RIPEMD160", "org.bouncycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$RIPEMD160", InterfaceC3890b.f33240f);
                o(aVar, "RMD160", "org.bouncycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$RIPEMD160", null);
                aVar.d("Alg.Alias.Signature.RIPEMD160WithRSA/ISO9796-2", "RIPEMD160withRSA/ISO9796-2");
                aVar.d("Signature.RIPEMD160withRSA/ISO9796-2", "org.bouncycastle.jcajce.provider.asymmetric.rsa.ISOSignatureSpi$RIPEMD160WithRSAEncryption");
                s(aVar, "RMD160", "org.bouncycastle.jcajce.provider.asymmetric.rsa.X931SignatureSpi$RIPEMD160WithRSAEncryption");
                s(aVar, "RIPEMD160", "org.bouncycastle.jcajce.provider.asymmetric.rsa.X931SignatureSpi$RIPEMD160WithRSAEncryption");
            }
            if (aVar.f("MessageDigest", "RIPEMD256")) {
                o(aVar, "RIPEMD256", "org.bouncycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$RIPEMD256", InterfaceC3890b.f33242h);
                o(aVar, "RMD256", "org.bouncycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$RIPEMD256", null);
            }
            if (aVar.f("MessageDigest", "WHIRLPOOL")) {
                p(aVar, "Whirlpool", "org.bouncycastle.jcajce.provider.asymmetric.rsa.ISOSignatureSpi$WhirlpoolWithRSAEncryption");
                p(aVar, "WHIRLPOOL", "org.bouncycastle.jcajce.provider.asymmetric.rsa.ISOSignatureSpi$WhirlpoolWithRSAEncryption");
                s(aVar, "Whirlpool", "org.bouncycastle.jcajce.provider.asymmetric.rsa.X931SignatureSpi$WhirlpoolWithRSAEncryption");
                s(aVar, "WHIRLPOOL", "org.bouncycastle.jcajce.provider.asymmetric.rsa.X931SignatureSpi$WhirlpoolWithRSAEncryption");
            }
        }

        public final void o(Tj.a aVar, String str, String str2, C14549x c14549x) {
            String str3 = str + "WITHRSA";
            String str4 = str + "withRSA";
            String str5 = str + "WithRSA";
            String str6 = str + "/RSA";
            String str7 = str + "WITHRSAENCRYPTION";
            String str8 = str + "withRSAEncryption";
            aVar.d("Signature." + str3, str2);
            aVar.d("Alg.Alias.Signature." + str4, str3);
            aVar.d("Alg.Alias.Signature." + str5, str3);
            aVar.d("Alg.Alias.Signature." + str7, str3);
            aVar.d("Alg.Alias.Signature." + str8, str3);
            aVar.d("Alg.Alias.Signature." + (str + "WithRSAEncryption"), str3);
            aVar.d("Alg.Alias.Signature." + str6, str3);
            if (c14549x != null) {
                aVar.d("Alg.Alias.Signature." + ((Object) c14549x), str3);
                aVar.d("Alg.Alias.Signature.OID." + ((Object) c14549x), str3);
            }
            aVar.h("Signature." + str3, r.f11456b);
        }

        public final void p(Tj.a aVar, String str, String str2) {
            aVar.d("Alg.Alias.Signature." + str + "withRSA/ISO9796-2", str + "WITHRSA/ISO9796-2");
            aVar.d("Alg.Alias.Signature." + str + "WithRSA/ISO9796-2", str + "WITHRSA/ISO9796-2");
            aVar.d("Signature." + str + "WITHRSA/ISO9796-2", str2);
            aVar.h("Signature." + str + "WITHRSA/ISO9796-2", r.f11456b);
        }

        public final void q(Tj.a aVar, String str, String str2, String str3) {
            String str4 = "WITHRSAAND" + str2;
            if (str2.equals("MGF1")) {
                aVar.d("Alg.Alias.Signature." + str + "withRSA/PSS", str + str4);
                aVar.d("Alg.Alias.Signature." + str + "WithRSA/PSS", str + str4);
                aVar.d("Alg.Alias.Signature." + str + "WITHRSA/PSS", str + str4);
                aVar.d("Alg.Alias.Signature." + str + "withRSASSA-PSS", str + str4);
                aVar.d("Alg.Alias.Signature." + str + "WithRSASSA-PSS", str + str4);
                aVar.d("Alg.Alias.Signature." + str + "WITHRSASSA-PSS", str + str4);
            }
            aVar.d("Alg.Alias.Signature." + str + "withRSAand" + str2, str + str4);
            aVar.d("Alg.Alias.Signature." + str + "WithRSAAnd" + str2, str + str4);
            aVar.d("Signature." + str + "WITHRSAAND" + str2, str3);
            aVar.h("Signature." + str + "WITHRSAAND" + str2, r.f11456b);
        }

        public final void r(Tj.a aVar, String str, String str2, C14549x c14549x) {
            aVar.d("Alg.Alias.Signature." + str + "withRSA/PSS", str + "WITHRSAPSS");
            aVar.d("Alg.Alias.Signature." + str + "WithRSA/PSS", str + "WITHRSAPSS");
            aVar.d("Alg.Alias.Signature." + str + "withRSASSA-PSS", str + "WITHRSAPSS");
            aVar.d("Alg.Alias.Signature." + str + "WithRSASSA-PSS", str + "WITHRSAPSS");
            aVar.d("Alg.Alias.Signature." + str + "WITHRSASSA-PSS", str + "WITHRSAPSS");
            aVar.g("Signature", c14549x, str2);
            aVar.d("Signature." + str + "WITHRSAPSS", str2);
            aVar.h("Signature." + str + "WITHRSAPSS", r.f11456b);
        }

        public final void s(Tj.a aVar, String str, String str2) {
            aVar.d("Alg.Alias.Signature." + str + "withRSA/X9.31", str + "WITHRSA/X9.31");
            aVar.d("Alg.Alias.Signature." + str + "WithRSA/X9.31", str + "WITHRSA/X9.31");
            aVar.d("Signature." + str + "WITHRSA/X9.31", str2);
            aVar.h("Signature." + str + "WITHRSA/X9.31", r.f11456b);
        }
    }

    static {
        HashMap hashMap = new HashMap();
        f11456b = hashMap;
        hashMap.put("SupportedKeyClasses", "java.security.interfaces.RSAPublicKey|java.security.interfaces.RSAPrivateKey");
        hashMap.put("SupportedKeyFormats", "PKCS#8|X.509");
    }
}
