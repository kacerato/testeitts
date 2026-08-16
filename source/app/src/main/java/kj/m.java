package Kj;

import bk.AbstractC3896b;
import java.util.HashMap;
import java.util.Map;

public class m {

    public static final String f11449a = "org.bouncycastle.jcajce.provider.asymmetric.ec.";

    public static final Map<String, String> f11450b;

    public static class a extends AbstractC3896b {
        @Override
        public void a(Tj.a aVar) {
            aVar.d("Signature.SHA256WITHSM2", "org.bouncycastle.jcajce.provider.asymmetric.ec.GMSignatureSpi$sha256WithSM2");
            aVar.d("Alg.Alias.Signature." + ((Object) Fh.b.f6877h0), "SHA256WITHSM2");
            aVar.d("Signature.SM3WITHSM2", "org.bouncycastle.jcajce.provider.asymmetric.ec.GMSignatureSpi$sm3WithSM2");
            aVar.d("Alg.Alias.Signature." + ((Object) Fh.b.f6873f0), "SM3WITHSM2");
            aVar.d("KeyPairGenerator.SM2", "org.bouncycastle.jcajce.provider.asymmetric.ec.GMKeyPairGeneratorSpi$SM2");
            aVar.d("Cipher.SM2", "org.bouncycastle.jcajce.provider.asymmetric.ec.GMCipherSpi$SM2");
            aVar.d("Alg.Alias.Cipher.SM2WITHSM3", "SM2");
            aVar.d("Alg.Alias.Cipher." + ((Object) Fh.b.f6850O), "SM2");
            aVar.d("Cipher.SM2WITHBLAKE2B", "org.bouncycastle.jcajce.provider.asymmetric.ec.GMCipherSpi$SM2withBlake2b");
            aVar.d("Alg.Alias.Cipher." + ((Object) Fh.b.f6858W), "SM2WITHBLAKE2B");
            aVar.d("Cipher.SM2WITHBLAKE2S", "org.bouncycastle.jcajce.provider.asymmetric.ec.GMCipherSpi$SM2withBlake2s");
            aVar.d("Alg.Alias.Cipher." + ((Object) Fh.b.f6859X), "SM2WITHBLAKE2S");
            aVar.d("Cipher.SM2WITHWHIRLPOOL", "org.bouncycastle.jcajce.provider.asymmetric.ec.GMCipherSpi$SM2withWhirlpool");
            aVar.d("Alg.Alias.Cipher." + ((Object) Fh.b.f6857V), "SM2WITHWHIRLPOOL");
            aVar.d("Cipher.SM2WITHMD5", "org.bouncycastle.jcajce.provider.asymmetric.ec.GMCipherSpi$SM2withMD5");
            aVar.d("Alg.Alias.Cipher." + ((Object) Fh.b.f6860Y), "SM2WITHMD5");
            aVar.d("Cipher.SM2WITHRIPEMD160", "org.bouncycastle.jcajce.provider.asymmetric.ec.GMCipherSpi$SM2withRMD");
            aVar.d("Alg.Alias.Cipher." + ((Object) Fh.b.f6856U), "SM2WITHRIPEMD160");
            aVar.d("Cipher.SM2WITHSHA1", "org.bouncycastle.jcajce.provider.asymmetric.ec.GMCipherSpi$SM2withSha1");
            aVar.d("Alg.Alias.Cipher." + ((Object) Fh.b.f6851P), "SM2WITHSHA1");
            aVar.d("Cipher.SM2WITHSHA224", "org.bouncycastle.jcajce.provider.asymmetric.ec.GMCipherSpi$SM2withSha224");
            aVar.d("Alg.Alias.Cipher." + ((Object) Fh.b.f6852Q), "SM2WITHSHA224");
            aVar.d("Cipher.SM2WITHSHA256", "org.bouncycastle.jcajce.provider.asymmetric.ec.GMCipherSpi$SM2withSha256");
            aVar.d("Alg.Alias.Cipher." + ((Object) Fh.b.f6853R), "SM2WITHSHA256");
            aVar.d("Cipher.SM2WITHSHA384", "org.bouncycastle.jcajce.provider.asymmetric.ec.GMCipherSpi$SM2withSha384");
            aVar.d("Alg.Alias.Cipher." + ((Object) Fh.b.f6854S), "SM2WITHSHA384");
            aVar.d("Cipher.SM2WITHSHA512", "org.bouncycastle.jcajce.provider.asymmetric.ec.GMCipherSpi$SM2withSha512");
            aVar.d("Alg.Alias.Cipher." + ((Object) Fh.b.f6855T), "SM2WITHSHA512");
        }
    }

    static {
        HashMap hashMap = new HashMap();
        f11450b = hashMap;
        hashMap.put("SupportedKeyClasses", "java.security.interfaces.ECPublicKey|java.security.interfaces.ECPrivateKey");
        hashMap.put("SupportedKeyFormats", "PKCS#8|X.509");
    }
}
