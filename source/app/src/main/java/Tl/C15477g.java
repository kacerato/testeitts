package tl;

import bk.AbstractC3896b;
import oh.C14549x;
import qh.InterfaceC15100a;

public class C15477g {

    public static final String f117739a = "org.bouncycastle.pqc.jcajce.provider.hqc.";

    public static class a extends AbstractC3896b {
        @Override
        public void a(Tj.a aVar) {
            aVar.d("KeyFactory.HQC", "org.bouncycastle.pqc.jcajce.provider.hqc.HQCKeyFactorySpi");
            aVar.d("KeyPairGenerator.HQC", "org.bouncycastle.pqc.jcajce.provider.hqc.HQCKeyPairGeneratorSpi");
            aVar.d("KeyGenerator.HQC", "org.bouncycastle.pqc.jcajce.provider.hqc.HQCKeyGeneratorSpi");
            Al.d dVar = new Al.d();
            aVar.d("Cipher.HQC", "org.bouncycastle.pqc.jcajce.provider.hqc.HQCCipherSpi$Base");
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Alg.Alias.Cipher.");
            C14549x c14549x = InterfaceC15100a.f108089o3;
            sb2.append((Object) c14549x);
            aVar.d(sb2.toString(), "HQC");
            b(aVar, "HQC128", "org.bouncycastle.pqc.jcajce.provider.hqc.HQCCipherSpi$HQC128", InterfaceC15100a.f108094p3);
            b(aVar, "HQC192", "org.bouncycastle.pqc.jcajce.provider.hqc.HQCCipherSpi$HQC192", InterfaceC15100a.f108099q3);
            b(aVar, "HQC256", "org.bouncycastle.pqc.jcajce.provider.hqc.HQCCipherSpi$HQC256", InterfaceC15100a.f108104r3);
            l(aVar, c14549x, "HQC", dVar);
        }
    }
}
