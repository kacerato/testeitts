package Kj;

import bk.AbstractC3896b;
import oh.C14549x;
import org.bouncycastle.jcajce.provider.asymmetric.dsa.KeyFactorySpi;

public class d {

    public static final String f11433a = "org.bouncycastle.jcajce.provider.asymmetric.dsa.";

    public static class a extends AbstractC3896b {
        @Override
        public void a(Tj.a aVar) {
            aVar.d("AlgorithmParameters.DSA", "org.bouncycastle.jcajce.provider.asymmetric.dsa.AlgorithmParametersSpi");
            aVar.d("AlgorithmParameterGenerator.DSA", "org.bouncycastle.jcajce.provider.asymmetric.dsa.AlgorithmParameterGeneratorSpi");
            aVar.d("KeyPairGenerator.DSA", "org.bouncycastle.jcajce.provider.asymmetric.dsa.KeyPairGeneratorSpi");
            aVar.d("KeyFactory.DSA", "org.bouncycastle.jcajce.provider.asymmetric.dsa.KeyFactorySpi");
            aVar.d("Signature.DSA", "org.bouncycastle.jcajce.provider.asymmetric.dsa.DSASigner$stdDSA");
            aVar.d("Signature.NONEWITHDSA", "org.bouncycastle.jcajce.provider.asymmetric.dsa.DSASigner$noneDSA");
            aVar.d("Alg.Alias.Signature.RAWDSA", "NONEWITHDSA");
            aVar.d("Signature.DETDSA", "org.bouncycastle.jcajce.provider.asymmetric.dsa.DSASigner$detDSA");
            aVar.d("Signature.SHA1WITHDETDSA", "org.bouncycastle.jcajce.provider.asymmetric.dsa.DSASigner$detDSA");
            aVar.d("Signature.SHA224WITHDETDSA", "org.bouncycastle.jcajce.provider.asymmetric.dsa.DSASigner$detDSA224");
            aVar.d("Signature.SHA256WITHDETDSA", "org.bouncycastle.jcajce.provider.asymmetric.dsa.DSASigner$detDSA256");
            aVar.d("Signature.SHA384WITHDETDSA", "org.bouncycastle.jcajce.provider.asymmetric.dsa.DSASigner$detDSA384");
            aVar.d("Signature.SHA512WITHDETDSA", "org.bouncycastle.jcajce.provider.asymmetric.dsa.DSASigner$detDSA512");
            aVar.d("Signature.DDSA", "org.bouncycastle.jcajce.provider.asymmetric.dsa.DSASigner$detDSA");
            aVar.d("Signature.SHA1WITHDDSA", "org.bouncycastle.jcajce.provider.asymmetric.dsa.DSASigner$detDSA");
            aVar.d("Signature.SHA224WITHDDSA", "org.bouncycastle.jcajce.provider.asymmetric.dsa.DSASigner$detDSA224");
            aVar.d("Signature.SHA256WITHDDSA", "org.bouncycastle.jcajce.provider.asymmetric.dsa.DSASigner$detDSA256");
            aVar.d("Signature.SHA384WITHDDSA", "org.bouncycastle.jcajce.provider.asymmetric.dsa.DSASigner$detDSA384");
            aVar.d("Signature.SHA512WITHDDSA", "org.bouncycastle.jcajce.provider.asymmetric.dsa.DSASigner$detDSA512");
            aVar.d("Signature.SHA3-224WITHDDSA", "org.bouncycastle.jcajce.provider.asymmetric.dsa.DSASigner$detDSASha3_224");
            aVar.d("Signature.SHA3-256WITHDDSA", "org.bouncycastle.jcajce.provider.asymmetric.dsa.DSASigner$detDSASha3_256");
            aVar.d("Signature.SHA3-384WITHDDSA", "org.bouncycastle.jcajce.provider.asymmetric.dsa.DSASigner$detDSASha3_384");
            aVar.d("Signature.SHA3-512WITHDDSA", "org.bouncycastle.jcajce.provider.asymmetric.dsa.DSASigner$detDSASha3_512");
            g(aVar, "SHA224", "DSA", "org.bouncycastle.jcajce.provider.asymmetric.dsa.DSASigner$dsa224", Sh.d.f23334a0);
            g(aVar, "SHA256", "DSA", "org.bouncycastle.jcajce.provider.asymmetric.dsa.DSASigner$dsa256", Sh.d.f23336b0);
            g(aVar, "SHA384", "DSA", "org.bouncycastle.jcajce.provider.asymmetric.dsa.DSASigner$dsa384", Sh.d.f23338c0);
            g(aVar, "SHA512", "DSA", "org.bouncycastle.jcajce.provider.asymmetric.dsa.DSASigner$dsa512", Sh.d.f23340d0);
            g(aVar, "SHA3-224", "DSA", "org.bouncycastle.jcajce.provider.asymmetric.dsa.DSASigner$dsaSha3_224", Sh.d.f23342e0);
            g(aVar, "SHA3-256", "DSA", "org.bouncycastle.jcajce.provider.asymmetric.dsa.DSASigner$dsaSha3_256", Sh.d.f23344f0);
            g(aVar, "SHA3-384", "DSA", "org.bouncycastle.jcajce.provider.asymmetric.dsa.DSASigner$dsaSha3_384", Sh.d.f23346g0);
            g(aVar, "SHA3-512", "DSA", "org.bouncycastle.jcajce.provider.asymmetric.dsa.DSASigner$dsaSha3_512", Sh.d.f23348h0);
            aVar.d("Alg.Alias.Signature.SHA/DSA", "DSA");
            aVar.d("Alg.Alias.Signature.SHA1withDSA", "DSA");
            aVar.d("Alg.Alias.Signature.SHA1WITHDSA", "DSA");
            aVar.d("Alg.Alias.Signature.1.3.14.3.2.26with1.2.840.10040.4.1", "DSA");
            aVar.d("Alg.Alias.Signature.1.3.14.3.2.26with1.2.840.10040.4.3", "DSA");
            aVar.d("Alg.Alias.Signature.DSAwithSHA1", "DSA");
            aVar.d("Alg.Alias.Signature.DSAWITHSHA1", "DSA");
            aVar.d("Alg.Alias.Signature.SHA1WithDSA", "DSA");
            aVar.d("Alg.Alias.Signature.DSAWithSHA1", "DSA");
            f(aVar, "RIPEMD160", "DSA", "org.bouncycastle.jcajce.provider.asymmetric.dsa.DSASigner$dsaRMD160");
            KeyFactorySpi keyFactorySpi = new KeyFactorySpi();
            int i10 = 0;
            while (true) {
                C14549x[] c14549xArr = org.bouncycastle.jcajce.provider.asymmetric.dsa.f.f101152a;
                if (i10 == c14549xArr.length) {
                    return;
                }
                aVar.d("Alg.Alias.Signature." + ((Object) c14549xArr[i10]), "DSA");
                l(aVar, c14549xArr[i10], "DSA", keyFactorySpi);
                m(aVar, c14549xArr[i10], "DSA");
                i10++;
            }
        }
    }
}
