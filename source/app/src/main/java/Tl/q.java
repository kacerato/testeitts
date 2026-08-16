package tl;

import bk.AbstractC3896b;
import oh.C14549x;

public class q {

    public static final String f117749a = "org.bouncycastle.pqc.jcajce.provider.sphincs.";

    public static class a extends AbstractC3896b {
        @Override
        public void a(Tj.a aVar) {
            aVar.d("KeyFactory.SPHINCS256", "org.bouncycastle.pqc.jcajce.provider.sphincs.Sphincs256KeyFactorySpi");
            aVar.d("KeyPairGenerator.SPHINCS256", "org.bouncycastle.pqc.jcajce.provider.sphincs.Sphincs256KeyPairGeneratorSpi");
            g(aVar, "SHA512", "SPHINCS256", "org.bouncycastle.pqc.jcajce.provider.sphincs.SignatureSpi$withSha512", Xk.m.f29582t);
            g(aVar, "SHA3-512", "SPHINCS256", "org.bouncycastle.pqc.jcajce.provider.sphincs.SignatureSpi$withSha3_512", Xk.m.f29583u);
            Kl.d dVar = new Kl.d();
            C14549x c14549x = Xk.m.f29580r;
            l(aVar, c14549x, "SPHINCS256", dVar);
            n(aVar, c14549x, "SPHINCS256");
        }
    }
}
