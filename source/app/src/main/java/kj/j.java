package Kj;

import Oj.h;
import bk.AbstractC3896b;
import java.util.HashMap;
import java.util.Map;
import oh.C14549x;
import qj.InterfaceC15115a;

public class j {

    public static final String f11445a = "org.bouncycastle.jcajce.provider.asymmetric.edec.";

    public static final Map<String, String> f11446b;

    public static class a extends AbstractC3896b {
        @Override
        public void a(Tj.a aVar) {
            aVar.d("KeyFactory.XDH", "org.bouncycastle.jcajce.provider.asymmetric.edec.KeyFactorySpi$XDH");
            aVar.d("KeyFactory.X448", "org.bouncycastle.jcajce.provider.asymmetric.edec.KeyFactorySpi$X448");
            aVar.d("KeyFactory.X25519", "org.bouncycastle.jcajce.provider.asymmetric.edec.KeyFactorySpi$X25519");
            aVar.d("KeyFactory.EDDSA", "org.bouncycastle.jcajce.provider.asymmetric.edec.KeyFactorySpi$EdDSA");
            aVar.d("KeyFactory.ED448", "org.bouncycastle.jcajce.provider.asymmetric.edec.KeyFactorySpi$Ed448");
            aVar.d("KeyFactory.ED25519", "org.bouncycastle.jcajce.provider.asymmetric.edec.KeyFactorySpi$Ed25519");
            aVar.d("Signature.EDDSA", "org.bouncycastle.jcajce.provider.asymmetric.edec.SignatureSpi$EdDSA");
            aVar.d("Signature.ED448", "org.bouncycastle.jcajce.provider.asymmetric.edec.SignatureSpi$Ed448");
            aVar.d("Signature.ED25519", "org.bouncycastle.jcajce.provider.asymmetric.edec.SignatureSpi$Ed25519");
            C14549x c14549x = InterfaceC15115a.f108210e;
            aVar.g("Alg.Alias.Signature", c14549x, "ED448");
            C14549x c14549x2 = InterfaceC15115a.f108209d;
            aVar.g("Alg.Alias.Signature", c14549x2, "ED25519");
            aVar.d("KeyPairGenerator.EDDSA", "org.bouncycastle.jcajce.provider.asymmetric.edec.KeyPairGeneratorSpi$EdDSA");
            aVar.d("KeyPairGenerator.ED448", "org.bouncycastle.jcajce.provider.asymmetric.edec.KeyPairGeneratorSpi$Ed448");
            aVar.d("KeyPairGenerator.ED25519", "org.bouncycastle.jcajce.provider.asymmetric.edec.KeyPairGeneratorSpi$Ed25519");
            aVar.g("KeyPairGenerator", c14549x, "org.bouncycastle.jcajce.provider.asymmetric.edec.KeyPairGeneratorSpi$Ed448");
            aVar.g("KeyPairGenerator", c14549x2, "org.bouncycastle.jcajce.provider.asymmetric.edec.KeyPairGeneratorSpi$Ed25519");
            aVar.d("KeyAgreement.XDH", "org.bouncycastle.jcajce.provider.asymmetric.edec.KeyAgreementSpi$XDH");
            aVar.d("KeyAgreement.X448", "org.bouncycastle.jcajce.provider.asymmetric.edec.KeyAgreementSpi$X448");
            aVar.d("KeyAgreement.X25519", "org.bouncycastle.jcajce.provider.asymmetric.edec.KeyAgreementSpi$X25519");
            C14549x c14549x3 = InterfaceC15115a.f108208c;
            aVar.g("KeyAgreement", c14549x3, "org.bouncycastle.jcajce.provider.asymmetric.edec.KeyAgreementSpi$X448");
            C14549x c14549x4 = InterfaceC15115a.f108207b;
            aVar.g("KeyAgreement", c14549x4, "org.bouncycastle.jcajce.provider.asymmetric.edec.KeyAgreementSpi$X25519");
            aVar.d("KeyAgreement.X25519WITHSHA256CKDF", "org.bouncycastle.jcajce.provider.asymmetric.edec.KeyAgreementSpi$X25519withSHA256CKDF");
            aVar.d("KeyAgreement.X25519WITHSHA384CKDF", "org.bouncycastle.jcajce.provider.asymmetric.edec.KeyAgreementSpi$X25519withSHA384CKDF");
            aVar.d("KeyAgreement.X25519WITHSHA512CKDF", "org.bouncycastle.jcajce.provider.asymmetric.edec.KeyAgreementSpi$X25519withSHA512CKDF");
            aVar.d("KeyAgreement.X448WITHSHA256CKDF", "org.bouncycastle.jcajce.provider.asymmetric.edec.KeyAgreementSpi$X448withSHA256CKDF");
            aVar.d("KeyAgreement.X448WITHSHA384CKDF", "org.bouncycastle.jcajce.provider.asymmetric.edec.KeyAgreementSpi$X448withSHA384CKDF");
            aVar.d("KeyAgreement.X448WITHSHA512CKDF", "org.bouncycastle.jcajce.provider.asymmetric.edec.KeyAgreementSpi$X448withSHA512CKDF");
            aVar.d("KeyAgreement.X25519WITHSHA256KDF", "org.bouncycastle.jcajce.provider.asymmetric.edec.KeyAgreementSpi$X25519withSHA256KDF");
            aVar.d("KeyAgreement.X448WITHSHA512KDF", "org.bouncycastle.jcajce.provider.asymmetric.edec.KeyAgreementSpi$X448withSHA512KDF");
            aVar.d("KeyAgreement.X25519UWITHSHA256KDF", "org.bouncycastle.jcajce.provider.asymmetric.edec.KeyAgreementSpi$X25519UwithSHA256KDF");
            aVar.d("KeyAgreement.X448UWITHSHA512KDF", "org.bouncycastle.jcajce.provider.asymmetric.edec.KeyAgreementSpi$X448UwithSHA512KDF");
            aVar.d("KeyAgreement.X448withSHA512HKDF", "org.bouncycastle.jcajce.provider.asymmetric.edec.KeyAgreementSpi$X448withSHA512HKDF");
            aVar.d("KeyAgreement.X25519withSHA256HKDF", "org.bouncycastle.jcajce.provider.asymmetric.edec.KeyAgreementSpi$X25519withSHA256HKDF");
            aVar.d("KeyPairGenerator.XDH", "org.bouncycastle.jcajce.provider.asymmetric.edec.KeyPairGeneratorSpi$XDH");
            aVar.d("KeyPairGenerator.X448", "org.bouncycastle.jcajce.provider.asymmetric.edec.KeyPairGeneratorSpi$X448");
            aVar.d("KeyPairGenerator.X25519", "org.bouncycastle.jcajce.provider.asymmetric.edec.KeyPairGeneratorSpi$X25519");
            aVar.g("KeyPairGenerator", c14549x3, "org.bouncycastle.jcajce.provider.asymmetric.edec.KeyPairGeneratorSpi$X448");
            aVar.g("KeyPairGenerator", c14549x4, "org.bouncycastle.jcajce.provider.asymmetric.edec.KeyPairGeneratorSpi$X25519");
            aVar.d("Cipher.XIES", "org.bouncycastle.jcajce.provider.asymmetric.edec.IESCipher$XIES");
            aVar.d("Cipher.XIESwithSHA1", "org.bouncycastle.jcajce.provider.asymmetric.edec.IESCipher$XIES");
            aVar.d("Cipher.XIESWITHSHA1", "org.bouncycastle.jcajce.provider.asymmetric.edec.IESCipher$XIES");
            aVar.d("Cipher.XIESwithSHA256", "org.bouncycastle.jcajce.provider.asymmetric.edec.IESCipher$XIESwithSHA256");
            aVar.d("Cipher.XIESWITHSHA256", "org.bouncycastle.jcajce.provider.asymmetric.edec.IESCipher$XIESwithSHA256");
            aVar.d("Cipher.XIESwithSHA384", "org.bouncycastle.jcajce.provider.asymmetric.edec.IESCipher$XIESwithSHA384");
            aVar.d("Cipher.XIESWITHSHA384", "org.bouncycastle.jcajce.provider.asymmetric.edec.IESCipher$XIESwithSHA384");
            aVar.d("Cipher.XIESwithSHA512", "org.bouncycastle.jcajce.provider.asymmetric.edec.IESCipher$XIESwithSHA512");
            aVar.d("Cipher.XIESWITHSHA512", "org.bouncycastle.jcajce.provider.asymmetric.edec.IESCipher$XIESwithSHA512");
            aVar.d("Cipher.XIESwithAES-CBC", "org.bouncycastle.jcajce.provider.asymmetric.edec.IESCipher$XIESwithAESCBC");
            aVar.d("Cipher.XIESWITHAES-CBC", "org.bouncycastle.jcajce.provider.asymmetric.edec.IESCipher$XIESwithAESCBC");
            aVar.d("Cipher.XIESwithSHA1andAES-CBC", "org.bouncycastle.jcajce.provider.asymmetric.edec.IESCipher$XIESwithAESCBC");
            aVar.d("Cipher.XIESWITHSHA1ANDAES-CBC", "org.bouncycastle.jcajce.provider.asymmetric.edec.IESCipher$XIESwithAESCBC");
            aVar.d("Cipher.XIESwithSHA256andAES-CBC", "org.bouncycastle.jcajce.provider.asymmetric.edec.IESCipher$XIESwithSHA256andAESCBC");
            aVar.d("Cipher.XIESWITHSHA256ANDAES-CBC", "org.bouncycastle.jcajce.provider.asymmetric.edec.IESCipher$XIESwithSHA256andAESCBC");
            aVar.d("Cipher.XIESwithSHA384andAES-CBC", "org.bouncycastle.jcajce.provider.asymmetric.edec.IESCipher$XIESwithSHA384andAESCBC");
            aVar.d("Cipher.XIESWITHSHA384ANDAES-CBC", "org.bouncycastle.jcajce.provider.asymmetric.edec.IESCipher$XIESwithSHA384andAESCBC");
            aVar.d("Cipher.XIESwithSHA512andAES-CBC", "org.bouncycastle.jcajce.provider.asymmetric.edec.IESCipher$XIESwithSHA512andAESCBC");
            aVar.d("Cipher.XIESWITHSHA512ANDAES-CBC", "org.bouncycastle.jcajce.provider.asymmetric.edec.IESCipher$XIESwithSHA512andAESCBC");
            l(aVar, c14549x3, "XDH", new h.e());
            l(aVar, c14549x4, "XDH", new h.d());
            l(aVar, c14549x, "EDDSA", new h.b());
            l(aVar, c14549x2, "EDDSA", new h.a());
        }
    }

    static {
        HashMap hashMap = new HashMap();
        f11446b = hashMap;
        hashMap.put("SupportedKeyClasses", "java.security.interfaces.ECPublicKey|java.security.interfaces.ECPrivateKey");
        hashMap.put("SupportedKeyFormats", "PKCS#8|X.509");
    }
}
