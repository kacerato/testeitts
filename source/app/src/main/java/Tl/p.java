package tl;

import bk.AbstractC3896b;
import oh.C14549x;
import qh.InterfaceC15100a;

public class p {

    public static final String f117748a = "org.bouncycastle.pqc.jcajce.provider.saber.";

    public static class a extends AbstractC3896b {
        @Override
        public void a(Tj.a aVar) {
            aVar.d("KeyFactory.SABER", "org.bouncycastle.pqc.jcajce.provider.saber.SABERKeyFactorySpi");
            aVar.d("KeyPairGenerator.SABER", "org.bouncycastle.pqc.jcajce.provider.saber.SABERKeyPairGeneratorSpi");
            aVar.d("KeyGenerator.SABER", "org.bouncycastle.pqc.jcajce.provider.saber.SABERKeyGeneratorSpi");
            Jl.d dVar = new Jl.d();
            aVar.d("Cipher.SABER", "org.bouncycastle.pqc.jcajce.provider.saber.SABERCipherSpi$Base");
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Alg.Alias.Cipher.");
            C14549x c14549x = InterfaceC15100a.f108043f2;
            sb2.append((Object) c14549x);
            aVar.d(sb2.toString(), "SABER");
            l(aVar, c14549x, "SABER", dVar);
            n(aVar, c14549x, "SABER");
        }
    }
}
