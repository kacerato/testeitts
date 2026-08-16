package tl;

import Bl.d;
import bk.AbstractC3896b;
import oh.C14549x;
import qh.InterfaceC15100a;

public class C15478h {

    public static final String f117740a = "org.bouncycastle.pqc.jcajce.provider.kyber.";

    public static class a extends AbstractC3896b {
        @Override
        public void a(Tj.a aVar) {
            aVar.d("KeyFactory.KYBER", "org.bouncycastle.pqc.jcajce.provider.kyber.KyberKeyFactorySpi");
            C14549x c14549x = InterfaceC15100a.f107974P2;
            c(aVar, "KYBER512", "org.bouncycastle.pqc.jcajce.provider.kyber.KyberKeyFactorySpi$Kyber512", c14549x, new d.c());
            C14549x c14549x2 = InterfaceC15100a.f107978Q2;
            c(aVar, "KYBER768", "org.bouncycastle.pqc.jcajce.provider.kyber.KyberKeyFactorySpi$Kyber768", c14549x2, new d.e());
            C14549x c14549x3 = InterfaceC15100a.f107982R2;
            c(aVar, "KYBER1024", "org.bouncycastle.pqc.jcajce.provider.kyber.KyberKeyFactorySpi$Kyber1024", c14549x3, new d.a());
            aVar.d("KeyPairGenerator.KYBER", "org.bouncycastle.pqc.jcajce.provider.kyber.KyberKeyPairGeneratorSpi");
            e(aVar, "KYBER512", "org.bouncycastle.pqc.jcajce.provider.kyber.KyberKeyPairGeneratorSpi$Kyber512", c14549x);
            e(aVar, "KYBER768", "org.bouncycastle.pqc.jcajce.provider.kyber.KyberKeyPairGeneratorSpi$Kyber768", c14549x2);
            e(aVar, "KYBER1024", "org.bouncycastle.pqc.jcajce.provider.kyber.KyberKeyPairGeneratorSpi$Kyber1024", c14549x3);
            aVar.d("KeyGenerator.KYBER", "org.bouncycastle.pqc.jcajce.provider.kyber.KyberKeyGeneratorSpi");
            d(aVar, "KYBER512", "org.bouncycastle.pqc.jcajce.provider.kyber.KyberKeyGeneratorSpi$Kyber512", c14549x);
            d(aVar, "KYBER768", "org.bouncycastle.pqc.jcajce.provider.kyber.KyberKeyGeneratorSpi$Kyber768", c14549x2);
            d(aVar, "KYBER1024", "org.bouncycastle.pqc.jcajce.provider.kyber.KyberKeyGeneratorSpi$Kyber1024", c14549x3);
            Bl.d dVar = new Bl.d();
            aVar.d("Cipher.KYBER", "org.bouncycastle.pqc.jcajce.provider.kyber.KyberCipherSpi$Base");
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Alg.Alias.Cipher.");
            C14549x c14549x4 = InterfaceC15100a.f107970O2;
            sb2.append((Object) c14549x4);
            aVar.d(sb2.toString(), "KYBER");
            b(aVar, "KYBER512", "org.bouncycastle.pqc.jcajce.provider.kyber.KyberCipherSpi$Kyber512", c14549x);
            b(aVar, "KYBER768", "org.bouncycastle.pqc.jcajce.provider.kyber.KyberCipherSpi$Kyber768", c14549x2);
            b(aVar, "KYBER1024", "org.bouncycastle.pqc.jcajce.provider.kyber.KyberCipherSpi$Kyber1024", c14549x3);
            l(aVar, c14549x4, "KYBER", dVar);
        }
    }
}
